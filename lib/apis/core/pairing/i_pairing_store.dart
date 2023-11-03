import 'package:walletconnect_dart_v2_i/apis/core/pairing/utils/pairing_models.dart';
import 'package:walletconnect_dart_v2_i/apis/core/store/i_generic_store.dart';

abstract class IPairingStore extends IGenericStore<PairingInfo> {
  Future<void> update(
    String topic, {
    int? expiry,
    bool? active,
    PairingMetadata? metadata,
  });
}
