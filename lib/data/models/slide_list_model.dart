import 'package:crafty_bay/data/models/slider_data.dart';

class SliiderListModel {
  String? msg;
  List<SliderData>? sliderDataList;

  SliiderListModel({this.msg, this.sliderDataList});

  SliiderListModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    if (json['data'] != null) {
      sliderDataList = <SliderData>[];
      json['data'].forEach((v) {
        sliderDataList!.add(SliderData.fromJson(v));
      });
    }
  }


}