import 'package:flutter/material.dart';
import 'package:widget_tree_airbnb/ui/utils/mock_data.dart';
import 'package:widget_tree_airbnb/ui/widgets/section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.cloud),
        title: Text("Mi ARBNB"),
        actions: [Icon(Icons.menu)],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: ListView.builder(
          itemCount: MockData.sections.length,
          itemBuilder: (context, index) {
            return Section(
              alojamientos: MockData.sections[index].accomations,
              title: MockData.sections[index].title,
            );
          },
        ),
      ),
    );
  }
}
