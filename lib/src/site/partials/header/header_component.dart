import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:animu_web/src/site/pages/commands/command/command.dart';
import 'package:animu_web/src/site/partials/header/header.dart';
import 'package:animu_web/src/site/partials/navbar/navbar_component.dart';
import 'package:autotrie/autotrie.dart';

@Component(
  selector: 'header',
  templateUrl: './header_component.html',
  styleUrls: ['./header_component.css'],
  directives: [coreDirectives, MaterialInputComponent, NavbarComponent],
)
class HeaderComponent implements OnInit {
  @Input()
  Header header;
  String searchString;
  bool showSuggestions = false;
  AutoComplete engine = AutoComplete();
  List<String> suggestions;

  final _viewCommandRequest = StreamController<Command>();

  @Output()
  Stream<Command> get viewCommandRequest => _viewCommandRequest.stream;

  void view(String command) {
    suggestions = [];
    showSuggestions = false;
    _viewCommandRequest.add(Command.fetchByName(command));
  }

  void ngOnInit() {
    if (header.searchType == SearchType.commands) {
      searchString = 'Search for Commands';
      List<Command> commands = Command.fetchAllCommands();

      commands.forEach((c) {
        engine.enter(c.name);
      });
    }
  }

  onInput(dynamic event) {
    String val = event.target.value;
    if (val != '') {
      suggestions = engine.suggest(val);

      if (suggestions.length > 3) suggestions = suggestions.sublist(0, 3);
      showSuggestions = true;
    } else {
      showSuggestions = false;
      suggestions = [];
    }
  }
}
