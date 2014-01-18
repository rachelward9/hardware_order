library main_view;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:polymer_expressions/filter.dart';
import '../../utils/filters.dart';
import '../../model/hardware_item.dart';

@CustomTag('main-view')
class MainView extends PolymerElement {

  // constants
  List<HardwareItem> hardwareList = [
    new HardwareItem("Bolts", 0, 5),
    new HardwareItem("Nuts", 0, 3),
    new HardwareItem("Washers", 0, 1)
  ];

  // strings
  static const String SAMPLE_STRING = "sample string";

  // filters and transformers can be referenced as class fields
  final Transformer asInteger = new StringToInt();

  // non-visual initialization can be done here
  MainView.created() : super.created();

  // other initialization can be done here
  @override void enteredView() {
    super.enteredView();
    print("MainView::enteredView()");
  }

  // a sample event handler function
  void eventHandler(Event event, var detail, Element target) {
    print("MainView::eventHandler()");
  }

  // prevent app reload on <form> submission
  void submit(Event event, var detail, Element target) {
    event.preventDefault();
  }

  // this lets the global CSS bleed through into the Shadow DOM of this element
  bool get applyAuthorStyles => true;
}

