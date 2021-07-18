import 'dart:io';

import 'package:flutter/material.dart';
import 'package:student/core/errors/exeptions.dart';

const Color kYellowColor = Color(0xffffdf00);
const Color kBlackColor = Color(0xff323a40);
const Color kGreyColor = Color(0xff6e7377);

const kPrimarySwatch = MaterialColor(0xffffdf00, {
  50: const Color(0x0dffdf00),
  100: const Color(0x1affdf00),
  200: const Color(0x33ffdf00),
  300: const Color(0x4dffdf00),
  400: const Color(0x66ffdf00),
  500: const Color(0x80ffdf00),
  600: const Color(0x99ffdf00),
  700: const Color(0xb3ffdf00),
  800: const Color(0xccffdf00),
  900: const Color(0xe6ffdf00),
});

// const BASE_URL = "eshule.herokuapp.com";
const BASE_URL = "f7f8a7e6db6d.ngrok.io";
const FILE_URL = "https://$BASE_URL/";

const ACCESS_TOKEN = "ACCESS_TOKEN";

const CHARGING = "Charging";
const CHARGED = "Fully Charged";
const DISCHARGING = "Charger Disconnected";

//*validators
const emailRegex =
    r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
const passRegex = r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$';
const nameRegex = r"^[a-zA-Z]{2,30}$";

const SERVER_FAILURE_MESSAGE = "Server error please try again";
const NETWORK_FAILURE_MESSAGE = "Please activate your internet";
const SOCKET_FAILURE_MESSAGE = "Seems you internet connection ran out";
const CACHE_FAILURE_MESSAGE = "Could not access records";
const INPUT_FAILURE_MESSAGE = "Input Failure";
const SELECT_FROM_PHONE_FAILURE_MESSAGE = "Something went wrong with the file";
const SELECT_FROM_GALLERY_FAILURE_MESSAGE = "Couldnt pick image from gallery";
const SELECT_FAIL_FAILURE_MESSAGE = "You did not pick an file";
const PERMISSION_FAILURE_MESSAGE =
    "Please enable locations for app in settings";
const PERMISSION_NEVER_ASKED_FAILURE_MESSAGE =
    "Please for location never asked";
const ACCOUNT_FAILURE_MESSAGE = "Could not create an account";
const UNAUTHENTICATED_FAILURE_MESSAGE =
    "You are unauthenticated, you will be logged out";
const SERVER_MAINTAINCE_FAILURE_MESSAGE = "Service maintenance failed";
const LANGUAGE_FAILURE_MESSAGE = "Could not fetch locale";
const FORBIDDEN_MESSAGE = "Access to the requested resource is forbidden";
const NOT_FOUND_MESSAGE = "Method not found";

const CACHE_AUTH_TOKEN = "CACHE_AUTH_TOKEN";
const CACHE_DASH_BOARD_DATA = "CACHE_DASH_BOARD_DATA";
const CHECK_SAVED_USER = "CHECK_SAVED_USER";
const AUTH_USER = 'AUTH_USER';
const SELECT_FROM_CAMERA_FAILURE_MESSAGE =
    "Something went wrong with the camera";

const SELECT_IMAGE_FAILURE_MESSAGE = "You did not pick an image";

//exeption checketer
String returnFailure(final exception) {
  if (exception is ServerException) {
    return SERVER_FAILURE_MESSAGE;
  } else if (exception is CacheException) {
    return CACHE_FAILURE_MESSAGE;
  } else if (exception is UnAuthenticatedException) {
    return UNAUTHENTICATED_FAILURE_MESSAGE;
  } else if (exception is SelectFileException) {
    return SELECT_FAIL_FAILURE_MESSAGE;
  } else if (exception is SelectFileFromPhoneExeption) {
    return SELECT_FROM_PHONE_FAILURE_MESSAGE;
  } else if (exception is SelectImageFromGalleryException) {
    return SELECT_FROM_GALLERY_FAILURE_MESSAGE;
  } else if (exception is AccountCreationException) {
    return ACCOUNT_FAILURE_MESSAGE;
  } else if (exception is PermissionException) {
    return PERMISSION_FAILURE_MESSAGE;
  } else if (exception is PermissionNeverAskedException) {
    return PERMISSION_NEVER_ASKED_FAILURE_MESSAGE;
  } else if (exception is NetworkInfoException) {
    return NETWORK_FAILURE_MESSAGE;
  } else if (exception is ServerMaintainException) {
    return SERVER_MAINTAINCE_FAILURE_MESSAGE;
  } else if (exception is SocketException) {
    return SOCKET_FAILURE_MESSAGE;
  } else if (exception is LanguageExeption) {
    return LANGUAGE_FAILURE_MESSAGE;
  } else if (exception is NotFoundExeption) {
    return NOT_FOUND_MESSAGE;
  } else if (exception is SelectImageException) {
    return SELECT_IMAGE_FAILURE_MESSAGE;
  } else if (exception is SelectImageFromCameraException) {
    return SELECT_FROM_CAMERA_FAILURE_MESSAGE;
  } else if (exception is SelectImageFromGalleryException) {
    return SELECT_FROM_GALLERY_FAILURE_MESSAGE;
  } else {
    return SERVER_FAILURE_MESSAGE;
  }
}
