class MaintenanceModel {
  String complainttype;
  String RoomNo;
  String description;
  String image;
  String? id;
  String uid;
  String maintainestatus;

  MaintenanceModel({
    required this.complainttype,
    required this.RoomNo,
    required this.description,
    required this.image,
    this.id,
    required this.uid,
    required this.maintainestatus,
  });

  Map<String, dynamic> tojason(idd) => {
        'Activity_type': complainttype,
        'RoomNo': RoomNo,
        'description': description,
        'image': image,
        'id': idd,
        'uid': uid,
        'maintainestatus': maintainestatus,
      };

  factory MaintenanceModel.fromjson(Map<String, dynamic> json) {
    return MaintenanceModel(
      complainttype: json['Activity_type'],
      RoomNo: json['RoomNo'],
      description: json['description'],
      image: json['image'],
      id: json['id'],
      uid: json['uid'],
      maintainestatus: json['maintainestatus'],
    );
  }
}
