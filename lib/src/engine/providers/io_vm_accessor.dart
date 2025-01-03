import 'dart:io';

import 'package:river_delta/src/engine/providers/vm_service.dart';
import 'package:vm_service/vm_service.dart';
import 'package:vm_service/vm_service_io.dart';

class PlatformVmAccessor implements VmAccessor {

  static void register() {
    VmAccessor.instance = PlatformVmAccessor();
  }

  @override
  Future<VmService> connectToVm() {
    final serviceUri = Platform.environment["VM_SERVICE_URL"];
    if (serviceUri == null) {
      throw Exception("VM_SERVICE_URL is not set, make sure unit tests "
          "are being executed in debug mode");
    }
    return vmServiceConnectUri(serviceUri);
  }
}
