// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_id_token_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(googleIdTokenService)
const googleIdTokenServiceProvider = GoogleIdTokenServiceProvider._();

final class GoogleIdTokenServiceProvider
    extends
        $FunctionalProvider<
          GoogleIdTokenService,
          GoogleIdTokenService,
          GoogleIdTokenService
        >
    with $Provider<GoogleIdTokenService> {
  const GoogleIdTokenServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'googleIdTokenServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$googleIdTokenServiceHash();

  @$internal
  @override
  $ProviderElement<GoogleIdTokenService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GoogleIdTokenService create(Ref ref) {
    return googleIdTokenService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GoogleIdTokenService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GoogleIdTokenService>(value),
    );
  }
}

String _$googleIdTokenServiceHash() =>
    r'2671abc6870f116215ddfc8f46697e812e13c7ad';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
