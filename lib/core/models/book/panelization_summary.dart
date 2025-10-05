class PanelizationSummary {
  bool? containsEpubBubbles;
  bool? containsImageBubbles;

  PanelizationSummary({this.containsEpubBubbles, this.containsImageBubbles});

  factory PanelizationSummary.fromJson(Map<String, dynamic> data) {
    return PanelizationSummary(
      containsEpubBubbles: data['containsEpubBubbles'] as bool?,
      containsImageBubbles: data['containsImageBubbles'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'containsEpubBubbles': containsEpubBubbles,
      'containsImageBubbles': containsImageBubbles,
    };
  }
}
