import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:explocive_detection/ui/router/nav_keys.dart';
import 'package:explocive_detection/ui/router/nav_router.dart';
import 'package:explocive_detection/ui/screens/report/bloc/event.dart';
import 'package:explocive_detection/ui/screens/report/bloc/state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:location/location.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReportBloc extends Bloc<ReportEvent, ReportState> {
  final NavRouter _navRouter;
  ReportBloc(this._navRouter) : super(ReportState()) {
    on<PickImageEvent>(
      (event, emit) async {
        emit(state.copyWith(isImageProcessing: true));
        final image = await ImagePicker().pickImage(source: ImageSource.gallery);
        final filePath = image!.path;

        final file = File(filePath);

        await Future.delayed(Duration(seconds: 3));

        emit(state.copyWith(
          isImageProcessing: false,
          image: file,
        ));
      },
    );
    on<ChangeCommentEvent>((event, emit) async {
      emit(state.copyWith(
        comment: event.value,
      ));
    });

    on<ChangeDescEvent>((event, emit) async {
      emit(state.copyWith(
        desc: event.value,
      ));
    });

    on<LocationEvent>(
      (event, emit) async {
        final permis = await Location().requestService();

        //final location = await Location().getLocation();
        emit(state.copyWith(
          location: LocationData.fromMap({
            'latitude': 51.023422,
            'longitude': 33.02342,
          }),
        ));
      },
    );

    on<SaveEvent>((event, emit) async {
      List<int> imageBytes = state.image!.readAsBytesSync();

      String base64Image = base64Encode(imageBytes);
      final report = <String, dynamic>{
        "id": state.hashCode,
        "image": base64Image,
        "long": '33.02342',
        "lat": '51.023422',
        "comment": state.comment,
        "desc": state.desc,
        "potentional": "land_mine",
        'date_time': Timestamp.now(),
        'usr_id': FirebaseAuth.instance.currentUser?.uid ?? '',
      };

      await FirebaseFirestore.instance.collection('reports').add(report);
      _navRouter.go(NavKeys.home);
    });
  }

  void eventAddPhoto() => add(PickImageEvent());

  Future<String> getModelPath(String asset) async {
    final path = '${(await getApplicationSupportDirectory()).path}/$asset';
    await Directory(dirname(path)).create(recursive: true);
    final file = File(path);
    if (!await file.exists()) {
      final byteData = await rootBundle.load(asset);
      await file.writeAsBytes(
          byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
    }
    return file.path;
  }
}
