import 'package:logger/logger.dart';
import 'package:walletconnect_dart_v2_i/apis/core/crypto/i_crypto.dart';
import 'package:walletconnect_dart_v2_i/apis/core/echo/i_echo.dart';
import 'package:walletconnect_dart_v2_i/apis/core/heartbit/i_heartbeat.dart';
import 'package:walletconnect_dart_v2_i/apis/core/pairing/i_expirer.dart';
import 'package:walletconnect_dart_v2_i/apis/core/pairing/i_pairing.dart';
import 'package:walletconnect_dart_v2_i/apis/core/relay_client/i_relay_client.dart';
import 'package:walletconnect_dart_v2_i/apis/core/store/i_store.dart';

abstract class ICore {
  final String protocol = 'wc';
  final String version = '2';

  abstract String relayUrl;
  abstract final String projectId;
  abstract final String pushUrl;

  abstract IHeartBeat heartbeat;
  abstract ICrypto crypto;
  abstract IRelayClient relayClient;
  abstract IStore<Map<String, dynamic>> storage;

  abstract IExpirer expirer;
  abstract IPairing pairing;
  abstract IEcho echo;
  abstract final Logger logger;

  Future<void> start();
}
