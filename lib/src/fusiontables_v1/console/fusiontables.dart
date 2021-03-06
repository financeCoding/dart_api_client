part of fusiontables_v1_api_console;

/** Client to access the fusiontables v1 API */
/** API for working with Fusion Tables data. */
class Fusiontables extends ConsoleClient {

  ColumnResource _column;
  ColumnResource get column => _column;
  QueryResource _query;
  QueryResource get query => _query;
  StyleResource _style;
  StyleResource get style => _style;
  TableResource _table;
  TableResource get table => _table;
  TemplateResource _template;
  TemplateResource get template => _template;

  /** OAuth Scope2: Manage your Fusion Tables */
  static const String FUSIONTABLES_SCOPE = "https://www.googleapis.com/auth/fusiontables";

  /** OAuth Scope2: View your Fusion Tables */
  static const String FUSIONTABLES_READONLY_SCOPE = "https://www.googleapis.com/auth/fusiontables.readonly";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  String get alt => params["alt"];
  set alt(String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  String get fields => params["fields"];
  set fields(String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  String get key => params["key"];
  set key(String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  String get oauth_token => params["oauth_token"];
  set oauth_token(String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  String get quotaUser => params["quotaUser"];
  set quotaUser(String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  String get userIp => params["userIp"];
  set userIp(String value) => params["userIp"] = value;

  Fusiontables([Object auth]) : super(auth) {
    basePath = "/fusiontables/v1/";
    rootUrl = "https://www.googleapis.com:443/";
    _column = new ColumnResource(this);
    _query = new QueryResource(this);
    _style = new StyleResource(this);
    _table = new TableResource(this);
    _template = new TemplateResource(this);
  }
}
