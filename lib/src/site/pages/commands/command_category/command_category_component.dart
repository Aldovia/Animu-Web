import 'dart:async';

import 'package:angular/angular.dart';
import 'package:animu_web/src/site/pages/commands/command/command.dart';
import 'package:animu_web/src/site/pages/commands/command_category/command_category.dart';

@Component(
  selector: 'command-category',
  templateUrl: './command_category_component.html',
  styleUrls: ['./command_category_component.css'],
  directives: [
    coreDirectives,
  ],
)
class CommandCategoryComponent {
  @Input()
  CommandCategory category;

  @Input()
  Command selectedCommand;

  final _viewCommandRequest = StreamController<Command>();

  @Output()
  Stream<Command> get viewCommandRequest => _viewCommandRequest.stream;

  bool expand = false;

  void toggle() => expand = !expand;

  void view(Command command) => _viewCommandRequest.add(command);
}
