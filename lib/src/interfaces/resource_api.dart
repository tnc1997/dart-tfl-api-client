import 'dart:async';

abstract class ResourceApi<T> {
  Future<List<T>> get();
}
