import 'dart:convert';

class Pdf {
  bool? isAvailable;
  String? acsTokenLink;

  Pdf({this.isAvailable, this.acsTokenLink});

  factory Pdf.from(Map<String, dynamic> data) {
    return Pdf(
      isAvailable: data['isAvailable'] as bool?,
      acsTokenLink: data['acsTokenLink'] as String?,
    );
  }

  Map<String, dynamic> to() {
    return {'isAvailable': isAvailable, 'acsTokenLink': acsTokenLink};
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Pdf].
  factory Pdf.fromJson(String data) {
    return Pdf.from(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Pdf] to a JSON string.
  String toJson() => json.encode(to());
}
