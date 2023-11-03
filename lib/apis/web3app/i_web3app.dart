import 'package:walletconnect_dart_v2_i/apis/auth_api/i_auth_engine_app.dart';
import 'package:walletconnect_dart_v2_i/apis/sign_api/i_sign_engine_app.dart';
import 'package:walletconnect_dart_v2_i/walletconnect_dart_v2_i.dart';

abstract class IWeb3App implements ISignEngineApp, IAuthEngineApp {
  final String protocol = 'wc';
  final int version = 2;

  abstract final ISignEngine signEngine;
  abstract final IAuthEngine authEngine;
}
