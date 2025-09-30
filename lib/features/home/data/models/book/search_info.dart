class SearchInfo {
  String? textSnippet;

  SearchInfo({this.textSnippet});

  factory SearchInfo.fromJson(Map<String, dynamic> data) {
    return SearchInfo(textSnippet: data['textSnippet'] as String?);
  }

  Map<String, dynamic> toJson() {
    return {'textSnippet': textSnippet};
  }
}
