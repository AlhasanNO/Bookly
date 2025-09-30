class IndustryIdentifier {
  String? type;
  String? identifier;

  IndustryIdentifier({this.type, this.identifier});

  factory IndustryIdentifier.fromJson(Map<String, dynamic> data) {
    return IndustryIdentifier(
      type: data['type'] as String?,
      identifier: data['identifier'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'type': type, 'identifier': identifier};
  }
}
