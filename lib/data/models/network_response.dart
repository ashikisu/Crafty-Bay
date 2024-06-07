class NetworkResponse{
  final int? responseCode;
  String? errorMessage;
  final dynamic responseData;
  final bool isSuccess;

  NetworkResponse({
    required this.responseCode,
    required this.isSuccess,
    this.errorMessage="Something is wrong",
    this.responseData,
    });


}