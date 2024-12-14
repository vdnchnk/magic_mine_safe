import 'package:explocive_detection/ui/extensions.dart';
import 'package:explocive_detection/ui/screens/report/bloc/bloc.dart';
import 'package:explocive_detection/ui/screens/report/bloc/event.dart';
import 'package:explocive_detection/ui/screens/report/bloc/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReportBloc, ReportState>(
      bloc: context.read<ReportBloc>(),
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: Text('Створити зявку'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: ElevatedButton(
          onPressed: () {
            context.read<ReportBloc>().add(SaveEvent());
          },
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Text('Надіслати заявку'),
          ),
        ),
        body: Column(
          children: [
            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Додайте фото обʼєкту'),
                      if (state.image == null)
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                context.read<ReportBloc>().eventAddPhoto();
                              },
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text('+ Додати фото'),
                              ),
                            ),
                            if (state.isImageProcessing) CircularProgressIndicator()
                          ],
                        ),
                      if (state.image != null)
                        Image.file(
                          state.image!,
                          width: 150,
                          height: 150,
                        ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Надайте опис обʼєкту'),
                      TextField(
                        onChanged: (value) {
                          context.read<ReportBloc>().add(ChangeCommentEvent(value));
                        },
                        decoration: InputDecoration(
                          hintText: 'Коротко опишіть що ви бачили, чули',
                          hintStyle: context.textTheme.bodyMedium!
                              .copyWith(color: context.colorScheme.onSurface.withOpacity(0.8)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Надайте свою геолокацію'),
                      if (state.location == null)
                        ElevatedButton(
                          onPressed: () {
                            context.read<ReportBloc>().add(LocationEvent());
                          },
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text('Надати геолокацію'),
                          ),
                        )
                      else
                        Text("${state.location!.longitude} ${state.location!.latitude}")
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Додайте коментар (не обовʼязково)'),
                      TextField(
                        onChanged: (value) {
                          context.read<ReportBloc>().add(ChangeDescEvent(value));
                        },
                        decoration: InputDecoration(
                          hintText: 'Як простіше дібратись, які є орієентири',
                          hintStyle: context.textTheme.bodyMedium!
                              .copyWith(color: context.colorScheme.onSurface.withOpacity(0.8)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
