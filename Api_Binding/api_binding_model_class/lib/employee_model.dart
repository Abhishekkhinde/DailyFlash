class EmpolyeeModel {
  String? status;
  String? message;
  List<Data>? data;

  EmpolyeeModel(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];

    data = [];
    if (json['data'] != null) {
      json['data'].forEach((mapobject) {
        Data obj = Data(mapobject);
        data!.add(obj);
      });
    }
  }
}

class Data {
  int? empid;
  String? empName;
  int? empAge;
  int? empSal;
  String? ProfileImage;

  Data(Map<String, dynamic> json) {
    empid = json['id'];
    empName = json['employee_name'];
    empAge = json['employee_age'];
    empSal = json['employee_salary'];
    ProfileImage = json['profile_image'];
  }
}
