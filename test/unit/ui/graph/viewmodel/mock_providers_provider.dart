import 'package:mockito/mockito.dart';
import 'package:river_delta/src/engine/providers/models.dart';
import 'package:river_delta/src/engine/providers/providers_provider.dart';

class MockProvidersProvider extends ProvidersProvider with Mock {
  final Future<List<ProviderModel>> Function() seedBuilder;

  MockProvidersProvider(this.seedBuilder);

  @override
  Future<List<ProviderModel>> build() {
    return seedBuilder();
  }
}