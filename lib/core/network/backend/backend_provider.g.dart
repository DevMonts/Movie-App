// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backend_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(backendProvider)
const backendProviderProvider = BackendProviderProvider._();

final class BackendProviderProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  const BackendProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'backendProviderProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$backendProviderHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return backendProvider(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$backendProviderHash() => r'52e19640e09bd82a53ab90f7276905a39627d152';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
