import 'package:explocive_detection/ui/domain/model/report.dart';

class ReportListState {
  final List<ReportEntity> items;

  ReportListState({this.items = const []});

  ReportListState copyWith({
    List<ReportEntity>? items,
  }) {
    return ReportListState(
      items: items ?? this.items,
    );
  }
}
