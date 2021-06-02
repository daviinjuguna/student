import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

abstract class ConnectivityChecker {
  Future<bool> checkStatus(ConnectivityResult result);
}

@LazySingleton(as: ConnectivityChecker)
class ConnectivityCheckerImp implements ConnectivityChecker {
  @override
  Future<bool> checkStatus(ConnectivityResult result) async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      } else
        return false;
    } on SocketException catch (e) {
      print(e.toString());
      return false;
    }
  }
}
