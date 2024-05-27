class MaintenanceModel {
  String complaint_type;
  String unit_no;
  String description;
  String image;

  int? id;

  MaintenanceModel({
    required this.complaint_type,
    required this.unit_no,
    required this.description,
    required this.image,
  });

  Map<String, dynamic> toJsone(id) => {
        'Activity_type': complaint_type,
        'unit_no': unit_no,
        'description': description,
        'image': image,
      };

  factory MaintenanceModel.fromJason(Map<String, dynamic> json) {
    return MaintenanceModel(
      complaint_type: json['Activity_type'],
      unit_no: json['unit_no'],
      description: json['description'],
      image: json['image'],
    );
  }
}
