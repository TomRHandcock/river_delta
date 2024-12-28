part of 'graph_viewmodel_test.dart';

final _providerModelFixtureA = ProviderModel(
  name: "ProviderA",
  arguments: {"42"},
  dependencies: {
    const ProviderDependencyModel(name: "ProviderC", arguments: {})
  },
);

final _providerModelFixtureB = ProviderModel(
  name: "ProviderB",
  arguments: {"48"},
  dependencies: {
    const ProviderDependencyModel(name: "ProviderC", arguments: {})
  },
);

final _providerModelFixtureC = ProviderModel(
  name: "ProviderC",
  dependencies: {
    const ProviderDependencyModel(name: "ProviderD"),
  },
);

const _providerModelFixtureD = ProviderModel(name: "ProviderD");

const _deltaProviderFixtureA = DeltaProvider(
  name: "ProviderA",
  arguments: {"42"},
  dependencies: [
    DeltaProviderDependency(name: "ProviderC"),
  ],
);

const _deltaProviderFixtureB = DeltaProvider(
  name: "ProviderB",
  arguments: {"48"},
  dependencies: [
    DeltaProviderDependency(name: "ProviderC"),
  ],
);

const _deltaProviderFixtureC = DeltaProvider(
  name: "ProviderC",
  dependencies: [
    DeltaProviderDependency(
      name: "ProviderD",
    ),
  ],
);

const _deltaProviderFixtureD = DeltaProvider(
  name: "ProviderD",
);