// import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../config/constans.dart';
import '../config/url.dart';
// import '../model/list_user_model.dart';
// import 'func_util.dart';
import 'func_util.dart';
import 'network_util.dart';

NetworkUtil _netUtil = NetworkUtil();

// Future createUser({params}) async {
//   final _hostUrl = _netUtil.hostUrl + Url.users;
//   var res = await _netUtil.postFunc(params.toString());
// }

String getToken() {
  var box = GetStorage();
  return box.read(kTokenData);
}

// Future loginService({params}) async {
//   Map<String, dynamic> res = {};
//   try {
//     final _hostUrl = _netUtil.hostUrl + Url.login;
//     res = await _netUtil.postFunc(_hostUrl, body: json.encode(params));
//     logKey(res);
//     var resModel = AuthSessionModel.fromJson(res);
//     return resModel;
//   } catch (e) {
//     var resModel = ErrorModel.fromJson(res);
//     throw {
//       Get.back(),
//       logKey("Error loginService", e.toString()),
//       showSnackbar(pesan: resModel.error.message),
//     };
//   }
// }

// Future getListUsers({params}) async {
//   Map<String, dynamic> res = {};
//   try {
//     final _hostUrl = _netUtil.hostUrl + Url.users;
//     res = await _netUtil.getFunc(_hostUrl);
//     logKey(_hostUrl);
//     var resModel = ListUserModel.fromJson(res);
//     logKey(res);
//     return resModel;
//   } catch (e) {
//     logKey(e.toString());
//     // var resModel = ErrorModel.fromJson(res);
//     // throw {
//     //   Get.back(),
//     //   logKey("Error getMemberDetail", e.toString()),
//     //   showSnackbar(pesan: resModel.error.message),
//     // };
//   }
// }
