const baseUrl = 'http://34.123.174.36';

const requestTimeOut = Duration(seconds: 15);
const connectTimeOut = Duration(seconds: 30);

// Dio Errors
const String success = 'success';
const String strBadRequestError = 'bad_request_error';
const String strNoContent = 'no_content';
const String strForbiddenError = 'forbidden_error';
const String strUnauthorizedError = 'unauthorized_error';
const String strNotFoundError = 'not_found_error';
const String strConflictError = 'conflict_error';
const String strInternalServerError = 'internal_server_error';
const String strUnknownError = 'unknown_error';
const String strTimeoutError = 'timeout_error';
const String strDefaultError = 'default_error';
const String strCacheError = 'cache_error';
const String strNoInternetError = 'no_internet_error';

// Firebase Errors
const String strInvalidEmail = 'invalid_email';
const String strWrongPassword = 'wrong_password';
const String strUserNotFound = 'user_not_found';
const String strUserDisabled = 'user_disabled';
const String strTooManyRequests = 'too_many_requests';
const String strOperationNotAllowed = 'operation_not_allowed';
const String strEmailAlreadyExists = 'email_already_exists';
const String strUnknownFirebaseError = 'unknown_firebase_error';
