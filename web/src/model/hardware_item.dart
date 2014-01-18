library hardware_item;

import 'package:polymer/polymer.dart';

class HardwareItem extends Object with Observable {
  String name;
  @observable int quantity;
  int price;
  
  HardwareItem(this.name, this.quantity, this.price);
}