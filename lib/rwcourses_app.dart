import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rwcourses/strings.dart';
import 'package:rwcourses/ui/courses/courses_page.dart';
import 'package:rwcourses/ui/filter/filter_page.dart';

class RWCoursesApp extends StatelessWidget {
  const RWCoursesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.appTitle),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).push<MaterialPageRoute>(
                MaterialPageRoute(builder: (_) => const FilterPage())),
            icon: const Icon(Icons.filter_list),
          )
        ],
      ),
      body: const CoursesPage(),
    );
  }
}
