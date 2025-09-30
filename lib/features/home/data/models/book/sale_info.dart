import 'dart:convert';

class SaleInfo {
  String? country;
  String? saleability;
  bool? isEbook;

  SaleInfo({this.country, this.saleability, this.isEbook});

  factory SaleInfo.from(Map<String, dynamic> data) {
    return SaleInfo(
      country: data['country'] as String?,
      saleability: data['saleability'] as String?,
      isEbook: data['isEbook'] as bool?,
    );
  }

  Map<String, dynamic> to() {
    return {'country': country, 'saleability': saleability, 'isEbook': isEbook};
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SaleInfo].
  factory SaleInfo.fromJson(String data) {
    return SaleInfo.from(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [SaleInfo] to a JSON string.
  String toJson() => json.encode(to());
}
