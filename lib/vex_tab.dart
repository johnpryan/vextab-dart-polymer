@HtmlImport('vex_tab.html')
library vextab;

import 'dart:html';
import 'dart:js' as js;
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

@PolymerRegister(VexTab.tag)
class VexTab extends PolymerElement {
  static const String tag = 'vex-tab';
  
  VexTab.created() : super.created();

  ready() {
    js.context.callMethod('loadVexTab');
  }
  
  factory VexTab() => new Element.tag(VexTab.tag);
}
