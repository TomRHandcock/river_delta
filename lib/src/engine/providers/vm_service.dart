import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:vm_service/vm_service.dart' hide Error;
import 'package:river_delta/src/engine/providers/io_vm_accessor.dart' if(dart.library.js) 'package:river_delta/src/engine/providers/web_vm_accessor.dart';

part 'vm_service.g.dart';

@riverpod
Future<VmService> vmService(Ref ref) async {
  return VmAccessor.instance.connectToVm();
}

abstract class VmAccessor {

  static late VmAccessor instance;

  Future<VmService> connectToVm();

  static void register() {
    instance = PlatformVmAccessor();
  }
}