import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:explocive_detection/ui/domain/model/report.dart';
import 'package:explocive_detection/ui/router/nav_router.dart';
import 'package:explocive_detection/ui/screens/report_list/bloc/event.dart';
import 'package:explocive_detection/ui/screens/report_list/bloc/state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReportListBloc extends Bloc<ReportListEvent, ReportListState> {
  final NavRouter _navRouter;
  ReportListBloc(this._navRouter) : super(ReportListState()) {
    on<InitDataEvent>(
      (event, emit) async {
        final reports = await (FirebaseFirestore.instance.collection('reports'))
            .where("usr_id", isEqualTo: FirebaseAuth.instance.currentUser!.uid)
            .get();

        final reportsEntity = reports.docs.map((e) => ReportEntity.fromJson(e.data())).toList();
        emit(state.copyWith(items: reportsEntity));
      },
    );
    eventInit();
  }

  void eventInit() => add(InitDataEvent());
}
