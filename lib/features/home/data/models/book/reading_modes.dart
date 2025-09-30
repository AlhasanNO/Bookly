import 'dart:convert';

class ReadingModes {
  bool? text;
  bool? image;

  ReadingModes({this.text, this.image});

  factory ReadingModes.from(Map<String, dynamic> data) {
    return ReadingModes(
      text: data['text'] as bool?,
      image: data['image'] as bool?,
    );
  }

  Map<String, dynamic> to() {
    return {'text': text, 'image': image};
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ReadingModes].
  factory ReadingModes.fromJson(String data) {
    return ReadingModes.from(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ReadingModes] to a JSON string.
  String toJson() => json.encode(to());
}
