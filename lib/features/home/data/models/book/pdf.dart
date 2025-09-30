class Pdf {
  bool? isAvailable;
  String? acsTokenLink;

  Pdf({this.isAvailable, this.acsTokenLink});

  factory Pdf.fromJson(Map<String, dynamic> data) {
    return Pdf(
      isAvailable: data['isAvailable'] as bool?,
      acsTokenLink: data['acsTokenLink'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'isAvailable': isAvailable, 'acsTokenLink': acsTokenLink};
  }
}
