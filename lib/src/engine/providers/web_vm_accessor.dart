import 'package:devtools_extensions/devtools_extensions.dart';
import 'package:river_delta/src/engine/providers/vm_service.dart';
import 'package:vm_service/vm_service.dart';

class PlatformVmAccessor implements VmAccessor {

  static void register() {
    VmAccessor.instance = PlatformVmAccessor();
  }

  @override
  Future<VmService> connectToVm() {
    return serviceManager.onServiceAvailable;
  }
}