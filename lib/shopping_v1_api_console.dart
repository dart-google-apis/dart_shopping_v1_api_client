library shopping_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_shopping_v1_api/src/cloud_api_console.dart';

import "package:google_shopping_v1_api/shopping_v1_api_client.dart";

/** Lets you search over product data. */
class Shopping extends Client with ConsoleClient {

  /** OAuth Scope2: View your product data */
  static const String SHOPPINGAPI_SCOPE = "https://www.googleapis.com/auth/shoppingapi";

  final oauth2.OAuth2Console auth;

  Shopping([oauth2.OAuth2Console this.auth]);
}
