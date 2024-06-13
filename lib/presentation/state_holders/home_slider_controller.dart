import 'package:crafty_bay/data/models/network_response.dart';
import 'package:crafty_bay/data/models/slide_list_model.dart';
import 'package:crafty_bay/data/models/slider_data.dart';
import 'package:crafty_bay/data/network_caller/network_caller.dart';
import 'package:get/get.dart';

import '../../data/utility/urls.dart';

class HomeSliderController extends GetxController {
  bool _inProgress = false;
  String _errorMessage = '';
  List<SliderData> _sliderDataList = [];

  bool get inProgress => _inProgress;

  List<SliderData> get sliderDataList => _sliderDataList;

  String get errorMessage => _errorMessage;

  Future<bool> getSliders() async {
    bool isSuccess = false;
    _inProgress = true;
    update();
    final NetworkResponse response =
        await NetworkCaller.getRequest(url: Urls.homeSlider);
    if (response.isSuccess) {
      _sliderDataList =
          SliiderListModel.fromJson(response.responseData).sliderDataList ?? [];
    } else {
      response.errorMessage;
    }
    _inProgress = false;
    update();
    return isSuccess;
  }
}
