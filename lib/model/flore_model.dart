class Floremodel {
  String floreno;
  String Flore;
  String id;

  Floremodel({
    required this.floreno,
    required this.Flore,
    required this.id,
  });

  Map<String, dynamic> toJsone() => {
        'Floreno': floreno,
        'Flore': Flore,
        'id': id,
      };

  factory Floremodel.fromjason(Map<String, dynamic> jsone) {
    return Floremodel(
      floreno: jsone['Floreno'],
      Flore: jsone['Flore'],
      id: jsone['id'],
    );
  }
}
