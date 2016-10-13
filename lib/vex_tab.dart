@HtmlImport('vex_tab.html')
library vextab;

import 'dart:async';
import 'dart:html';
import 'dart:js' as js;
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';
import 'package:stream_transformers/stream_transformers.dart';

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
    _scheduleRender();
  }

  StreamController _renderStreamController = new StreamController();
  Stream get _renderStream => _renderStreamController.stream;
  _scheduleRender() {
    _renderStreamController.add(null);
  }

  _configure() {
    _renderStream
        .transform(new Debounce(new Duration(milliseconds: 100)))
        .listen((_) => _render());
    js.context.callMethod('configure');
  }

  _render() {
    js.context.callMethod('render');
  }

  factory VexTab() => new Element.tag(VexTab.tag);
}
