part of 'graph_viewmodel_test.dart';

final _dateTimeFixture = DateTime.now();

final _providerModelFixtureA = ProviderModel(
    name: "ProviderA",
    arguments: {"42"},
    dependencies: {
      const ProviderDependencyModel(name: "ProviderC", arguments: {})
    },
    state: ProviderState(
      name: "StateA",
      fields: {},
      timestamp: _dateTimeFixture,
    ));

final _providerModelFixtureB = ProviderModel(
    name: "ProviderB",
    arguments: {"48"},
    dependencies: {
      const ProviderDependencyModel(name: "ProviderC", arguments: {})
    },
    state: ProviderState(
      name: "StateB",
      fields: {},
      timestamp: _dateTimeFixture,
    ));

final _providerModelFixtureC = ProviderModel(
    name: "ProviderC",
    dependencies: {
      const ProviderDependencyModel(name: "ProviderD"),
    },
    state: ProviderState(
      name: "StateC",
      fields: {},
      timestamp: _dateTimeFixture,
    ));

final _providerModelFixtureD = ProviderModel(
    name: "ProviderD",
    state: ProviderState(
      name: "StateD",
      fields: {},
      timestamp: _dateTimeFixture,
    ));

final _deltaProviderFixtureA = DeltaProvider(name: "ProviderA", arguments: {
  "42"
}, dependencies: [
  DeltaProviderDependency(name: "ProviderC"),
], states: [
  ProviderState(
    name: "StateA",
    fields: {},
    timestamp: _dateTimeFixture,
  ),
]);

final _deltaProviderFixtureB = DeltaProvider(name: "ProviderB", arguments: {
  "48"
}, dependencies: [
  DeltaProviderDependency(name: "ProviderC"),
], states: [
  ProviderState(
    name: "StateB",
    fields: {},
    timestamp: _dateTimeFixture,
  )
]);

final _deltaProviderFixtureC = DeltaProvider(name: "ProviderC", dependencies: [
  DeltaProviderDependency(
    name: "ProviderD",
  ),
], states: [
  ProviderState(
    name: "StateC",
    fields: {},
    timestamp: _dateTimeFixture,
  )
]);

final _deltaProviderFixtureD = DeltaProvider(name: "ProviderD", states: [
  ProviderState(
    name: "StateD",
    fields: {},
    timestamp: _dateTimeFixture,
  )
]);
