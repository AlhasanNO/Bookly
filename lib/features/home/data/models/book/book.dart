import 'access_info.dart';
import 'sale_info.dart';
import 'search_info.dart';
import 'volume_info.dart';

class Book {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  Book({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });

  factory Book.fromJson(Map<String, dynamic> data) {
    return Book(
      kind: data['kind'] as String?,
      id: data['id'] as String?,
      etag: data['etag'] as String?,
      selfLink: data['selfLink'] as String?,
      volumeInfo: data['volumeInfo'] == null
          ? null
          : VolumeInfo.fromJson(data['volumeInfo'] as Map<String, dynamic>),
      saleInfo: data['saleInfo'] == null
          ? null
          : SaleInfo.fromJson(data['saleInfo'] as Map<String, dynamic>),
      accessInfo: data['accessInfo'] == null
          ? null
          : AccessInfo.fromJson(data['accessInfo'] as Map<String, dynamic>),
      searchInfo: data['searchInfo'] == null
          ? null
          : SearchInfo.fromJson(data['searchInfo'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'kind': kind,
      'id': id,
      'etag': etag,
      'selfLink': selfLink,
      'volumeInfo': volumeInfo?.toJson(),
      'saleInfo': saleInfo?.toJson(),
      'accessInfo': accessInfo?.toJson(),
      'searchInfo': searchInfo?.toJson(),
    };
  }
}
