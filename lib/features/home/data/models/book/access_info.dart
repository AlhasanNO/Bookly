import 'epub.dart';
import 'pdf.dart';

class AccessInfo {
  String? country;
  String? viewability;
  bool? embeddable;
  bool? publicDomain;
  String? textToSpeechPermission;
  Epub? epub;
  Pdf? pdf;
  String? webReaderLink;
  String? accessViewStatus;
  bool? quoteSharingAllowed;

  AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> data) {
    return AccessInfo(
      country: data['country'] as String?,
      viewability: data['viewability'] as String?,
      embeddable: data['embeddable'] as bool?,
      publicDomain: data['publicDomain'] as bool?,
      textToSpeechPermission: data['textToSpeechPermission'] as String?,
      epub: data['epub'] == null
          ? null
          : Epub.fromJson(data['epub'] as Map<String, dynamic>),
      pdf: data['pdf'] == null
          ? null
          : Pdf.fromJson(data['pdf'] as Map<String, dynamic>),
      webReaderLink: data['webReaderLink'] as String?,
      accessViewStatus: data['accessViewStatus'] as String?,
      quoteSharingAllowed: data['quoteSharingAllowed'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'country': country,
      'viewability': viewability,
      'embeddable': embeddable,
      'publicDomain': publicDomain,
      'textToSpeechPermission': textToSpeechPermission,
      'epub': epub?.toJson(),
      'pdf': pdf?.toJson(),
      'webReaderLink': webReaderLink,
      'accessViewStatus': accessViewStatus,
      'quoteSharingAllowed': quoteSharingAllowed,
    };
  }
}
