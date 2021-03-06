part of bigquery_v2_api_client;

class Dataset {

  /** [Optional] Describes users' rights on the dataset. You can assign the same role to multiple users, and assign multiple roles to the same user.
Default values assigned to a new dataset are as follows: OWNER - Project owners, dataset creator READ - Project readers WRITE - Project writers
See ACLs and Rights for a description of these rights. If you specify any of these roles when creating a dataset, the assigned roles will overwrite the defaults listed above.
To revoke rights to a dataset, call datasets.update() and omit the names of anyone whose rights you wish to revoke. However, every dataset must have at least one entity granted OWNER role.
Each access object can have only one of the following members: userByEmail, groupByEmail, domain, or allAuthenticatedUsers. */
  List<DatasetAccess> access;

  /** [Output-only] The time when this dataset was created, in milliseconds since the epoch. */
  String creationTime;

  /** [Required] Reference identifying dataset. */
  DatasetReference datasetReference;

  /** [Optional] A user-friendly string description for the dataset. This might be shown in BigQuery UI for browsing the dataset. */
  String description;

  /** [Output-only] A hash of this resource. */
  String etag;

  /** [Optional] A descriptive name for this dataset, which might be shown in any BigQuery user interfaces for browsing the dataset. Use datasetId for making API calls. */
  String friendlyName;

  /** [Output-only] The fully-qualified unique name of this dataset in the format projectId:datasetId. The dataset name without the project name is given in the datasetId field. When creating a new dataset, leave this field blank, and instead specify the datasetId field. */
  String id;

  /** [Output-only] The resource type. */
  String kind;

  /** [Output-only] The date when this dataset or any of its tables was last modified, in milliseconds since the epoch. */
  String lastModifiedTime;

  /** [Output-only] An URL that can be used to access this resource again. You can use this URL in Get or Update requests to this resource. */
  String selfLink;

