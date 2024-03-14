
import 'package:food_delivery/core/class/crud.dart';
import 'package:food_delivery/core/constant/linkapi.dart';

class SignUpData {

  Crud crud;
  SignUpData(this.crud);

  postData(
      String email, String password,
      ) async
  {
    var response = await crud.postData(AppLink.signup, {
      'email' : email,
      'password' : password,
    });
    return response.fold((l) => l, (r) => r);
  }
}