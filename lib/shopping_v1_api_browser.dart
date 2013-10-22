library shopping_v1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_shopping_v1_api/src/browser_client.dart';
import "package:google_shopping_v1_api/shopping_v1_api_client.dart";

/** Lets you search over product data. */
class Shopping extends Client with BrowserClient {

  /** OAuth Scope2: View your product data */
  static const String SHOPPINGAPI_SCOPE = "https://www.googleapis.com/auth/shoppingapi";

  final oauth.OAuth2 auth;

  Shopping([oauth.OAuth2 this.auth]);
}
