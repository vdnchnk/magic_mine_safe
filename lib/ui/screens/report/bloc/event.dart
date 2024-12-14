class ReportEvent {}

class PickImageEvent extends ReportEvent {}

class LocationEvent extends ReportEvent {}

class ChangeCommentEvent extends ReportEvent {
  final String value;
  ChangeCommentEvent(this.value);
}

class ChangeDescEvent extends ReportEvent {
  final String value;
  ChangeDescEvent(this.value);
}

class SaveEvent extends ReportEvent {}
