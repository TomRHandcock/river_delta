import 'package:mockito/mockito.dart';

extension StubbingUtil<T extends Mock> on T {
  void stubReturn(Function(T) invocation, dynamic expected) {
    when(invocation(this)).thenReturn(expected);
  }
}