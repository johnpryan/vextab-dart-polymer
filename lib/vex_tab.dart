@HtmlImport('vex_tab.html')
library vextab;

import 'dart:html';
import 'dart:js' as js;
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

@PolymerRegister(VexTab.tag)
class VexTab extends PolymerElement {
  static const String tag = 'vex-tab';

  @Property(observer: 'handleSourceChanged')
  String source;

  bool _isReady = false;
  
  VexTab.created() : super.created();

  attached() {
    _isReady = true;
    _configure();
    _render();
  }

  detached() {
    _isReady = false;
  }

  @reflectable
  handleSourceChanged(_, __) {
    if (!_isReady) return;
    _render();
  }

  _configure() {
    js.context.callMethod('configure');
  }

  _render() {
    js.context.callMethod('render');
  }
  
  factory VexTab() => new Element.tag(VexTab.tag);
}
