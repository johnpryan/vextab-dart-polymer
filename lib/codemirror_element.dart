@HtmlImport('codemirror_element.html')
library codemirror_element;

import 'dart:html';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';
import 'package:codemirror/codemirror.dart';

@PolymerRegister(CodeMirrorElement.tag)
class CodeMirrorElement extends PolymerElement {
  static const String tag = 'codemirror-element';
  
  CodeMirrorElement.created() : super.created();

  @Property(notify: true)
  String value;

  attached() {
    Map options = {
      'theme': 'solarized',
      'lineNumbers': true,
      'keyMap': 'vim',
    };

    CodeMirror editor = new CodeMirror.fromElement(
        $$('#host'), options: options);
    editor.getDoc().setValue(get('value'));
    editor.getDoc().onChange.listen((_) {
      set('value', editor.getDoc().getValue());
    });
  }
  
  factory CodeMirrorElement() => new Element.tag(CodeMirrorElement.tag);
}
