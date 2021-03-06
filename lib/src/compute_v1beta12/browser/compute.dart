part of compute_v1beta12_api_browser;

/** Client to access the compute v1beta12 API */
/** API for the Google Compute Engine service. */
class Compute extends BrowserClient {

  DisksResource _disks;
  DisksResource get disks => _disks;
  FirewallsResource _firewalls;
  FirewallsResource get firewalls => _firewalls;
  ImagesResource _images;
  ImagesResource get images => _images;
  InstancesResource _instances;
  InstancesResource get instances => _instances;
  KernelsResource _kernels;
  KernelsResource get kernels => _kernels;
  MachineTypesResource _machineTypes;
  MachineTypesResource get machineTypes => _machineTypes;
  NetworksResource _networks;
  NetworksResource get networks => _networks;
  OperationsResource _operations;
  OperationsResource get operations => _operations;
  ProjectsResource _projects;
  ProjectsResource get projects => _projects;
  SnapshotsResource _snapshots;
  SnapshotsResource get snapshots => _snapshots;
  ZonesResource _zones;
  ZonesResource get zones => _zones;

  /** OAuth Scope2: View and manage your Google Compute Engine resources */
  static const String COMPUTE_SCOPE = "https://www.googleapis.com/auth/compute";

  /** OAuth Scope2: View your Google Compute Engine resources */
  static const String COMPUTE_READONLY_SCOPE = "https://www.googleapis.com/auth/compute.readonly";

  /** OAuth Scope2: View your data in Google Cloud Storage */
  static const String DEVSTORAGE_READ_ONLY_SCOPE = "https://www.googleapis.com/auth/devstorage.read_only";

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

  Compute([OAuth2 auth]) : super(auth) {
    basePath = "/compute/v1beta12/projects/";
    rootUrl = "https://www.googleapis.com:443/";
    _disks = new DisksResource(this);
    _firewalls = new FirewallsResource(this);
    _images = new ImagesResource(this);
    _instances = new InstancesResource(this);
    _kernels = new KernelsResource(this);
    _machineTypes = new MachineTypesResource(this);
    _networks = new NetworksResource(this);
    _operations = new OperationsResource(this);
    _projects = new ProjectsResource(this);
    _snapshots = new SnapshotsResource(this);
    _zones = new ZonesResource(this);
  }
}
