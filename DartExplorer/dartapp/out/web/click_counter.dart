import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('click-counter')
class ClickCounterElement extends PolymerElement with ChangeNotifier  {
  @reflectable @published int get count => __$count; int __$count = 0; @reflectable set count(int value) { __$count = notifyPropertyChange(#count, __$count, value); }
  
  ClickCounterElement.created() : super.created();
  
  void increment(Event e, var detail, Node target) {
    count += 1;
  }
}