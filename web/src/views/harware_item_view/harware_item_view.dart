library main_view;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:polymer_expressions/filter.dart';
import '../../utils/filters.dart';
import '../../model/hardware_item.dart';

@CustomTag('hardware-item-view')
class HardwareItemView extends LIElement with Polymer, Observable {
  @published HardwareItemView hardwareItem;
  
  // we need this stuff because we're extending <li> instead of PolymerElement
  factory HardwareItemView() => new Element.tag('li', 'hardware-item-view');
  HardwareItemView.created() : super.created() {
    polymerCreated();
  }
  
  // filters and transformers can be referenced as class fields
  final Transformer asInteger = new StringToInt();
  
  void enteredView() {
    super.enteredView();
  }
  
  void clicked(Event event, var detail, Element target) {
    print("HardwareItemView::clicked()");
    
  }

  // this lets the global CSS (such as Bootstrap, perhaps) bleed through into the Shadow DOM of this element
  // take it out if this is not desireable
  bool get applyAuthorStyles => true;
}