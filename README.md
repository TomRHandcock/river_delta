A visual inspector for Flutter apps using Riverpod.

# Install it

I am not planning on publishing this until development is complete as a 
minimum. As such you will need to add the following to your `pubspec.yaml`.

```yaml
dependencies:
    river_delta:
        git:
            url: https://github.com/TomRHandcock/river_delta
            ref: # Version tag
```

# Use it

Simply add the `DeltaObserver` instance to your `ProviderScope` at the top of 
your app as follows.

```dart
void main() {
  runApp(
    ProviderScope(
      observers: [
        DeltaObserver.instance
    ],
      child: const App(),
    ),
  );
}
```

Fire up your app, head to the Dart DevTools in a browser and find the 'river_delta' tab!