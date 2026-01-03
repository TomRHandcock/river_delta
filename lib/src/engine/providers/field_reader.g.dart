// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_reader.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fieldReader)
const fieldReaderProvider = FieldReaderProvider._();

final class FieldReaderProvider extends $FunctionalProvider<
        AsyncValue<FieldReader>, FieldReader, FutureOr<FieldReader>>
    with $FutureModifier<FieldReader>, $FutureProvider<FieldReader> {
  const FieldReaderProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'fieldReaderProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$fieldReaderHash();

  @$internal
  @override
  $FutureProviderElement<FieldReader> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<FieldReader> create(Ref ref) {
    return fieldReader(ref);
  }
}

String _$fieldReaderHash() => r'86acb2941a5ffed017285d3e6775b8b3374ae2c6';
