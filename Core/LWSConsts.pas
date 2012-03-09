(*
  LazWebSolutions, Consts unit
  Copyright (C) 2012-2014 Silvio Clecio, Luciano Souza.

  https://github.com/silvioprog/lazwebsolutions

  See the file LICENSE.txt, included in this distribution,
  for details about the copyright.

  This library is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
*)

unit LWSConsts;

{$I lazwebsolutions.inc}

interface

const
  LWS = 'LazWebSolutions';
  NullDate = 0;
  NullCookieExpires = 'Thu, 01-Jan-70 00:00:01 GMT';
  ES = '';
  HT = #9;
  LF = #10;
  CR = #13;
  SP = #32;
  DQ = #34;
  BR = '<br />';
  CRLF = CR + LF;
  LWS_CGI_ENV_COUNT = 36;
  LWS_HTTP_ALLOWED_CHARS = ['A'..'Z', 'a'..'z', '*', '@', '.', '_', '-',
    '0'..'9', '$', '!', '''', '(', ')'];
  LWS_GMT_MONTHS: array[1..12] of string[3] = (
    'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec');
  LWS_GMT_DAYS: array[1..7] of string[3] = (
    'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat');
  LWS_GMT_FRMT = '%s, %.2d %s %d %.2d:%.2d:%.2d GMT';
  LWS_SESSID = 'LSSESSID';
  LWS_SESSION_TIMEOUT = 180;
  LWS_SESSION_PREFIX = 'sess_';
  LWS_DEFAULT_TAG_PREFIX = '@';
  LWS_DEFAULT_VIEW_FILENAME = 'default.lws.html';
  LWS_CONTENT_TYPE_CANT_BE_EMPTY_ERR = 'ContentType can''t be empty.';
  LWS_DEBUG_SAVE_PATH_NOT_FOUND_ERR =
    'Failed to write debug data. Please verify that the current setting ' +
    'of debug temp directory is correct (%s) in %s.';
  LWS_SESSION_SAVE_PATH_NOT_FOUND_ERR =
    'Failed to write session data. Please verify that the current setting ' +
    'of sessions SavePath is correct (%s) in %s.';
  LWS_UPLOAD_SAVE_PATH_NOT_FOUND_ERR =
    'Failed to write upload file. Please verify that the current setting ' +
    'of uploads SavePath is correct (%s) in %s.';
  LWS_VIEW_PATH_NOT_FOUND_ERR =
    'Failed to load view file. Please verify if current path  of views (%s) ' +
    'is correct in %s.';
  LWS_UPLOAD_NO_SUCH_UPLOADED_FILE_ERR = 'No such uploaded file: "%s"';
  LWS_UPLOAD_INVALID_MULTIPART_ENCODING_ERR = 'Invalid multipart encoding: %s';
  { Server environment variables. }
  LWS_SRV_ENV_DOCUMENT_ROOT = 'DOCUMENT_ROOT';
  LWS_SRV_ENV_SERVER_ADDR = 'SERVER_ADDR';
  LWS_SRV_ENV_SERVER_ADMIN = 'SERVER_ADMIN';
  LWS_SRV_ENV_SERVER_SOFTWARE = 'SERVER_SOFTWARE';
  LWS_SRV_ENV_SERVER_NAME = 'SERVER_NAME';
  LWS_SRV_ENV_GATEWAY_INTERFACE = 'GATEWAY_INTERFACE';
  LWS_SRV_ENV_SERVER_PROTOCOL = 'SERVER_PROTOCOL';
  LWS_SRV_ENV_SERVER_PORT = 'SERVER_PORT';
  LWS_SRV_ENV_REQUEST_METHOD = 'REQUEST_METHOD';
  LWS_SRV_ENV_REQUEST_URI = 'REQUEST_URI';
  LWS_SRV_ENV_PATH_INFO = 'PATH_INFO';
  LWS_SRV_ENV_PATH_TRANSLATED = 'PATH_TRANSLATED';
  LWS_SRV_ENV_SCRIPT_FILENAME = 'SCRIPT_FILENAME';
  LWS_SRV_ENV_SCRIPT_NAME = 'SCRIPT_NAME';
  LWS_SRV_ENV_QUERY_STRING = 'QUERY_STRING';
  LWS_SRV_ENV_REMOTE_HOST = 'REMOTE_HOST';
  LWS_SRV_ENV_REMOTE_ADDR = 'REMOTE_ADDR';
  LWS_SRV_ENV_REMOTE_PORT = 'REMOTE_PORT';
  LWS_SRV_ENV_AUTH_TYPE = 'AUTH_TYPE';
  LWS_SRV_ENV_REMOTE_USER = 'REMOTE_USER';
  LWS_SRV_ENV_REMOTE_IDENT = 'REMOTE_IDENT';
  LWS_SRV_ENV_CONTENT_TYPE = 'CONTENT_TYPE';
  LWS_SRV_ENV_CONTENT_LENGTH = 'CONTENT_LENGTH';
  { Client environment variables. }
  LWS_CLT_ENV_HTTP_HTTP_COOKIE = 'HTTP_COOKIE';
  LWS_CLT_ENV_HTTP_REFERER = 'HTTP_REFERER';
  LWS_CLT_ENV_HTTP_USER_AGENT = 'HTTP_USER_AGENT';
  LWS_CLT_ENV_HTTP_IF_MODIFIED_SINCE = 'HTTP_IF_MODIFIED_SINCE';
  LWS_CLT_ENV_HTTP_HOST = 'HTTP_HOST';
  LWS_CLT_ENV_HTTP_CONNECTION = 'HTTP_CONNECTION';
  LWS_CLT_ENV_HTTP_CACHE_CONTROL = 'HTTP_CACHE_CONTROL';
  LWS_CLT_ENV_HTTP_ACCEPT = 'HTTP_ACCEPT';
  LWS_CLT_ENV_HTTP_ACCEPT_ENCODING = 'HTTP_ACCEPT_ENCODING';
  LWS_CLT_ENV_HTTP_ACCEPT_LANGUAGE = 'HTTP_ACCEPT_LANGUAGE';
  LWS_CLT_ENV_HTTP_ACCEPT_CHARSET = 'HTTP_ACCEPT_CHARSET';
  LWS_CLT_ENV_HTTP_IF_NONE_MATCH = 'HTTP_IF_NONE_MATCH';
  { - 1xx: Informational - Request received, continuing process }
  LWS_HTTP_STATUS_CODE_CONTINUE = 100;
  LWS_HTTP_STATUS_CODE_SWITCHING_PROTOCOLS = 101;
  { - 2xx: Success - The action was successfully received,
      understood, and accepted }
  LWS_HTTP_STATUS_CODE_OK = 200;
  LWS_HTTP_STATUS_CODE_CREATED = 201;
  LWS_HTTP_STATUS_CODE_ACCEPTED = 202;
  LWS_HTTP_STATUS_CODE_NON_AUTHORITATIVE_INFORMATION = 203;
  LWS_HTTP_STATUS_CODE_NO_CONTENT = 204;
  LWS_HTTP_STATUS_CODE_RESET_CONTENT = 205;
  LWS_HTTP_STATUS_CODE_PARTIAL_CONTENT = 206;
  { - 3xx: Redirection - Further action must be taken in order to
      complete the request }
  LWS_HTTP_STATUS_CODE_MULTIPLE_CHOICES = 300;
  LWS_HTTP_STATUS_CODE_MOVED_PERMANENTLY = 301;
  LWS_HTTP_STATUS_CODE_FOUND = 302;
  LWS_HTTP_STATUS_CODE_SEE_OTHER = 303;
  LWS_HTTP_STATUS_CODE_NOT_MODIFIED = 304;
  LWS_HTTP_STATUS_CODE_USE_PROXY = 305;
  LWS_HTTP_STATUS_CODE_TEMPORARY_REDIRECT = 307;
  { - 4xx: Client Error - The request contains bad syntax or cannot
      be fulfilled }
  LWS_HTTP_STATUS_CODE_BAD_REQUEST = 400;
  LWS_HTTP_STATUS_CODE_UNAUTHORIZED = 401;
  LWS_HTTP_STATUS_CODE_PAYMENT_REQUIRED = 402;
  LWS_HTTP_STATUS_CODE_FORBIDDEN = 403;
  LWS_HTTP_STATUS_CODE_NOT_FOUND = 404;
  LWS_HTTP_STATUS_CODE_METHOD_NOT_ALLOWED = 405;
  LWS_HTTP_STATUS_CODE_NOT_ACCEPTABLE = 406;
  LWS_HTTP_STATUS_CODE_PROXY_AUTHENTICATION_REQUIRED = 407;
  LWS_HTTP_STATUS_CODE_REQUEST_TIMEOUT = 408;
  LWS_HTTP_STATUS_CODE_CONFLICT = 409;
  LWS_HTTP_STATUS_CODE_GONE = 410;
  LWS_HTTP_STATUS_CODE_LENGTH_REQUIRED = 411;
  LWS_HTTP_STATUS_CODE_PRECONDITION_FAILED = 412;
  LWS_HTTP_STATUS_CODE_REQUEST_ENTITY_TOO_LARGE = 413;
  LWS_HTTP_STATUS_CODE_REQUEST_URI_TOO_LONG = 414;
  LWS_HTTP_STATUS_CODE_UNSUPPORTED_MEDIA_TYPE = 415;
  LWS_HTTP_STATUS_CODE_REQUESTED_RANGE_NOT_SATISFIABLE = 416;
  LWS_HTTP_STATUS_CODE_EXPECTATION_FAILED = 417;
  { - 5xx: Server Error - The server failed to fulfill an apparently
      valid request }
  LWS_HTTP_STATUS_CODE_INTERNAL_SERVER_ERROR = 500;
  LWS_HTTP_STATUS_CODE_NOT_IMPLEMENTED = 501;
  LWS_HTTP_STATUS_CODE_BAD_GATEWAY = 502;
  LWS_HTTP_STATUS_CODE_SERVICE_UNAVAILABLE = 503;
  LWS_HTTP_STATUS_CODE_GATEWAY_TIMEOUT = 504;
  LWS_HTTP_STATUS_CODE_HTTP_VERSION_NOT_SUPPORTED = 505;
  { - 1xx: Informational - Request received, continuing process }
  LWS_HTTP_REASON_PHRASE_CONTINUE = 'Continue';
  LWS_HTTP_REASON_PHRASE_SWITCHING_PROTOCOLS = 'Switching Protocols';
  { - 2xx: Success - The action was successfully received,
      understood, and accepted }
  LWS_HTTP_REASON_PHRASE_OK = 'OK';
  LWS_HTTP_REASON_PHRASE_CREATED = 'Created';
  LWS_HTTP_REASON_PHRASE_ACCEPTED = 'Accepted';
  LWS_HTTP_REASON_PHRASE_NON_AUTHORITATIVE_INFORMATION = 'Non-Authoritative Information';
  LWS_HTTP_REASON_PHRASE_NO_CONTENT = 'No Content';
  LWS_HTTP_REASON_PHRASE_RESET_CONTENT = 'Reset Content';
  LWS_HTTP_REASON_PHRASE_PARTIAL_CONTENT = 'Partial Content';
  { - 3xx: Redirection - Further action must be taken in order to
      complete the request }
  LWS_HTTP_REASON_PHRASE_MULTIPLE_CHOICES = 'Multiple Choices';
  LWS_HTTP_REASON_PHRASE_MOVED_PERMANENTLY = 'Moved Permanently';
  LWS_HTTP_REASON_PHRASE_FOUND = 'Found';
  LWS_HTTP_REASON_PHRASE_SEE_OTHER = 'See Other';
  LWS_HTTP_REASON_PHRASE_NOT_MODIFIED = 'Not Modified';
  LWS_HTTP_REASON_PHRASE_USE_PROXY = 'Use Proxy';
  // 10.3.7 306 (Unused)
  // The 306 status code was used in a previous version of the specification,
  // is no longer used, and the code is reserved.
  LWS_HTTP_REASON_PHRASE_TEMPORARY_REDIRECT = 'Temporary Redirect';
  { - 4xx: Client Error - The request contains bad syntax or cannot
      be fulfilled }
  LWS_HTTP_REASON_PHRASE_BAD_REQUEST = 'Bad Request';
  LWS_HTTP_REASON_PHRASE_UNAUTHORIZED = 'Unauthorized';
  LWS_HTTP_REASON_PHRASE_PAYMENT_REQUIRED = 'Payment Required';
  LWS_HTTP_REASON_PHRASE_FORBIDDEN = 'Forbidden';
  LWS_HTTP_REASON_PHRASE_NOT_FOUND = 'Not Found';
  LWS_HTTP_REASON_PHRASE_METHOD_NOT_ALLOWED = 'Method Not Allowed';
  LWS_HTTP_REASON_PHRASE_NOT_ACCEPTABLE = 'Not Acceptable';
  LWS_HTTP_REASON_PHRASE_PROXY_AUTHENTICATION_REQUIRED = 'Proxy Authentication Required';
  LWS_HTTP_REASON_PHRASE_REQUEST_TIMEOUT = 'Request Timeout';
  LWS_HTTP_REASON_PHRASE_CONFLICT = 'Conflict';
  LWS_HTTP_REASON_PHRASE_GONE = 'Gone';
  LWS_HTTP_REASON_PHRASE_LENGTH_REQUIRED = 'Length Required';
  LWS_HTTP_REASON_PHRASE_PRECONDITION_FAILED = 'Precondition Failed';
  LWS_HTTP_REASON_PHRASE_REQUEST_ENTITY_TOO_LARGE = 'Request Entity Too Large';
  LWS_HTTP_REASON_PHRASE_REQUEST_URI_TOO_LONG = 'Request-URI Too Long';
  LWS_HTTP_REASON_PHRASE_UNSUPPORTED_MEDIA_TYPE = 'Unsupported Media Type';
  LWS_HTTP_REASON_PHRASE_REQUESTED_RANGE_NOT_SATISFIABLE = 'Requested Range Not Satisfiable';
  LWS_HTTP_REASON_PHRASE_EXPECTATION_FAILED = 'Expectation Failed';
  { - 5xx: Server Error - The server failed to fulfill an apparently
      valid request }
  LWS_HTTP_REASON_PHRASE_INTERNAL_SERVER_ERROR = 'Internal Server Error';
  LWS_HTTP_REASON_PHRASE_NOT_IMPLEMENTED = 'Not Implemented';
  LWS_HTTP_REASON_PHRASE_BAD_GATEWAY = 'Bad Gateway';
  LWS_HTTP_REASON_PHRASE_SERVICE_UNAVAILABLE = 'Service Unavailable';
  LWS_HTTP_REASON_PHRASE_GATEWAY_TIMEOUT = 'Gateway Timeout';
  LWS_HTTP_REASON_PHRASE_HTTP_VERSION_NOT_SUPPORTED = 'HTTP Version Not Supported';
  { All HTTP methods. }
  LWS_HTTP_REQUEST_METHOD_GET = 'GET';
  LWS_HTTP_REQUEST_METHOD_POST = 'POST';
  LWS_HTTP_REQUEST_METHOD_PUT = 'PUT';
  LWS_HTTP_REQUEST_METHOD_DELETE = 'DELETE';
  LWS_HTTP_REQUEST_METHOD_HEAD = 'HEAD';
  LWS_HTTP_REQUEST_METHOD_OPTIONS = 'OPTIONS';
  LWS_HTTP_REQUEST_METHOD_PROPFIND = 'PROPFIND';
  LWS_HTTP_REQUEST_METHOD_PROPPATCH = 'PROPPATCH';
  LWS_HTTP_REQUEST_METHOD_COPY = 'COPY';
  LWS_HTTP_REQUEST_METHOD_MOVE = 'MOVE';
  LWS_HTTP_REQUEST_METHOD_MKCOL = 'MKCOL';
  LWS_HTTP_REQUEST_METHOD_TRACE = 'TRACE';
  LWS_HTTP_REQUEST_METHOD_LOCK = 'LOCK';
  LWS_HTTP_REQUEST_METHOD_UNLOCK = 'UNLOCK';
  { Some header fields. }
  LWS_HTTP_HEADER_CACHE_CONTROL = 'Cache-Control: ';
  LWS_HTTP_HEADER_CONTENT_DESCRIPTION = 'Content-Description: ';
  LWS_HTTP_HEADER_CONTENT_DISPOSITION = 'Content-Disposition: ';
  LWS_HTTP_HEADER_CONTENT_ENCODING = 'Content-Encoding: ';
  LWS_HTTP_HEADER_CONTENT_LENGTH = 'Content-Length: ';
  LWS_HTTP_HEADER_CONTENT_TYPE = 'Content-Type: ';
  LWS_HTTP_HEADER_ETAG = 'ETag: ';
  LWS_HTTP_HEADER_EXPIRES = 'Expires: ';
  LWS_HTTP_HEADER_LAST_MODIFIED = 'Last-Modified: ';
  LWS_HTTP_HEADER_LOCATION = 'Location: ';
  LWS_HTTP_HEADER_SET_COOKIE = 'Set-Cookie: ';
  LWS_HTTP_HEADER_STATUS = 'Status: ';
  LWS_HTTP_HEADER_TRANSFER_ENCODING = 'Transfer-Encoding: ';
  LWS_HTTP_HEADER_X_POWERED_BY = 'X-Powered-By: ';
  { Some content-types. }
  LWS_HTTP_CONTENT_TYPE_TEXT_PLAIN = 'text/plain';
  LWS_HTTP_CONTENT_TYPE_TEXT_HTML = 'text/html';
  LWS_HTTP_CONTENT_TYPE_TEXT_CSS = 'text/css';
  LWS_HTTP_CONTENT_TYPE_TEXT_XML = 'text/xml';
  LWS_HTTP_CONTENT_TYPE_TEXT_RICHTEXT = 'text/richtext';
  LWS_HTTP_CONTENT_TYPE_TEXT_RTF = 'text/rtf';
  LWS_HTTP_CONTENT_TYPE_MULTIPART_FORM_DATA = 'multipart/form-data';
  LWS_HTTP_CONTENT_TYPE_APP_JSON = 'application/json';
  LWS_HTTP_CONTENT_TYPE_APP_XML = 'application/xml';
  LWS_HTTP_CONTENT_TYPE_APP_RDF_XML = 'application/rdf+xml';
  LWS_HTTP_CONTENT_TYPE_APP_X_WWW_FORM_URLENCODED = 'application/x-www-form-urlencoded';
  LWS_HTTP_CONTENT_TYPE_APP_JAVASCRIPT = 'application/javascript';
  LWS_HTTP_CONTENT_TYPE_APP_OCTET_STREAM = 'application/octet-stream';
  LWS_HTTP_CONTENT_TYPE_APP_PDF = 'application/pdf';
  LWS_HTTP_CONTENT_TYPE_APP_ZIP = 'application/zip';
  LWS_HTTP_CONTENT_TYPE_APP_MSWORD = 'application/msword';
  LWS_HTTP_CONTENT_TYPE_APP_MS_EXCEL = 'application/vnd.ms-excel';
  LWS_HTTP_CONTENT_TYPE_APP_MS_POWERPOINT = 'application/vnd.ms-powerpoint';
  LWS_HTTP_CONTENT_TYPE_APP_MP4 = 'application/mp4';
  LWS_HTTP_CONTENT_TYPE_APP_MPEG4_GENERIC = 'application/mpeg4-generic';
  LWS_HTTP_CONTENT_TYPE_IMAGE_PNG = 'image/png';
  LWS_HTTP_CONTENT_TYPE_IMAGE_JPEG = 'image/jpeg';
  LWS_HTTP_CONTENT_TYPE_IMAGE_GIF = 'image/gif';
  LWS_HTTP_CONTENT_TYPE_IMAGE_TIFF = 'image/tiff';
  LWS_HTTP_CONTENT_TYPE_AUDIO_MPEG = 'audio/mpeg';
  LWS_HTTP_CONTENT_TYPE_VIDEO_MPEG = 'video/mpeg';
  LWS_HTTP_CONTENT_TYPE_VIDEO_QUICKTIME = 'video/quicktime';
  { Cache-Control directives. }
  LWS_HTTP_CACHE_CONTROL_NO_CACHE = 'no-cache';
  LWS_HTTP_CACHE_CONTROL_NO_STORE = 'no-store';
  LWS_HTTP_CACHE_CONTROL_MAX_AGE = 'max-age=';
  LWS_HTTP_CACHE_CONTROL_MAX_STALE = 'max-stale';
  LWS_HTTP_CACHE_CONTROL_MIN_FRESH = 'min-fresh';
  LWS_HTTP_CACHE_CONTROL_NO_TRANSFORM = 'no-transform';
  LWS_HTTP_CACHE_CONTROL_ONLY_IF_CACHED = 'only-if-cached';
  LWS_HTTP_CACHE_CONTROL_CACHE_EXTENSION = 'cache-extension';
  LWS_HTTP_CACHE_CONTROL_PUBLIC = 'public';
  LWS_HTTP_CACHE_CONTROL_PRIVATE = 'private';
  LWS_HTTP_CACHE_CONTROL_MUST_REVALIDATE = 'must-revalidate';
  LWS_HTTP_CACHE_CONTROL_PROXY_REVALIDATE = 'proxy-revalidate';
  LWS_HTTP_CACHE_CONTROL_S_MAXAGE = 's-maxage=';
  { Disposition types. }
  LWS_HTTP_CONTENT_DISPOSITION_INLINE = 'inline';
  LWS_HTTP_CONTENT_DISPOSITION_ATTACHMENT = 'attachment';
  { Content encoding }
  LWS_HTTP_CONTENT_ENCODING_DEFLATE = 'deflate';
  LWS_HTTP_CONTENT_ENCODING_GZIP = 'gzip';
  LWS_HTTP_CONTENT_ENCODING_SDCH = 'sdch';
  LWS_HTTP_CONTENT_ENCODING_X_GZIP = 'x-gzip';
  { Transfer encoding. }
  LWS_HTTP_TRANSFER_ENCODING_CHUNKED = 'chunked';
  { Some charsets. }
  LWS_HTTP_CHARSET_ISO_8859_1 = 'ISO-8859-1';
  LWS_HTTP_CHARSET_UTF_8 = 'UTF-8';

implementation

end.

