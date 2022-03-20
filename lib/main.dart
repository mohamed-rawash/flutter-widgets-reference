import 'package:flutter/material.dart';
import 'package:widgets_reference/page_view_widget.dart';
import 'package:widgets_reference/radio_button.dart';
import 'package:widgets_reference/shadow_demo.dart';
import 'package:widgets_reference/tap_bar.dart';
import 'package:widgets_reference/toast.dart';


import 'animations/animated_container.dart';
import 'bottom_nav_bar.dart';
import 'buttons.dart';
import 'check.dart';
import 'color_picker.dart';
import 'date_picker.dart';
import 'dropdown_button_listtile.dart';
import 'expandable_list.dart';
import 'grid_tile.dart';
import 'grid_view.dart';
import 'grid_view_builder.dart';
import 'listview_builder_with_dismissible_childern.dart';
import 'model_bottom_sheet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExpandableListW(),
    );
  }
}