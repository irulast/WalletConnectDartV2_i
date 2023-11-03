import 'package:event/event.dart';
import 'package:walletconnect_dart_v2_i/apis/core/i_core.dart';
import 'package:walletconnect_dart_v2_i/apis/core/pairing/i_pairing_store.dart';
import 'package:walletconnect_dart_v2_i/apis/core/pairing/utils/pairing_models.dart';
import 'package:walletconnect_dart_v2_i/apis/core/store/i_generic_store.dart';
import 'package:walletconnect_dart_v2_i/apis/models/basic_models.dart';
import 'package:walletconnect_dart_v2_i/apis/sign_api/i_sessions.dart';
import 'package:walletconnect_dart_v2_i/apis/sign_api/models/proposal_models.dart';
import 'package:walletconnect_dart_v2_i/apis/sign_api/models/session_models.dart';
import 'package:walletconnect_dart_v2_i/apis/sign_api/models/sign_client_events.dart';

abstract class ISignEngineCommon {
  abstract final Event<SessionConnect> onSessionConnect;
  abstract final Event<SessionDelete> onSessionDelete;
  abstract final Event<SessionExpire> onSessionExpire;
  abstract final Event<SessionPing> onSessionPing;
  abstract final Event<SessionProposalEvent> onProposalExpire;

  abstract final ICore core;
  abstract final PairingMetadata metadata;
  abstract final IGenericStore<ProposalData> proposals;
  abstract final ISessions sessions;
  abstract final IGenericStore<SessionRequest> pendingRequests;

  Future<void> init();
  Future<void> disconnectSession({
    required String topic,
    required WalletConnectError reason,
  });
  Map<String, SessionData> getActiveSessions();
  Map<String, SessionData> getSessionsForPairing({
    required String pairingTopic,
  });
  Map<String, ProposalData> getPendingSessionProposals();

  abstract final IPairingStore pairings;
}
