import 'package:devtools_extensions/devtools_extensions.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:vm_service/vm_service.dart' hide Error;

part 'extension_receiver.g.dart';

@riverpod
Future<VmService> vmService(VmServiceRef ref) async {
  return serviceManager.onServiceAvailable;
}
