import 'package:explocive_detection/ui/extensions.dart';
import 'package:explocive_detection/ui/screens/report_list/bloc/bloc.dart';
import 'package:explocive_detection/ui/screens/report_list/bloc/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReportListScreen extends StatelessWidget {
  const ReportListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReportListBloc, ReportListState>(
      bloc: context.read<ReportListBloc>(),
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: Text('Заявки'),
        ),
        body: ListView.builder(
          key: ValueKey(state.items.length),
          itemBuilder: (context, index) => Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Заявка #" + state.items[index].id,
                          style: context.textTheme.bodyLarge,
                        ),
                        Text(state.items[index].comment),
                        Text(state.items[index].desc),
                      ],
                    ),
                  ),
                  Text(
                    state.items[index].date,
                  ),
                ],
              ),
            ),
          ),
          itemCount: state.items.length,
        ),
      ),
    );
  }
}
