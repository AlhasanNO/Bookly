class ReadingModes {
  bool? text;
  bool? image;

  ReadingModes({this.text, this.image});

  factory ReadingModes.fromJson(Map<String, dynamic> data) {
    return ReadingModes(
      text: data['text'] as bool?,
      image: data['image'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'text': text, 'image': image};
  }
}
