

import 'package:food_delivery/core/class/status_request.dart';

handlingData (response) {
  if (response is StatusRequest) {
    return response;
  }else {
    return (StatusRequest.offlineFailure);
  }
}