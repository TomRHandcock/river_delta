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