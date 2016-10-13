@HtmlImport('vt_editor.html')
library vt_editor;

import 'dart:html';
import 'package:vextab/example.dart';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

//ignore: unused_import
import 'package:polymer_elements/iron_autogrow_textarea.dart';

//ignore: unused_import
import 'package:polymer_elements/paper_card.dart';

//ignore: unused_import
import 'package:polymer_elements/color.dart';

//ignore: unused_import
import 'package:polymer_elements/iron_flex_layout.dart';

//ignore: unused_import
import 'vex_tab.dart';

//ignore: unused_import
import 'codemirror_element.dart';

@PolymerRegister(VtEditor.tag)
class VtEditor extends PolymerElement {
  static const String tag = 'vt-editor';

  @Property(observer: 'handleSourceChanged')
  String source = vextabExample;
  
  VtEditor.created() : super.created();
  
  factory VtEditor() => new Element.tag(VtEditor.tag);

  @reflectable
  handleSourceChanged(String newVal, String oldVal) {
    print('source changed');
  }
}