  /** Create new Dataset from JSON data */
  Dataset.fromJson(Map json) {
    if (json.containsKey("access")) {
      access = [];
      json["access"].forEach((item) {
        access.add(new DatasetAccess.fromJson(item));
      });
    }
    if (json.containsKey("creationTime")) {
      creationTime = json["creationTime"];
    }
    if (json.containsKey("datasetReference")) {
      datasetReference = new DatasetReference.fromJson(json["datasetReference"]);
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("friendlyName")) {
      friendlyName = json["friendlyName"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastModifiedTime")) {
      lastModifiedTime = json["lastModifiedTime"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for Dataset */
  Map toJson() {
    var output = new Map();

    if (access != null) {
      output["access"] = new List();
      access.forEach((item) {
        output["access"].add(item.toJson());
      });
    }
    if (creationTime != null) {
      output["creationTime"] = creationTime;
    }
    if (datasetReference != null) {
      output["datasetReference"] = datasetReference.toJson();
    }
    if (description != null) {
      output["description"] = description;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (friendlyName != null) {
      output["friendlyName"] = friendlyName;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastModifiedTime != null) {
      output["lastModifiedTime"] = lastModifiedTime;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of Dataset */
  String toString() => JSON.stringify(this.toJson());

}

class DatasetAccess {

  /** [Pick one] A domain to grant access to. Any users signed in with the domain specified will be granted the specified access. Example: "example.com". */
  String domain;

  /** [Pick one] A fully-qualified email address of a mailing list to grant access to. This must be either a Google Groups mailing list (ends in @googlegroups.com) or a group managed by an enterprise version of Google Groups. */
  String groupByEmail;

  /** [Required] Describes the rights granted to the user specified by the other member of the access object. The following string values are supported: READ - User can call any list() or get() method on any collection or resource. WRITE - User can call any method on any collection except for datasets, on which they can call list() and get(). OWNER - User can call any method. The dataset creator is granted this role by default. */
  String role;

  /** [Pick one] A special group to grant access to. The valid values are: projectOwners: Owners of the enclosing project. projectReaders: Readers of the enclosing project. projectWriters: Writers of the enclosing project. allAuthenticatedUsers: All authenticated BigQuery users. */
  String specialGroup;

  /** [Pick one] A fully qualified email address of a user to grant access to. For example: fred@example.com. */
  String userByEmail;

  /** Create new DatasetAccess from JSON data */
  DatasetAccess.fromJson(Map json) {
    if (json.containsKey("domain")) {
      domain = json["domain"];
    }
    if (json.containsKey("groupByEmail")) {
      groupByEmail = json["groupByEmail"];
    }
    if (json.containsKey("role")) {
      role = json["role"];
    }
    if (json.containsKey("specialGroup")) {
      specialGroup = json["specialGroup"];
    }
    if (json.containsKey("userByEmail")) {
      userByEmail = json["userByEmail"];
    }
  }

  /** Create JSON Object for DatasetAccess */
  Map toJson() {
    var output = new Map();

    if (domain != null) {
      output["domain"] = domain;
    }
    if (groupByEmail != null) {
      output["groupByEmail"] = groupByEmail;
    }
    if (role != null) {
      output["role"] = role;
    }
    if (specialGroup != null) {
      output["specialGroup"] = specialGroup;
    }
    if (userByEmail != null) {
      output["userByEmail"] = userByEmail;
    }

    return output;
  }

  /** Return String representation of DatasetAccess */
  String toString() => JSON.stringify(this.toJson());

}

class DatasetList {

  /** An array of one or more summarized dataset resources. Absent when there are no datasets in the specified project. */
  List<DatasetListDatasets> datasets;

  /** A hash of this page of results. See Paging Through Results in the developer's guide. */
  String etag;

  /** The type of list. */
  String kind;

  /** A token to request the next page of results. Present only when there is more than one page of results.* See Paging Through Results in the developer's guide. */
  String nextPageToken;

  /** Create new DatasetList from JSON data */
  DatasetList.fromJson(Map json) {
    if (json.containsKey("datasets")) {
      datasets = [];
      json["datasets"].forEach((item) {
        datasets.add(new DatasetListDatasets.fromJson(item));
      });
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for DatasetList */
  Map toJson() {
    var output = new Map();

    if (datasets != null) {
      output["datasets"] = new List();
      datasets.forEach((item) {
        output["datasets"].add(item.toJson());
      });
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of DatasetList */
  String toString() => JSON.stringify(this.toJson());

}

class DatasetListDatasets {

  /** Reference identifying dataset. */
  DatasetReference datasetReference;

  /** A descriptive name for this dataset, if one exists. */
  String friendlyName;

  /** The fully-qualified unique name of this dataset in the format projectId:datasetId. */
  String id;

  /** The resource type. */
  String kind;

  /** Create new DatasetListDatasets from JSON data */
  DatasetListDatasets.fromJson(Map json) {
    if (json.containsKey("datasetReference")) {
      datasetReference = new DatasetReference.fromJson(json["datasetReference"]);
    }
    if (json.containsKey("friendlyName")) {
      friendlyName = json["friendlyName"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for DatasetListDatasets */
  Map toJson() {
    var output = new Map();

    if (datasetReference != null) {
      output["datasetReference"] = datasetReference.toJson();
    }
    if (friendlyName != null) {
      output["friendlyName"] = friendlyName;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of DatasetListDatasets */
  String toString() => JSON.stringify(this.toJson());

}

class DatasetReference {

  /** [Required] A unique ID for this dataset, without the project name. */
  String datasetId;

  /** [Optional] The ID of the container project. */
  String projectId;

  /** Create new DatasetReference from JSON data */
  DatasetReference.fromJson(Map json) {
    if (json.containsKey("datasetId")) {
      datasetId = json["datasetId"];
    }
    if (json.containsKey("projectId")) {
      projectId = json["projectId"];
    }
  }

  /** Create JSON Object for DatasetReference */
  Map toJson() {
    var output = new Map();

    if (datasetId != null) {
      output["datasetId"] = datasetId;
    }
    if (projectId != null) {
      output["projectId"] = projectId;
    }

    return output;
  }

  /** Return String representation of DatasetReference */
  String toString() => JSON.stringify(this.toJson());

}

class ErrorProto {

  /** Debugging information for the service, if present. Should be ignored. */
  String debugInfo;

  /** Specifies where the error occurred, if present. */
  String location;

  /** A human readable explanation of the error. */
  String message;

  /** Specifies the error reason. For example, reason will be "required" or "invalid" if some field was missing or malformed. */
  String reason;

  /** Create new ErrorProto from JSON data */
  ErrorProto.fromJson(Map json) {
    if (json.containsKey("debugInfo")) {
      debugInfo = json["debugInfo"];
    }
    if (json.containsKey("location")) {
      location = json["location"];
    }
    if (json.containsKey("message")) {
      message = json["message"];
    }
    if (json.containsKey("reason")) {
      reason = json["reason"];
    }
  }

  /** Create JSON Object for ErrorProto */
  Map toJson() {
    var output = new Map();

    if (debugInfo != null) {
      output["debugInfo"] = debugInfo;
    }
    if (location != null) {
      output["location"] = location;
    }
    if (message != null) {
      output["message"] = message;
    }
    if (reason != null) {
      output["reason"] = reason;
    }

    return output;
  }

  /** Return String representation of ErrorProto */
  String toString() => JSON.stringify(this.toJson());

}

class GetQueryResultsResponse {

  /** A hash of this response. */
  String etag;

  /** Whether the query has completed or not. If rows or totalRows are present, this will always be true. If this is false, totalRows will not be available. */
  bool jobComplete;

  /** Reference to the BigQuery Job that was created to run the query. This field will be present even if the original request timed out, in which case GetQueryResults can be used to read the results once the query has completed. Since this API only returns the first page of results, subsequent pages can be fetched via the same mechanism (GetQueryResults). */
  JobReference jobReference;

  /** The resource type of the response. */
  String kind;

  /** An object with as many results as can be contained within the maximum permitted reply size. To get any additional rows, you can call GetQueryResults and specify the jobReference returned above. Present only when the query completes successfully. */
  List<TableRow> rows;

  /** The schema of the results. Present only when the query completes successfully. */
  TableSchema schema;

  /** The total number of rows in the complete query result set, which can be more than the number of rows in this single page of results. Present only when the query completes successfully. */
  String totalRows;

  /** Create new GetQueryResultsResponse from JSON data */
  GetQueryResultsResponse.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("jobComplete")) {
      jobComplete = json["jobComplete"];
    }
    if (json.containsKey("jobReference")) {
      jobReference = new JobReference.fromJson(json["jobReference"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("rows")) {
      rows = [];
      json["rows"].forEach((item) {
        rows.add(new TableRow.fromJson(item));
      });
    }
    if (json.containsKey("schema")) {
      schema = new TableSchema.fromJson(json["schema"]);
    }
    if (json.containsKey("totalRows")) {
      totalRows = json["totalRows"];
    }
  }

  /** Create JSON Object for GetQueryResultsResponse */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (jobComplete != null) {
      output["jobComplete"] = jobComplete;
    }
    if (jobReference != null) {
      output["jobReference"] = jobReference.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (rows != null) {
      output["rows"] = new List();
      rows.forEach((item) {
        output["rows"].add(item.toJson());
      });
    }
    if (schema != null) {
      output["schema"] = schema.toJson();
    }
    if (totalRows != null) {
      output["totalRows"] = totalRows;
    }

    return output;
  }

  /** Return String representation of GetQueryResultsResponse */
  String toString() => JSON.stringify(this.toJson());

}

class Job {

  /** [Required] Describes the job configuration. */
  JobConfiguration configuration;

  /** [Output-only] A hash of this resource. */
  String etag;

  /** [Output-only] Opaque ID field of the job */
  String id;

  /** [Optional] Reference describing the unique-per-user name of the job. */
  JobReference jobReference;

  /** [Output-only] The type of the resource. */
  String kind;

  /** [Output-only] A URL that can be used to access this resource again. */
  String selfLink;

  /** [Output-only] Information about the job, including starting time and ending time of the job. */
  JobStatistics statistics;

  /** [Output-only] The status of this job. Examine this value when polling an asynchronous job to see if the job is complete. */
  JobStatus status;

  /** Create new Job from JSON data */
  Job.fromJson(Map json) {
    if (json.containsKey("configuration")) {
      configuration = new JobConfiguration.fromJson(json["configuration"]);
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("jobReference")) {
      jobReference = new JobReference.fromJson(json["jobReference"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("statistics")) {
      statistics = new JobStatistics.fromJson(json["statistics"]);
    }
    if (json.containsKey("status")) {
      status = new JobStatus.fromJson(json["status"]);
    }
  }

  /** Create JSON Object for Job */
  Map toJson() {
    var output = new Map();

    if (configuration != null) {
      output["configuration"] = configuration.toJson();
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (jobReference != null) {
      output["jobReference"] = jobReference.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (statistics != null) {
      output["statistics"] = statistics.toJson();
    }
    if (status != null) {
      output["status"] = status.toJson();
    }

    return output;
  }

  /** Return String representation of Job */
  String toString() => JSON.stringify(this.toJson());

}

class JobConfiguration {

  /** [Pick one] Copies a table. */
  JobConfigurationTableCopy copy;

  /** [Pick one] Configures an extract job. */
  JobConfigurationExtract extract;

  /** [Pick one] Configures a link job. */
  JobConfigurationLink link;

  /** [Pick one] Configures a load job. */
  JobConfigurationLoad load;

  /** [Optional] Properties providing extra details about how the job should be run. Not used for most jobs. */
  JobConfigurationProperties properties;

  /** [Pick one] Configures a query job. */
  JobConfigurationQuery query;

  /** Create new JobConfiguration from JSON data */
  JobConfiguration.fromJson(Map json) {
    if (json.containsKey("copy")) {
      copy = new JobConfigurationTableCopy.fromJson(json["copy"]);
    }
    if (json.containsKey("extract")) {
      extract = new JobConfigurationExtract.fromJson(json["extract"]);
    }
    if (json.containsKey("link")) {
      link = new JobConfigurationLink.fromJson(json["link"]);
    }
    if (json.containsKey("load")) {
      load = new JobConfigurationLoad.fromJson(json["load"]);
    }
    if (json.containsKey("properties")) {
      properties = new JobConfigurationProperties.fromJson(json["properties"]);
    }
    if (json.containsKey("query")) {
      query = new JobConfigurationQuery.fromJson(json["query"]);
    }
  }

  /** Create JSON Object for JobConfiguration */
  Map toJson() {
    var output = new Map();

    if (copy != null) {
      output["copy"] = copy.toJson();
    }
    if (extract != null) {
      output["extract"] = extract.toJson();
    }
    if (link != null) {
      output["link"] = link.toJson();
    }
    if (load != null) {
      output["load"] = load.toJson();
    }
    if (properties != null) {
      output["properties"] = properties.toJson();
    }
    if (query != null) {
      output["query"] = query.toJson();
    }

    return output;
  }

  /** Return String representation of JobConfiguration */
  String toString() => JSON.stringify(this.toJson());

}

class JobConfigurationExtract {

  /** [Experimental] Optional and defaults to CSV. Format with which files should be exported. To export to CSV, specify "CSV". Tables with nested or repeated fields cannot be exported as CSV. To export to newline-delimited JSON, specify "NEWLINE_DELIMITED_JSON". */
  String destinationFormat;

  /** [Required] The fully-qualified Google Cloud Storage URI where the extracted table should be written. */
  String destinationUri;

  /** [Optional] Delimiter to use between fields in the exported data. Default is ',' */
  String fieldDelimiter;

  /** [Optional] Whether to print out a heder row in the results. Default is true. */
  bool printHeader;

  /** [Required] A reference to the table being exported. */
  TableReference sourceTable;

  /** Create new JobConfigurationExtract from JSON data */
  JobConfigurationExtract.fromJson(Map json) {
    if (json.containsKey("destinationFormat")) {
      destinationFormat = json["destinationFormat"];
    }
    if (json.containsKey("destinationUri")) {
      destinationUri = json["destinationUri"];
    }
    if (json.containsKey("fieldDelimiter")) {
      fieldDelimiter = json["fieldDelimiter"];
    }
    if (json.containsKey("printHeader")) {
      printHeader = json["printHeader"];
    }
    if (json.containsKey("sourceTable")) {
      sourceTable = new TableReference.fromJson(json["sourceTable"]);
    }
  }

  /** Create JSON Object for JobConfigurationExtract */
  Map toJson() {
    var output = new Map();

    if (destinationFormat != null) {
      output["destinationFormat"] = destinationFormat;
    }
    if (destinationUri != null) {
      output["destinationUri"] = destinationUri;
    }
    if (fieldDelimiter != null) {
      output["fieldDelimiter"] = fieldDelimiter;
    }
    if (printHeader != null) {
      output["printHeader"] = printHeader;
    }
    if (sourceTable != null) {
      output["sourceTable"] = sourceTable.toJson();
    }

    return output;
  }

  /** Return String representation of JobConfigurationExtract */
  String toString() => JSON.stringify(this.toJson());

}

class JobConfigurationLink {

  /** [Optional] Whether or not to create a new table, if none exists. */
  String createDisposition;

  /** [Required] The destination table of the link job. */
  TableReference destinationTable;

  /** [Required] URI of source table to link. */
  List<String> sourceUri;

  /** [Optional] Whether to overwrite an existing table (WRITE_TRUNCATE), append to an existing table (WRITE_APPEND), or require that the the table is empty (WRITE_EMPTY). Default is WRITE_APPEND. */
  String writeDisposition;

  /** Create new JobConfigurationLink from JSON data */
  JobConfigurationLink.fromJson(Map json) {
    if (json.containsKey("createDisposition")) {
      createDisposition = json["createDisposition"];
    }
    if (json.containsKey("destinationTable")) {
      destinationTable = new TableReference.fromJson(json["destinationTable"]);
    }
    if (json.containsKey("sourceUri")) {
      sourceUri = [];
      json["sourceUri"].forEach((item) {
        sourceUri.add(item);
      });
    }
    if (json.containsKey("writeDisposition")) {
      writeDisposition = json["writeDisposition"];
    }
  }

  /** Create JSON Object for JobConfigurationLink */
  Map toJson() {
    var output = new Map();

    if (createDisposition != null) {
      output["createDisposition"] = createDisposition;
    }
    if (destinationTable != null) {
      output["destinationTable"] = destinationTable.toJson();
    }
    if (sourceUri != null) {
      output["sourceUri"] = new List();
      sourceUri.forEach((item) {
        output["sourceUri"].add(item);
      });
    }
    if (writeDisposition != null) {
      output["writeDisposition"] = writeDisposition;
    }

    return output;
  }

  /** Return String representation of JobConfigurationLink */
  String toString() => JSON.stringify(this.toJson());

}

class JobConfigurationLoad {

  /** [Experimental] Whether to allow quoted newlines in the source CSV data. */
  bool allowQuotedNewlines;

  /** [Optional] Whether to create the table if it doesn't already exist (CREATE_IF_NEEDED) or to require the table already exist (CREATE_NEVER). Default is CREATE_IF_NEEDED. */
  String createDisposition;

  /** [Required] Table being written to. */
  TableReference destinationTable;

  /** [Optional] Character encoding of the input data. May be UTF-8 or ISO-8859-1. Default is UTF-8. */
  String encoding;

  /** [Optional] Delimiter to use between fields in the import data. Default is ','. Note that delimiters are applied to the raw, binary data before the encoding is applied. */
  String fieldDelimiter;

  /** [Optional] Maximum number of bad records that should be ignored before the entire job is aborted and no updates are performed. */
  int maxBadRecords;

  /** [Optional] Quote character to use. Default is '"'. Note that quoting is done on the raw, binary data before the encoding is applied. If no quoting is done, use am empty string. */
  String quote;

  /** [Optional] Schema of the table being written to. */
  TableSchema schema;

  /** [Experimental] Inline schema. For CSV schemas, specify as "Field1:Type1[,Field2:Type2]*". For example, "foo:STRING, bar:INTEGER, baz:FLOAT" */
  String schemaInline;

  /** [Experimental] Format of inlineSchema field. */
  String schemaInlineFormat;

  /** [Optional] Number of rows of initial data to skip in the data being imported. */
  int skipLeadingRows;

  /** [Experimental] Optional and defaults to CSV. Format of source files. For CSV uploads, specify "CSV". For imports of datastore backups, specify "DATASTORE_BACKUP". For imports of newline-delimited JSON, specify "NEWLINE_DELIMITED_JSON". */
  String sourceFormat;

  /** [Required] Source URIs describing Google Cloud Storage locations of data to load. */
  List<String> sourceUris;

  /** [Optional] Whether to overwrite an existing table (WRITE_TRUNCATE), append to an existing table (WRITE_APPEND), or require that the the table is empty (WRITE_EMPTY). Default is WRITE_APPEND. */
  String writeDisposition;

  /** Create new JobConfigurationLoad from JSON data */
  JobConfigurationLoad.fromJson(Map json) {
    if (json.containsKey("allowQuotedNewlines")) {
      allowQuotedNewlines = json["allowQuotedNewlines"];
    }
    if (json.containsKey("createDisposition")) {
      createDisposition = json["createDisposition"];
    }
    if (json.containsKey("destinationTable")) {
      destinationTable = new TableReference.fromJson(json["destinationTable"]);
    }
    if (json.containsKey("encoding")) {
      encoding = json["encoding"];
    }
    if (json.containsKey("fieldDelimiter")) {
      fieldDelimiter = json["fieldDelimiter"];
    }
    if (json.containsKey("maxBadRecords")) {
      maxBadRecords = json["maxBadRecords"];
    }
    if (json.containsKey("quote")) {
      quote = json["quote"];
    }
    if (json.containsKey("schema")) {
      schema = new TableSchema.fromJson(json["schema"]);
    }
    if (json.containsKey("schemaInline")) {
      schemaInline = json["schemaInline"];
    }
    if (json.containsKey("schemaInlineFormat")) {
      schemaInlineFormat = json["schemaInlineFormat"];
    }
    if (json.containsKey("skipLeadingRows")) {
      skipLeadingRows = json["skipLeadingRows"];
    }
    if (json.containsKey("sourceFormat")) {
      sourceFormat = json["sourceFormat"];
    }
    if (json.containsKey("sourceUris")) {
      sourceUris = [];
      json["sourceUris"].forEach((item) {
        sourceUris.add(item);
      });
    }
    if (json.containsKey("writeDisposition")) {
      writeDisposition = json["writeDisposition"];
    }
  }

  /** Create JSON Object for JobConfigurationLoad */
  Map toJson() {
    var output = new Map();

    if (allowQuotedNewlines != null) {
      output["allowQuotedNewlines"] = allowQuotedNewlines;
    }
    if (createDisposition != null) {
      output["createDisposition"] = createDisposition;
    }
    if (destinationTable != null) {
      output["destinationTable"] = destinationTable.toJson();
    }
    if (encoding != null) {
      output["encoding"] = encoding;
    }
    if (fieldDelimiter != null) {
      output["fieldDelimiter"] = fieldDelimiter;
    }
    if (maxBadRecords != null) {
      output["maxBadRecords"] = maxBadRecords;
    }
    if (quote != null) {
      output["quote"] = quote;
    }
    if (schema != null) {
      output["schema"] = schema.toJson();
    }
    if (schemaInline != null) {
      output["schemaInline"] = schemaInline;
    }
    if (schemaInlineFormat != null) {
      output["schemaInlineFormat"] = schemaInlineFormat;
    }
    if (skipLeadingRows != null) {
      output["skipLeadingRows"] = skipLeadingRows;
    }
    if (sourceFormat != null) {
      output["sourceFormat"] = sourceFormat;
    }
    if (sourceUris != null) {
      output["sourceUris"] = new List();
      sourceUris.forEach((item) {
        output["sourceUris"].add(item);
      });
    }
    if (writeDisposition != null) {
      output["writeDisposition"] = writeDisposition;
    }

    return output;
  }

  /** Return String representation of JobConfigurationLoad */
  String toString() => JSON.stringify(this.toJson());

}

class JobConfigurationProperties {

  /** Create new JobConfigurationProperties from JSON data */
  JobConfigurationProperties.fromJson(Map json) {
  }

  /** Create JSON Object for JobConfigurationProperties */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of JobConfigurationProperties */
  String toString() => JSON.stringify(this.toJson());

}

class JobConfigurationQuery {

  /** [Optional] Whether to create the table if it doesn't already exist (CREATE_IF_NEEDED) or to require the table already exist (CREATE_NEVER). Default is CREATE_IF_NEEDED. */
  String createDisposition;

  /** [Optional] Specifies the default dataset to assume for unqualified table names in the query. */
  DatasetReference defaultDataset;

  /** [Optional] Describes the table where the query results should be stored. If not present, a new table will be created to store the results. */
  TableReference destinationTable;

  /** [Experimental] If set, preserve null values in table data, rather than mapping null values to the column's default value. This flag currently defaults to false, but the default will soon be changed to true. Shortly afterward, this flag will be removed completely. Please specify true if possible, and false only if you need to force the old behavior while updating client code. */
  bool preserveNulls;

  /** [Optional] Specifies a priority for the query. Default is INTERACTIVE. Alternative is BATCH. */
  String priority;

  /** [Required] BigQuery SQL query to execute. */
  String query;

  /** [Optional] Whether to overwrite an existing table (WRITE_TRUNCATE), append to an existing table (WRITE_APPEND), or require that the the table is empty (WRITE_EMPTY). Default is WRITE_EMPTY. */
  String writeDisposition;

  /** Create new JobConfigurationQuery from JSON data */
  JobConfigurationQuery.fromJson(Map json) {
    if (json.containsKey("createDisposition")) {
      createDisposition = json["createDisposition"];
    }
    if (json.containsKey("defaultDataset")) {
      defaultDataset = new DatasetReference.fromJson(json["defaultDataset"]);
    }
    if (json.containsKey("destinationTable")) {
      destinationTable = new TableReference.fromJson(json["destinationTable"]);
    }
    if (json.containsKey("preserveNulls")) {
      preserveNulls = json["preserveNulls"];
    }
    if (json.containsKey("priority")) {
      priority = json["priority"];
    }
    if (json.containsKey("query")) {
      query = json["query"];
    }
    if (json.containsKey("writeDisposition")) {
      writeDisposition = json["writeDisposition"];
    }
  }

  /** Create JSON Object for JobConfigurationQuery */
  Map toJson() {
    var output = new Map();

    if (createDisposition != null) {
      output["createDisposition"] = createDisposition;
    }
    if (defaultDataset != null) {
      output["defaultDataset"] = defaultDataset.toJson();
    }
    if (destinationTable != null) {
      output["destinationTable"] = destinationTable.toJson();
    }
    if (preserveNulls != null) {
      output["preserveNulls"] = preserveNulls;
    }
    if (priority != null) {
      output["priority"] = priority;
    }
    if (query != null) {
      output["query"] = query;
    }
    if (writeDisposition != null) {
      output["writeDisposition"] = writeDisposition;
    }

    return output;
  }

  /** Return String representation of JobConfigurationQuery */
  String toString() => JSON.stringify(this.toJson());

}

class JobConfigurationTableCopy {

  /** [Optional] Whether or not to create a new table, if none exists. */
  String createDisposition;

  /** [Required] The destination table */
  TableReference destinationTable;

  /** [Required] Source table to copy. */
  TableReference sourceTable;

  /** [Optional] Whether or not to append or require the table to be empty. */
  String writeDisposition;

  /** Create new JobConfigurationTableCopy from JSON data */
  JobConfigurationTableCopy.fromJson(Map json) {
    if (json.containsKey("createDisposition")) {
      createDisposition = json["createDisposition"];
    }
    if (json.containsKey("destinationTable")) {
      destinationTable = new TableReference.fromJson(json["destinationTable"]);
    }
    if (json.containsKey("sourceTable")) {
      sourceTable = new TableReference.fromJson(json["sourceTable"]);
    }
    if (json.containsKey("writeDisposition")) {
      writeDisposition = json["writeDisposition"];
    }
  }

  /** Create JSON Object for JobConfigurationTableCopy */
  Map toJson() {
    var output = new Map();

    if (createDisposition != null) {
      output["createDisposition"] = createDisposition;
    }
    if (destinationTable != null) {
      output["destinationTable"] = destinationTable.toJson();
    }
    if (sourceTable != null) {
      output["sourceTable"] = sourceTable.toJson();
    }
    if (writeDisposition != null) {
      output["writeDisposition"] = writeDisposition;
    }

    return output;
  }

  /** Return String representation of JobConfigurationTableCopy */
  String toString() => JSON.stringify(this.toJson());

}

class JobList {

  /** A hash of this page of results. */
  String etag;

  /** List of jobs that were requested. */
  List<JobListJobs> jobs;

  /** The resource type of the response. */
  String kind;

  /** A token to request the next page of results. */
  String nextPageToken;

  /** Total number of jobs in this collection. */
  int totalItems;

  /** Create new JobList from JSON data */
  JobList.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("jobs")) {
      jobs = [];
      json["jobs"].forEach((item) {
        jobs.add(new JobListJobs.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for JobList */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (jobs != null) {
      output["jobs"] = new List();
      jobs.forEach((item) {
        output["jobs"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of JobList */
  String toString() => JSON.stringify(this.toJson());

}

class JobListJobs {

  /** [Full-projection-only] Specifies the job configuration. */
  JobConfiguration configuration;

  /** A result object that will be present only if the job has failed. */
  ErrorProto errorResult;

  /** Unique opaque ID of the job. */
  String id;

  /** Job reference uniquely identifying the job. */
  JobReference jobReference;

  /** The resource type. */
  String kind;

  /** Running state of the job. When the state is DONE, errorResult can be checked to determine whether the job succeeded or failed. */
  String state;

  /** [Output-only] Information about the job, including starting time and ending time of the job. */
  JobStatistics statistics;

  /** [Full-projection-only] Describes the state of the job. */
  JobStatus status;

  /** Create new JobListJobs from JSON data */
  JobListJobs.fromJson(Map json) {
    if (json.containsKey("configuration")) {
      configuration = new JobConfiguration.fromJson(json["configuration"]);
    }
    if (json.containsKey("errorResult")) {
      errorResult = new ErrorProto.fromJson(json["errorResult"]);
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("jobReference")) {
      jobReference = new JobReference.fromJson(json["jobReference"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("state")) {
      state = json["state"];
    }
    if (json.containsKey("statistics")) {
      statistics = new JobStatistics.fromJson(json["statistics"]);
    }
    if (json.containsKey("status")) {
      status = new JobStatus.fromJson(json["status"]);
    }
  }

  /** Create JSON Object for JobListJobs */
  Map toJson() {
    var output = new Map();

    if (configuration != null) {
      output["configuration"] = configuration.toJson();
    }
    if (errorResult != null) {
      output["errorResult"] = errorResult.toJson();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (jobReference != null) {
      output["jobReference"] = jobReference.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (state != null) {
      output["state"] = state;
    }
    if (statistics != null) {
      output["statistics"] = statistics.toJson();
    }
    if (status != null) {
      output["status"] = status.toJson();
    }

    return output;
  }

  /** Return String representation of JobListJobs */
  String toString() => JSON.stringify(this.toJson());

}

class JobReference {

  /** [Required] ID of the job. */
  String jobId;

  /** [Required] Project ID being billed for the job. */
  String projectId;

  /** Create new JobReference from JSON data */
  JobReference.fromJson(Map json) {
    if (json.containsKey("jobId")) {
      jobId = json["jobId"];
    }
    if (json.containsKey("projectId")) {
      projectId = json["projectId"];
    }
  }

  /** Create JSON Object for JobReference */
  Map toJson() {
    var output = new Map();

    if (jobId != null) {
      output["jobId"] = jobId;
    }
    if (projectId != null) {
      output["projectId"] = projectId;
    }

    return output;
  }

  /** Return String representation of JobReference */
  String toString() => JSON.stringify(this.toJson());

}

class JobStatistics {

  /** [Output-only] End time of this job, in milliseconds since the epoch. */
  String endTime;

  /** [Output-only] Statistics for a load job. */
  JobStatistics3 load;

  /** [Output-only] Statistics for a query job. */
  JobStatistics2 query;

  /** [Output-only] Start time of this job, in milliseconds since the epoch. */
  String startTime;

  /** [Output-only] [Deprecated] Use the bytes processed in the query statistics instead. */
  String totalBytesProcessed;

  /** Create new JobStatistics from JSON data */
  JobStatistics.fromJson(Map json) {
    if (json.containsKey("endTime")) {
      endTime = json["endTime"];
    }
    if (json.containsKey("load")) {
      load = new JobStatistics3.fromJson(json["load"]);
    }
    if (json.containsKey("query")) {
      query = new JobStatistics2.fromJson(json["query"]);
    }
    if (json.containsKey("startTime")) {
      startTime = json["startTime"];
    }
    if (json.containsKey("totalBytesProcessed")) {
      totalBytesProcessed = json["totalBytesProcessed"];
    }
  }

  /** Create JSON Object for JobStatistics */
  Map toJson() {
    var output = new Map();

    if (endTime != null) {
      output["endTime"] = endTime;
    }
    if (load != null) {
      output["load"] = load.toJson();
    }
    if (query != null) {
      output["query"] = query.toJson();
    }
    if (startTime != null) {
      output["startTime"] = startTime;
    }
    if (totalBytesProcessed != null) {
      output["totalBytesProcessed"] = totalBytesProcessed;
    }

    return output;
  }

  /** Return String representation of JobStatistics */
  String toString() => JSON.stringify(this.toJson());

}

class JobStatistics2 {

  /** [Output-only] Total bytes processed for this job. */
  String totalBytesProcessed;

  /** Create new JobStatistics2 from JSON data */
  JobStatistics2.fromJson(Map json) {
    if (json.containsKey("totalBytesProcessed")) {
      totalBytesProcessed = json["totalBytesProcessed"];
    }
  }

  /** Create JSON Object for JobStatistics2 */
  Map toJson() {
    var output = new Map();

    if (totalBytesProcessed != null) {
      output["totalBytesProcessed"] = totalBytesProcessed;
    }

    return output;
  }

  /** Return String representation of JobStatistics2 */
  String toString() => JSON.stringify(this.toJson());

}

class JobStatistics3 {

  /** [Output-only] Number of bytes of source data in a joad job. */
  String inputFileBytes;

  /** [Output-only] Number of source files in a load job. */
  String inputFiles;

  /** [Output-only] Size of the loaded data in bytes. Note that while an import job is in the running state, this value may change. */
  String outputBytes;

  /** [Output-only] Number of rows imported in a load job. Note that while an import job is in the running state, this value may change. */
  String outputRows;

  /** Create new JobStatistics3 from JSON data */
  JobStatistics3.fromJson(Map json) {
    if (json.containsKey("inputFileBytes")) {
      inputFileBytes = json["inputFileBytes"];
    }
    if (json.containsKey("inputFiles")) {
      inputFiles = json["inputFiles"];
    }
    if (json.containsKey("outputBytes")) {
      outputBytes = json["outputBytes"];
    }
    if (json.containsKey("outputRows")) {
      outputRows = json["outputRows"];
    }
  }

  /** Create JSON Object for JobStatistics3 */
  Map toJson() {
    var output = new Map();

    if (inputFileBytes != null) {
      output["inputFileBytes"] = inputFileBytes;
    }
    if (inputFiles != null) {
      output["inputFiles"] = inputFiles;
    }
    if (outputBytes != null) {
      output["outputBytes"] = outputBytes;
    }
    if (outputRows != null) {
      output["outputRows"] = outputRows;
    }

    return output;
  }

  /** Return String representation of JobStatistics3 */
  String toString() => JSON.stringify(this.toJson());

}

class JobStatus {

  /** [Output-only] Final error result of the job. If present, indicates that the job has completed and was unsuccessful. */
  ErrorProto errorResult;

  /** [Output-only] All errors encountered during the running of the job. Errors here do not necessarily mean that the job has completed or was unsuccessful. */
  List<ErrorProto> errors;

  /** [Output-only] Running state of the job. */
  String state;

  /** Create new JobStatus from JSON data */
  JobStatus.fromJson(Map json) {
    if (json.containsKey("errorResult")) {
      errorResult = new ErrorProto.fromJson(json["errorResult"]);
    }
    if (json.containsKey("errors")) {
      errors = [];
      json["errors"].forEach((item) {
        errors.add(new ErrorProto.fromJson(item));
      });
    }
    if (json.containsKey("state")) {
      state = json["state"];
    }
  }

  /** Create JSON Object for JobStatus */
  Map toJson() {
    var output = new Map();

    if (errorResult != null) {
      output["errorResult"] = errorResult.toJson();
    }
    if (errors != null) {
      output["errors"] = new List();
      errors.forEach((item) {
        output["errors"].add(item.toJson());
      });
    }
    if (state != null) {
      output["state"] = state;
    }

    return output;
  }

  /** Return String representation of JobStatus */
  String toString() => JSON.stringify(this.toJson());

}

class ProjectList {

  /** A hash of the page of results */
  String etag;

  /** The type of list. */
  String kind;

  /** A token to request the next page of results. */
  String nextPageToken;

  /** Projects to which you have at least READ access. */
  List<ProjectListProjects> projects;

  /** The total number of projects in the list. */
  int totalItems;

  /** Create new ProjectList from JSON data */
  ProjectList.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("projects")) {
      projects = [];
      json["projects"].forEach((item) {
        projects.add(new ProjectListProjects.fromJson(item));
      });
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for ProjectList */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (projects != null) {
      output["projects"] = new List();
      projects.forEach((item) {
        output["projects"].add(item.toJson());
      });
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of ProjectList */
  String toString() => JSON.stringify(this.toJson());

}

class ProjectListProjects {

  /** A descriptive name for this project. */
  String friendlyName;

  /** An opaque ID of this project. */
  String id;

  /** The resource type. */
  String kind;

  /** A unique reference to this project. */
  ProjectReference projectReference;

  /** Create new ProjectListProjects from JSON data */
  ProjectListProjects.fromJson(Map json) {
    if (json.containsKey("friendlyName")) {
      friendlyName = json["friendlyName"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("projectReference")) {
      projectReference = new ProjectReference.fromJson(json["projectReference"]);
    }
  }

  /** Create JSON Object for ProjectListProjects */
  Map toJson() {
    var output = new Map();

    if (friendlyName != null) {
      output["friendlyName"] = friendlyName;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (projectReference != null) {
      output["projectReference"] = projectReference.toJson();
    }

    return output;
  }

  /** Return String representation of ProjectListProjects */
  String toString() => JSON.stringify(this.toJson());

}

class ProjectReference {

  /** [Required] ID of the project. Can be either the numeric ID or the assigned ID of the project. */
  String projectId;

  /** Create new ProjectReference from JSON data */
  ProjectReference.fromJson(Map json) {
    if (json.containsKey("projectId")) {
      projectId = json["projectId"];
    }
  }

  /** Create JSON Object for ProjectReference */
  Map toJson() {
    var output = new Map();

    if (projectId != null) {
      output["projectId"] = projectId;
    }

    return output;
  }

  /** Return String representation of ProjectReference */
  String toString() => JSON.stringify(this.toJson());

}

class QueryRequest {

  /** [Optional] Specifies the default datasetId and projectId to assume for any unqualified table names in the query. If not set, all table names in the query string must be fully-qualified in the format projectId:datasetId.tableid. */
  DatasetReference defaultDataset;

  /** [Optional] If set, don't actually run the query. A valid query will return an empty response, while an invalid query will return the same error it would if it wasn't a dry run. */
  bool dryRun;

  /** The resource type of the request. */
  String kind;

  /** [Optional] The maximum number of results to return per page of results. If the response list exceeds the maximum response size for a single response, you will have to page through the results. Default is to return the maximum response size. */
  int maxResults;

  /** [Experimental] If set, preserve null values in table data, rather than mapping null values to the column's default value. This flag currently defaults to false, but the default will soon be changed to true. Shortly afterward, this flag will be removed completely. Please specify true if possible, and false only if you need to force the old behavior while updating client code. */
  bool preserveNulls;

  /** [Required] A query string, following the BigQuery query syntax of the query to execute. Table names should be qualified by dataset name in the format projectId:datasetId.tableId unless you specify the defaultDataset value. If the table is in the same project as the job, you can omit the project ID. Example: SELECT f1 FROM myProjectId:myDatasetId.myTableId. */
  String query;

  /** [Optional] How long to wait for the query to complete, in milliseconds, before returning. Default is to return immediately. If the timeout passes before the job completes, the request will fail with a TIMEOUT error. */
  int timeoutMs;

  /** Create new QueryRequest from JSON data */
  QueryRequest.fromJson(Map json) {
    if (json.containsKey("defaultDataset")) {
      defaultDataset = new DatasetReference.fromJson(json["defaultDataset"]);
    }
    if (json.containsKey("dryRun")) {
      dryRun = json["dryRun"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("maxResults")) {
      maxResults = json["maxResults"];
    }
    if (json.containsKey("preserveNulls")) {
      preserveNulls = json["preserveNulls"];
    }
    if (json.containsKey("query")) {
      query = json["query"];
    }
    if (json.containsKey("timeoutMs")) {
      timeoutMs = json["timeoutMs"];
    }
  }

  /** Create JSON Object for QueryRequest */
  Map toJson() {
    var output = new Map();

    if (defaultDataset != null) {
      output["defaultDataset"] = defaultDataset.toJson();
    }
    if (dryRun != null) {
      output["dryRun"] = dryRun;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (maxResults != null) {
      output["maxResults"] = maxResults;
    }
    if (preserveNulls != null) {
      output["preserveNulls"] = preserveNulls;
    }
    if (query != null) {
      output["query"] = query;
    }
    if (timeoutMs != null) {
      output["timeoutMs"] = timeoutMs;
    }

    return output;
  }

  /** Return String representation of QueryRequest */
  String toString() => JSON.stringify(this.toJson());

}

class QueryResponse {

  /** Whether the query has completed or not. If rows or totalRows are present, this will always be true. If this is false, totalRows will not be available. */
  bool jobComplete;

  /** Reference to the Job that was created to run the query. This field will be present even if the original request timed out, in which case GetQueryResults can be used to read the results once the query has completed. Since this API only returns the first page of results, subsequent pages can be fetched via the same mechanism (GetQueryResults). */
  JobReference jobReference;

  /** The resource type. */
  String kind;

  /** An object with as many results as can be contained within the maximum permitted reply size. To get any additional rows, you can call GetQueryResults and specify the jobReference returned above. */
  List<TableRow> rows;

  /** The schema of the results. Present only when the query completes successfully. */
  TableSchema schema;

  /** The total number of rows in the complete query result set, which can be more than the number of rows in this single page of results. */
  String totalRows;

  /** Create new QueryResponse from JSON data */
  QueryResponse.fromJson(Map json) {
    if (json.containsKey("jobComplete")) {
      jobComplete = json["jobComplete"];
    }
    if (json.containsKey("jobReference")) {
      jobReference = new JobReference.fromJson(json["jobReference"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("rows")) {
      rows = [];
      json["rows"].forEach((item) {
        rows.add(new TableRow.fromJson(item));
      });
    }
    if (json.containsKey("schema")) {
      schema = new TableSchema.fromJson(json["schema"]);
    }
    if (json.containsKey("totalRows")) {
      totalRows = json["totalRows"];
    }
  }

  /** Create JSON Object for QueryResponse */
  Map toJson() {
    var output = new Map();

    if (jobComplete != null) {
      output["jobComplete"] = jobComplete;
    }
    if (jobReference != null) {
      output["jobReference"] = jobReference.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (rows != null) {
      output["rows"] = new List();
      rows.forEach((item) {
        output["rows"].add(item.toJson());
      });
    }
    if (schema != null) {
      output["schema"] = schema.toJson();
    }
    if (totalRows != null) {
      output["totalRows"] = totalRows;
    }

    return output;
  }

  /** Return String representation of QueryResponse */
  String toString() => JSON.stringify(this.toJson());

}

class Table {

  /** [Output-only] The time when this table was created, in milliseconds since the epoch. */
  String creationTime;

  /** [Optional] A user-friendly description of this table. */
  String description;

  /** [Output-only] A hash of this resource. */
  String etag;

  /** [Optional] The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely. Expired tables will be deleted and their storage reclaimed. */
  String expirationTime;

  /** [Optional] A descriptive name for this table. */
  String friendlyName;

  /** [Output-only] An opaque ID uniquely identifying the table. */
  String id;

  /** [Output-only] The type of the resource. */
  String kind;

  /** [Output-only] The time when this table was last modified, in milliseconds since the epoch. */
  String lastModifiedTime;

  /** [Output-only] The size of the table in bytes. */
  String numBytes;

  /** [Output-only] The number of rows of data in this table. */
  String numRows;

  /** [Optional] Describes the schema of this table. */
  TableSchema schema;

  /** [Output-only] A URL that can be used to access this resource again. */
  String selfLink;

  /** [Required] Reference describing the ID of this table. */
  TableReference tableReference;

  /** Create new Table from JSON data */
  Table.fromJson(Map json) {
    if (json.containsKey("creationTime")) {
      creationTime = json["creationTime"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("expirationTime")) {
      expirationTime = json["expirationTime"];
    }
    if (json.containsKey("friendlyName")) {
      friendlyName = json["friendlyName"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastModifiedTime")) {
      lastModifiedTime = json["lastModifiedTime"];
    }
    if (json.containsKey("numBytes")) {
      numBytes = json["numBytes"];
    }
    if (json.containsKey("numRows")) {
      numRows = json["numRows"];
    }
    if (json.containsKey("schema")) {
      schema = new TableSchema.fromJson(json["schema"]);
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("tableReference")) {
      tableReference = new TableReference.fromJson(json["tableReference"]);
    }
  }

  /** Create JSON Object for Table */
  Map toJson() {
    var output = new Map();

    if (creationTime != null) {
      output["creationTime"] = creationTime;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (expirationTime != null) {
      output["expirationTime"] = expirationTime;
    }
    if (friendlyName != null) {
      output["friendlyName"] = friendlyName;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastModifiedTime != null) {
      output["lastModifiedTime"] = lastModifiedTime;
    }
    if (numBytes != null) {
      output["numBytes"] = numBytes;
    }
    if (numRows != null) {
      output["numRows"] = numRows;
    }
    if (schema != null) {
      output["schema"] = schema.toJson();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (tableReference != null) {
      output["tableReference"] = tableReference.toJson();
    }

    return output;
  }

  /** Return String representation of Table */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a single cell in the result set. */
class TableCell {

  /** Create new TableCell from JSON data */
  TableCell.fromJson(Map json) {
  }

  /** Create JSON Object for TableCell */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of TableCell */
  String toString() => JSON.stringify(this.toJson());

}

class TableDataList {

  /** A hash of this page of results. */
  String etag;

  /** The resource type of the response. */
  String kind;

  /** A token used for paging results. Providing this token instead of the startRow parameter can help you retrieve stable results when an underlying table is changing. */
  String pageToken;

  /** Rows of results. */
  List<TableRow> rows;

  /** The total number of rows in the complete table. */
  String totalRows;

  /** Create new TableDataList from JSON data */
  TableDataList.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("pageToken")) {
      pageToken = json["pageToken"];
    }
    if (json.containsKey("rows")) {
      rows = [];
      json["rows"].forEach((item) {
        rows.add(new TableRow.fromJson(item));
      });
    }
    if (json.containsKey("totalRows")) {
      totalRows = json["totalRows"];
    }
  }

  /** Create JSON Object for TableDataList */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (pageToken != null) {
      output["pageToken"] = pageToken;
    }
    if (rows != null) {
      output["rows"] = new List();
      rows.forEach((item) {
        output["rows"].add(item.toJson());
      });
    }
    if (totalRows != null) {
      output["totalRows"] = totalRows;
    }

    return output;
  }

  /** Return String representation of TableDataList */
  String toString() => JSON.stringify(this.toJson());

}

class TableFieldSchema {

  /** [Optional] Describes nested fields when type is RECORD. */
  List<TableFieldSchema> fields;

  /** [Optional] Mode of the field (whether or not it can be null. Default is NULLABLE. */
  String mode;

  /** [Required] Name of the field. */
  String name;

  /** [Required] Data type of the field. */
  String type;

  /** Create new TableFieldSchema from JSON data */
  TableFieldSchema.fromJson(Map json) {
    if (json.containsKey("fields")) {
      fields = [];
      json["fields"].forEach((item) {
        fields.add(new TableFieldSchema.fromJson(item));
      });
    }
    if (json.containsKey("mode")) {
      mode = json["mode"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for TableFieldSchema */
  Map toJson() {
    var output = new Map();

    if (fields != null) {
      output["fields"] = new List();
      fields.forEach((item) {
        output["fields"].add(item.toJson());
      });
    }
    if (mode != null) {
      output["mode"] = mode;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of TableFieldSchema */
  String toString() => JSON.stringify(this.toJson());

}

class TableList {

  /** A hash of this page of results. */
  String etag;

  /** The type of list. */
  String kind;

  /** A token to request the next page of results. */
  String nextPageToken;

  /** Tables in the requested dataset. */
  List<TableListTables> tables;

  /** The total number of tables in the dataset. */
  int totalItems;

  /** Create new TableList from JSON data */
  TableList.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("tables")) {
      tables = [];
      json["tables"].forEach((item) {
        tables.add(new TableListTables.fromJson(item));
      });
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for TableList */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (tables != null) {
      output["tables"] = new List();
      tables.forEach((item) {
        output["tables"].add(item.toJson());
      });
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of TableList */
  String toString() => JSON.stringify(this.toJson());

}

class TableListTables {

  /** The user-friendly name for this table. */
  String friendlyName;

  /** An opaque ID of the table */
  String id;

  /** The resource type. */
  String kind;

  /** A reference uniquely identifying the table. */
  TableReference tableReference;

  /** Create new TableListTables from JSON data */
  TableListTables.fromJson(Map json) {
    if (json.containsKey("friendlyName")) {
      friendlyName = json["friendlyName"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("tableReference")) {
      tableReference = new TableReference.fromJson(json["tableReference"]);
    }
  }

  /** Create JSON Object for TableListTables */
  Map toJson() {
    var output = new Map();

    if (friendlyName != null) {
      output["friendlyName"] = friendlyName;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (tableReference != null) {
      output["tableReference"] = tableReference.toJson();
    }

    return output;
  }

  /** Return String representation of TableListTables */
  String toString() => JSON.stringify(this.toJson());

}

class TableReference {

  /** [Required] ID of the dataset containing the table. */
  String datasetId;

  /** [Required] ID of the project billed for storage of the table. */
  String projectId;

  /** [Required] ID of the table. */
  String tableId;

  /** Create new TableReference from JSON data */
  TableReference.fromJson(Map json) {
    if (json.containsKey("datasetId")) {
      datasetId = json["datasetId"];
    }
    if (json.containsKey("projectId")) {
      projectId = json["projectId"];
    }
    if (json.containsKey("tableId")) {
      tableId = json["tableId"];
    }
  }

  /** Create JSON Object for TableReference */
  Map toJson() {
    var output = new Map();

    if (datasetId != null) {
      output["datasetId"] = datasetId;
    }
    if (projectId != null) {
      output["projectId"] = projectId;
    }
    if (tableId != null) {
      output["tableId"] = tableId;
    }

    return output;
  }

  /** Return String representation of TableReference */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a single row in the result set, consisting of one or more fields. */
class TableRow {
  List<TableCell> f;

  /** Create new TableRow from JSON data */
  TableRow.fromJson(Map json) {
    if (json.containsKey("f")) {
      f = [];
      json["f"].forEach((item) {
        f.add(new TableCell.fromJson(item));
      });
    }
  }

  /** Create JSON Object for TableRow */
  Map toJson() {
    var output = new Map();

    if (f != null) {
      output["f"] = new List();
      f.forEach((item) {
        output["f"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of TableRow */
  String toString() => JSON.stringify(this.toJson());

}

class TableSchema {

  /** Describes the fields in a table. */
  List<TableFieldSchema> fields;

  /** Create new TableSchema from JSON data */
  TableSchema.fromJson(Map json) {
    if (json.containsKey("fields")) {
      fields = [];
      json["fields"].forEach((item) {
        fields.add(new TableFieldSchema.fromJson(item));
      });
    }
  }

  /** Create JSON Object for TableSchema */
  Map toJson() {
    var output = new Map();

    if (fields != null) {
      output["fields"] = new List();
      fields.forEach((item) {
        output["fields"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of TableSchema */
  String toString() => JSON.stringify(this.toJson());

}

