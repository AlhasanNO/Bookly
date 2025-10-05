class ImageLinks {
  String? smallThumbnail;
  String? thumbnail;

  ImageLinks({this.smallThumbnail, this.thumbnail});

  factory ImageLinks.fromJson(Map<String, dynamic> data) {
    return ImageLinks(
      smallThumbnail: data['smallThumbnail'] as String?,
      thumbnail: data['thumbnail'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'smallThumbnail': smallThumbnail, 'thumbnail': thumbnail};
  }
}
