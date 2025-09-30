import 'dart:convert';

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

  factory Book.from(Map<String, dynamic> data) {
    return Book(
      kind: data['kind'] as String?,
      id: data['id'] as String?,
      etag: data['etag'] as String?,
      selfLink: data['selfLink'] as String?,
      volumeInfo: data['volumeInfo'] == null
          ? null
          : VolumeInfo.from(data['volumeInfo'] as Map<String, dynamic>),
      saleInfo: data['saleInfo'] == null
          ? null
          : SaleInfo.from(data['saleInfo'] as Map<String, dynamic>),
      accessInfo: data['accessInfo'] == null
          ? null
          : AccessInfo.from(data['accessInfo'] as Map<String, dynamic>),
      searchInfo: data['searchInfo'] == null
          ? null
          : SearchInfo.from(data['searchInfo'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> to() {
    return {
      'kind': kind,
      'id': id,
      'etag': etag,
      'selfLink': selfLink,
      'volumeInfo': volumeInfo?.to(),
      'saleInfo': saleInfo?.to(),
      'accessInfo': accessInfo?.to(),
      'searchInfo': searchInfo?.to(),
    };
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Book].
  factory Book.fromJson(String data) {
    return Book.from(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Book] to a JSON string.
  String toJson() => json.encode(to());
}
