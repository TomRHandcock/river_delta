import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:river_delta/src/engine/observer/dto_models.dart';
import 'package:river_delta/src/engine/providers/models.dart';
import 'package:river_delta/src/engine/providers/providers_provider.dart';
import 'package:river_delta/src/engine/providers/vm_service.dart';
import 'package:vm_service/vm_service.dart';

import '../../../test_utils/async_utils.dart';
import '../../../test_utils/create_container.dart';
import '../../../test_utils/stubbing_utils.dart';
import 'providers_provider_test.mocks.dart';

part 'fixtures.dart';

@GenerateNiceMocks([
  MockSpec<VmService>(),
  MockSpec<ExtensionData>(),
  MockSpec<Obj>(),
  MockSpec<ClassRef>(),
  MockSpec<Class>(),
  MockSpec<FieldRef>(),
  MockSpec<InstanceRef>()
])
void main() async {
  group(
    "Providers provider unit tests",
    () {
      setupVmStubs(MockVmService vm) {
        when(vm.getObject("isolate/0", "object/0"))
            .thenAnswer((_) async => _mockObj);
        when(vm.getObject("isolate/0", "class/0"))
            .thenAnswer((_) async => _mockClass);
        final mockFieldName = _mockFieldRef.name;
        when(vm.evaluate(
          "isolate/0",
          "object/0",
          "this.$mockFieldName",
          scope: null,
          disableBreakpoints: null,
        )).thenAnswer(
          (_) async => _mockValue,
        );
      }

      test(
          "on add event - non-family provider - emits state with added provider",
          () async {
        // Setup
        final eventStreamController = StreamController<Event>.broadcast();
        final mockVmService = MockVmService();
        setupVmStubs(mockVmService);
        when(mockVmService.onExtensionEvent).thenAnswer(
          (_) => eventStreamController.stream,
        );
        final container = createContainer(overrides: [
          vmServiceProvider.overrideWith((_) async => mockVmService),
        ]);
        // Get reference to notifier and keep it alive.
        final sut = container.read(providersProviderProvider.notifier);
        final keepAliveLink = sut.ref.keepAlive();
        // Read the notifier and allow time for `build` to execute.
        container.read(providersProviderProvider.future);
        await tick();

        // Run test
        // Add an event and allow time for processing it.
        eventStreamController.add(_addEvent);
        await untilCalled(mockVmService.evaluate(any, any, any,
                scope: anyNamed("scope"),
                disableBreakpoints: anyNamed("disableBreakpoints")))
            .timeout(
          Duration(seconds: 1),
        );
        await tick();

        // Verify
        expect(
          sut.state,
          isA<AsyncData<List>>()
              .having(
                (it) => it.value.length,
                "length",
                1,
              )
              .having(
                (it) => it.value.first,
                "first value",
                isA<ProviderModel>()
                    .having(
                      (it) => it.name,
                      "name",
                      "Provider",
                    )
                    .having(
                      (it) => it.arguments.join(","),
                      "arguments",
                      "42",
                    )
                    .having(
                      (it) => it.dependencies.join(""),
                      "dependencies",
                      "",
                    ),
              ),
        );
        verify(mockVmService.evaluate(
                "isolate/0", "object/0", "this.parameter"))
            .called(1);

        // Tear down
        keepAliveLink.close();
      });
    },
  );
}
