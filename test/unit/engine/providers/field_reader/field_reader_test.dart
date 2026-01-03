import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:river_delta/src/engine/common/logical_error.dart';
import 'package:river_delta/src/engine/providers/field_reader.dart';
import 'package:river_delta/src/engine/providers/models.dart';
import 'package:vm_service/vm_service.dart';

import 'field_reader_test.mocks.dart';

@GenerateNiceMocks([MockSpec<VmService>()])
void main() async {
  group("Field reader unit tests", () {
    final mockVmService = MockVmService();
    late FieldReader sut;

    setUp(() {
      reset(mockVmService);
      sut = FieldReader(mockVmService);
    });

    group("isAsyncValue unit tests", () {
      test("isAsyncValue - when AsyncLoading - returns true", () {
        // Setup
        final dummyLibraryRef = LibraryRef(
          id: "library/0",
          uri: "package:riverpod/riverpod.dart",
        );
        final dummyClassRef = Class(
          id: "class/0",
          name: "AsyncLoading",
          library: dummyLibraryRef,
        );
        final dummyInstanceRef = InstanceRef(
          id: "instance/0",
          classRef: dummyClassRef,
        );

        // Run test & verify
        expect(sut.isAsyncValue(dummyInstanceRef), true);
      });

      test("isAsyncValue - when AsyncData - returns true", () {
        // Setup
        final dummyLibraryRef = LibraryRef(
          id: "library/0",
          uri: "package:riverpod/riverpod.dart",
        );
        final dummyClassRef = Class(
          id: "class/0",
          name: "AsyncData",
          library: dummyLibraryRef,
        );
        final dummyInstanceRef = InstanceRef(
          id: "instance/0",
          classRef: dummyClassRef,
        );

        // Run test & verify
        expect(sut.isAsyncValue(dummyInstanceRef), true);
      });

      test("isAsyncValue - when AsyncError - returns true", () {
        // Setup
        final dummyLibraryRef = LibraryRef(
          id: "library/0",
          uri: "package:riverpod/riverpod.dart",
        );
        final dummyClassRef = Class(
          id: "class/0",
          name: "AsyncError",
          library: dummyLibraryRef,
        );
        final dummyInstanceRef = InstanceRef(
          id: "instance/0",
          classRef: dummyClassRef,
        );

        // Run test & verify
        expect(sut.isAsyncValue(dummyInstanceRef), true);
      });

      test("isAsyncValue - when other - returns false", () {
        // Setup
        final dummyLibraryRef = LibraryRef(
          id: "library/0",
          uri: "package:riverpod/riverpod.dart",
        );
        final dummyClassRef = Class(
          id: "class/0",
          name: "Notifier",
          library: dummyLibraryRef,
        );
        final dummyInstanceRef = InstanceRef(
          id: "instance/0",
          classRef: dummyClassRef,
        );

        // Run test & verify
        expect(sut.isAsyncValue(dummyInstanceRef), false);
      });

      test(
        "isAsyncValue - when AsyncData, not riverpod package - returns false",
        () {
          // Setup
          final dummyLibraryRef = LibraryRef(
            id: "library/0",
            uri: "package:my_package/my_package.dart",
          );
          final dummyClassRef = Class(
            id: "class/0",
            name: "AsyncData",
            library: dummyLibraryRef,
          );
          final dummyInstanceRef = InstanceRef(
            id: "instance/0",
            classRef: dummyClassRef,
          );

          // Run test & verify
          expect(sut.isAsyncValue(dummyInstanceRef), false);
        },
      );
    });

    group("extractAsyncState unit tests", () {
      test("extractAsyncState - happy path - answers expected", () async {
        // Setup
        final dummyIsolateId = "isolate/0";
        final dummyInputClassRef = ClassRef(id: "class/0", name: "AsyncData");
        final dummyInputInstanceRef = InstanceRef(
          id: "instance/0",
          classRef: dummyInputClassRef,
        );

        final dummyClass = Class(id: "class/0", name: "String");
        final dummyClassRef = ClassRef(id: "class/0");
        final dummyInstanceRef = InstanceRef(
          id: "instance/0",
          classRef: dummyClassRef,
        );
        when(
          mockVmService.evaluate(any, any, any),
        ).thenAnswer((_) async => dummyInstanceRef);
        when(
          mockVmService.getObject(any, any),
        ).thenAnswer((_) async => dummyClass);

        // Run test
        final actual = await sut.extractAsyncState(
          dummyIsolateId,
          dummyInputInstanceRef,
        );

        // Verify
        verify(
          mockVmService.evaluate(
            dummyIsolateId,
            dummyInputInstanceRef.id,
            "this.value",
          ),
        ).called(1);
        verify(
          mockVmService.getObject(dummyIsolateId, dummyClassRef.id),
        ).called(1);
        expect(
          actual,
          isA<ProviderState>()
              .having((it) => it.name, "has name", "String")
              .having(
                (it) => it.asyncState,
                "has async type",
                ProviderAsyncState.data,
              ),
        );
      });

      test("extractAsyncState - no id on input - throws", () async {
        // Setup
        final dummyIsolateId = "isolate/0";
        final dummyInputInstanceRef = InstanceRef(id: "instance/0")..id = null;

        // Run test
        await expectLater(
          sut.extractAsyncState(dummyIsolateId, dummyInputInstanceRef),
          throwsA(LogicalError(code: LogicalErrorCode.failedToReadAsyncState)),
        );
      });

      test(
        "extractAsyncState - upon no value from input instance - throws",
        () async {
          // Setup
          final dummyIsolateId = "isolate/0";
          final dummyInputClassRef = ClassRef(id: "class/0", name: "AsyncData");
          final dummyInputInstanceRef = InstanceRef(
            id: "instance/0",
            classRef: dummyInputClassRef,
          );

          // Run test
          await expectLater(
            sut.extractAsyncState(dummyIsolateId, dummyInputInstanceRef),
            throwsA(
              LogicalError(code: LogicalErrorCode.failedToReadAsyncState),
            ),
          );

          // Verify
          verify(
            mockVmService.evaluate(
              dummyIsolateId,
              dummyInputInstanceRef.id,
              "this.value",
            ),
          ).called(1);
        },
      );

      test(
        "extractAsyncState - no class on value instance ref - answers null",
        () async {
          // Setup
          final dummyIsolateId = "isolate/0";
          final dummyInputClassRef = ClassRef(id: "class/0", name: "AsyncData");
          final dummyInputInstanceRef = InstanceRef(
            id: "instance/0",
            classRef: dummyInputClassRef,
          );

          final dummyInstanceRef = InstanceRef(id: "instance/0");
          when(
            mockVmService.evaluate(any, any, any),
          ).thenAnswer((_) async => dummyInstanceRef);

          // Run test
          await expectLater(
            sut.extractAsyncState(dummyIsolateId, dummyInputInstanceRef),
            throwsA(
              LogicalError(code: LogicalErrorCode.failedToReadAsyncState),
            ),
          );

          // Verify
          verify(
            mockVmService.evaluate(
              dummyIsolateId,
              dummyInputInstanceRef.id,
              "this.value",
            ),
          ).called(1);
        },
      );

      test(
        "extractAsyncState - upon no value class - answers expected",
        () async {
          // Setup
          final dummyIsolateId = "isolate/0";
          final dummyInputClassRef = ClassRef(id: "class/0", name: "AsyncData");
          final dummyInputInstanceRef = InstanceRef(
            id: "instance/0",
            classRef: dummyInputClassRef,
          );

          final dummyObj = Obj();
          final dummyClassRef = ClassRef(id: "class/0");
          final dummyInstanceRef = InstanceRef(
            id: "instance/0",
            classRef: dummyClassRef,
          );
          when(
            mockVmService.evaluate(any, any, any),
          ).thenAnswer((_) async => dummyInstanceRef);
          when(
            mockVmService.getObject(any, any),
          ).thenAnswer((_) async => dummyObj);

          // Run test
          await expectLater(
            sut.extractAsyncState(dummyIsolateId, dummyInputInstanceRef),
            throwsA(
              LogicalError(code: LogicalErrorCode.failedToReadAsyncState),
            ),
          );

          // Verify
          verify(
            mockVmService.evaluate(
              dummyIsolateId,
              dummyInputInstanceRef.id,
              "this.value",
            ),
          ).called(1);
          verify(
            mockVmService.getObject(dummyIsolateId, dummyClassRef.id),
          ).called(1);
        },
      );
    });

    group("extractSyncState unit tests", () {
      test("extractSyncState - happy path - answers provider state", () async {
        // Setup
        final dummyClassRef = ClassRef(id: "class/0", name: "int");
        final dummyInstanceRef = InstanceRef(
          id: "instance/0",
          classRef: dummyClassRef,
        );

        // Run test
        final actual = await sut.extractSyncState(
          "isolate/0",
          dummyInstanceRef,
        );

        // Verify
        expect(
          actual,
          isA<ProviderState>()
              .having((it) => it.name, "has name", "int")
              .having((it) => it.asyncState, "has async state", null),
        );
      });

      test(
        "extractSyncState - no class ref - answers provider state",
        () async {
          // Setup
          final dummyInstanceRef = InstanceRef(id: "instance/0");

          // Run test & verify
          await expectLater(
            sut.extractSyncState("isolate/0", dummyInstanceRef),
            throwsA(LogicalError(code: LogicalErrorCode.failedToReadState)),
          );
        },
      );
    });
  });
}
