import 'package:opendoor_flutter/interfaces/doors/get_list_of_doors.dart';
import 'package:opendoor_flutter/interfaces/doors/open_door.dart';
import 'package:opendoor_flutter/interfaces/doors/verify_door_status.dart';
import 'package:opendoor_flutter/interfaces/users/get_current_user.dart';

interface class ServiceFactory {
  GetCurrentUserService createGetCurrentUserService() {
    // TODO: implement createGetCurrentUserService
    throw UnimplementedError();
  }

  GetListOfDoorsService createGetListOfDoorsService() {
    // TODO: implement createGetCurrentUserService
    throw UnimplementedError();
  }

  OpenDoorService createOpenDoorService() {
    // TODO: implement createGetCurrentUserService
    throw UnimplementedError();
  }

  VerifyDoorStatusService createVerifyDoorStatusService() {
    // TODO: implement createGetCurrentUserService
    throw UnimplementedError();
  }
}
