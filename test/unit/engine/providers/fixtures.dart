part of 'providers_provider_test.dart';

/* Dummy provider. */

// Mock `InstanceRef` (field value), obtained through evaluation in the VM.
final _mockValue = MockInstanceRef()
  ..stubReturn((it) => it.valueAsString, "42");

// Mock `FieldRef`, obtained from `Class` instance.
final _mockFieldRef = MockFieldRef()..stubReturn((it) => it.name, "parameter");

// Mock `Class`, obtained by querying class ID with VM.
final _mockFamilyClass = MockClass()
  ..stubReturn((it) => it.fields, [_mockFieldRef]);
final _mockNonFamilyClass = MockClass()
  ..stubReturn((it) => it.fields, <FieldRef>[]);

// Mock `ClassRef`, obtained from `Obj` instance.
final _mockClassRef = MockClassRef()..stubReturn((it) => it.id, "class/0");

// Mock `Obj`, obtained by querying object ID with VM.
final _mockObj = MockObj()..stubReturn((it) => it.classRef, _mockClassRef);

final _addEvent = Event(
  extensionKind: "ext.river_delta.add",
  extensionData: MockExtensionData()
    ..stubReturn(
      (it) => it.data,
       ProviderDto(
        name: "Provider",
        objectId: "object/0",
        isolateId: "isolate/0",
        dependencies: {
          ProviderSlimDependencyDto(name: "Dependency", objectId: "object/1")
        }
      ).toJson(),
    ),
);

/* Dependency. */
final _mockDependencyObject = MockObj()
  ..stubReturn((it) => it.classRef, _mockDependencyClassRef);
final _mockDependencyClassRef = MockClassRef()
  ..stubReturn((it) => it.id, "class/1");
final _mockDependencyClass = MockClass()
  ..stubReturn((it) => it.fields, <FieldRef>[]);
