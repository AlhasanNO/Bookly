class Epub {
  bool? isAvailable;

  Epub({this.isAvailable});

  factory Epub.fromJson(Map<String, dynamic> data) {
    return Epub(isAvailable: data['isAvailable'] as bool?);
  }

  Map<String, dynamic> toJson() {
    return {'isAvailable': isAvailable};
  }
}
