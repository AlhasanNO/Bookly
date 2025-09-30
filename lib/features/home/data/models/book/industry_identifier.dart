import 'dart:convert';

class IndustryIdentifier {
  String? type;
  String? identifier;

  IndustryIdentifier({this.type, this.identifier});

  factory IndustryIdentifier.from(Map<String, dynamic> data) {
    return IndustryIdentifier(
      type: data['type'] as String?,
      identifier: data['identifier'] as String?,
    );
  }

  Map<String, dynamic> to() {
    return {'type': type, 'identifier': identifier};
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [IndustryIdentifier].
  factory IndustryIdentifier.fromJson(String data) {
    return IndustryIdentifier.from(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [IndustryIdentifier] to a JSON string.
  String toJson() => json.encode(to());
}
