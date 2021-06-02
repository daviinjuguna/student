import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:student/core/errors/exeptions.dart';

@lazySingleton
class HandleNetworkCall {
  bool checkStatusCode(int responseStatus) {
    if (responseStatus == 200) {
      return true;
    } else if (responseStatus == 401) {
      throw UnAuthenticatedException();
    } else if (responseStatus == 500) {
      throw ServerException();
    } else if (responseStatus == 503) {
      throw ServerMaintainException();
    } else if (responseStatus == 504) {
      throw SocketException("timeout");
    } else if (responseStatus == 403) {
      throw ForbiddenExeption();
    } else if (responseStatus == 404) {
      throw NotFoundExeption();
    } else {
      return false;
    }
  }
}
