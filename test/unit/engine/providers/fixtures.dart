part of 'providers_provider_test.dart';

// Mock `InstanceRef` (field value), obtained through evaluation in the VM.
final _mockValue = MockInstanceRef()
  ..stubReturn((it) => it.valueAsString, "42");

// Mock `FieldRef`, obtained from `Class` instance.
final _mockFieldRef = MockFieldRef()..stubReturn((it) => it.name, "parameter");

// Mock `Class`, obtained by querying class ID with VM.
final _mockClass = MockClass()..stubReturn((it) => it.fields, [_mockFieldRef]);

// Mock `ClassRef`, obtained from `Obj` instance.
final _mockClassRef = MockClassRef()..stubReturn((it) => it.id, "class/0");

// Mock `Obj`, obtained by querying object ID with VM.
final _mockObj = MockObj()..stubReturn((it) => it.classRef, _mockClassRef);

final _addEvent = Event(
  extensionKind: "ext.river_delta.add",
  extensionData: MockExtensionData()
    ..stubReturn(
      (it) => it.data,
      const ProviderDto(
        name: "Provider",
        objectId: "object/0",
        isolateId: "isolate/0",
      ),
    ),
);
