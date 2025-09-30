import 'dart:convert';

class ImageLinks {
  String? smallThumbnail;
  String? thumbnail;

  ImageLinks({this.smallThumbnail, this.thumbnail});

  factory ImageLinks.from(Map<String, dynamic> data) {
    return ImageLinks(
      smallThumbnail: data['smallThumbnail'] as String?,
      thumbnail: data['thumbnail'] as String?,
    );
  }

  Map<String, dynamic> to() {
    return {'smallThumbnail': smallThumbnail, 'thumbnail': thumbnail};
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ImageLinks].
  factory ImageLinks.fromJson(String data) {
    return ImageLinks.from(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ImageLinks] to a JSON string.
  String toJson() => json.encode(to());
}
