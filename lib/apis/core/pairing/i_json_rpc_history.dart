import 'package:walletconnect_dart_v2_i/apis/core/pairing/utils/pairing_models.dart';
import 'package:walletconnect_dart_v2_i/apis/core/store/i_generic_store.dart';

abstract class IJsonRpcHistory extends IGenericStore<JsonRpcRecord> {
  Future<void> resolve(Map<String, dynamic> response);
}
