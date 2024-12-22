import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:river_delta/src/engine/observer/dto_models.dart';
import 'package:river_delta/src/engine/providers/extension_receiver.dart';
import 'package:river_delta/src/engine/providers/providers_provider.dart';
import 'package:vm_service/vm_service.dart';

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
  // TODO: Figure out how to make these tests compile without Dart2JS errors.
  group(
    "Providers provider unit tests",
    skip: true,
    () {
      setupVmStubs(MockVmService vm) {
        when(vm.getObject("isolate/0", "object/0"))
            .thenAnswer((_) async => _mockObj);
        when(vm.getObject("isolate/0", "class/0"))
            .thenAnswer((_) async => _mockClass);
        when(vm.evaluate("isolate/0", "object/0", "this.${_mockFieldRef.name}"))
            .thenAnswer(
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
        when(mockVmService.onExtensionEvent).thenReturn(
          eventStreamController.stream,
        );
        final container = createContainer(overrides: [
          vmServiceProvider.overrideWith((_) async => mockVmService),
        ]);
        final sut = container.read(providersProviderProvider.notifier);

        // Run test
        eventStreamController.add(_addEvent);

        // Verify
        verify(mockVmService.evaluate(
                "isolate/0", "object/0", "this.parameter"))
            .called(1);
      });
    },
  );
}
