class InfoModel {
  final int id;
  String description;

  InfoModel({required this.id, required this.description});

  @override
  String toString() {
    return 'ID: $id, description: $description';
  }
}
