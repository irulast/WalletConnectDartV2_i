import 'package:walletconnect_dart_v2_i/apis/core/store/i_generic_store.dart';

abstract class IMessageTracker extends IGenericStore<Map<String, String>> {
  Future<void> recordMessageEvent(String topic, String message);
  bool messageIsRecorded(String topic, String message);
}
