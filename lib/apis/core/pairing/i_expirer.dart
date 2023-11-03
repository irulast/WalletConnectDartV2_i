import 'package:event/event.dart';
import 'package:walletconnect_dart_v2_i/apis/core/pairing/utils/pairing_models.dart';
import 'package:walletconnect_dart_v2_i/apis/core/store/i_generic_store.dart';

abstract class IExpirer extends IGenericStore<int> {
  abstract final Event<ExpirationEvent> onExpire;

  Future<bool> checkExpiry(String key, int expiry);
  Future<bool> checkAndExpire(String key);
  Future<void> expire(String key);
}
