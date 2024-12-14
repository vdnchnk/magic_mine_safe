import 'dart:io';

import 'package:location/location.dart';

class ReportState {
  final bool isImageProcessing;
  final File? image;

  final String desc;
  final String comment;

  final LocationData? location;

  ReportState({
    this.isImageProcessing = false,
    this.image,
    this.comment = '',
    this.desc = '',
    this.location,
  });

  ReportState copyWith({
    bool? isImageProcessing,
    File? image,
    String? desc,
    String? comment,
    LocationData? location,
  }) {
    return ReportState(
      isImageProcessing: isImageProcessing ?? this.isImageProcessing,
      image: image ?? this.image,
      desc: desc ?? this.desc,
      comment: comment ?? this.comment,
      location: location ?? this.location,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ReportState &&
        other.isImageProcessing == isImageProcessing &&
        other.image == image &&
        other.desc == desc &&
        other.comment == comment &&
        other.location == location;
  }

  @override
  int get hashCode {
    return isImageProcessing.hashCode ^
        image.hashCode ^
        desc.hashCode ^
        comment.hashCode ^
        location.hashCode;
  }
}
