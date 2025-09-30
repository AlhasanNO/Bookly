import 'dart:convert';

class SearchInfo {
  String? textSnippet;

  SearchInfo({this.textSnippet});

  factory SearchInfo.from(Map<String, dynamic> data) {
    return SearchInfo(textSnippet: data['textSnippet'] as String?);
  }

  Map<String, dynamic> to() {
    return {'textSnippet': textSnippet};
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SearchInfo].
  factory SearchInfo.fromJson(String data) {
    return SearchInfo.from(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [SearchInfo] to a JSON string.
  String toJson() => json.encode(to());
}
