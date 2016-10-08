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

  attached() {
    var contentElement = $$('content');
      var nodes = Polymer.dom(contentElement).getDistributedNodes();
      var text = (nodes.first as Text).text;
    $$('#content-holder').remove();
//      var contentPolymer = new PolymerDom(contentElement);
//      for (var child in contentPolymer.children) {
//        contentPolymer.removeChild(child);
//      }
    contentElement.remove();
    var vextabInput = $$('#vextab-input');
    vextabInput.text = text;
    js.context.callMethod('loadVexTab');
  }
  
  factory VexTab() => new Element.tag(VexTab.tag);
}
