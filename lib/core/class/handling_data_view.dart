
import 'package:flutter/cupertino.dart';
import 'package:food_delivery/core/class/status_request.dart';
import 'package:food_delivery/core/constant/image_assets.dart';
import 'package:lottie/lottie.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView({super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading ?  Center(child: Lottie.asset(AppImageAsset.loading)) :
    statusRequest == StatusRequest.offlineFailure ? const Center(child: Text('off failure',)) :
    statusRequest == StatusRequest.failure ? const Center(child: Text('No data',)) :
    statusRequest == StatusRequest.serverFailure ? const Center(child: Text('server failue',)) : widget ;
  }
}
