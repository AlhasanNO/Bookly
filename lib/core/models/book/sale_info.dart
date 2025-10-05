class SaleInfo {
  String? country;
  String? saleability;
  bool? isEbook;

  SaleInfo({this.country, this.saleability, this.isEbook});

  factory SaleInfo.fromJson(Map<String, dynamic> data) {
    return SaleInfo(
      country: data['country'] as String?,
      saleability: data['saleability'] as String?,
      isEbook: data['isEbook'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'country': country, 'saleability': saleability, 'isEbook': isEbook};
  }
}
