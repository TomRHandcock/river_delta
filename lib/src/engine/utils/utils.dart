extension CollectionUtils<T extends Comparable> on Iterable<T> {
  T get min => reduce((a, b) => switch(a.compareTo(b)) {
    1 => b,
    _ => a,
  });

  T get max => reduce((a, b) => switch(a.compareTo(b)) {
    -1 => b,
    _ => a,
  });
}

extension ObjectUtils<T> on T {
  S? asOrNull<S>() {
    if(this is S) {
      return this as S;
    } else {
      return null;
    }
  }

  S let<S>(S Function(T it) transform) => transform(this);
}