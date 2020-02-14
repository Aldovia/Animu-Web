import 'package:angular/angular.dart';
import 'package:animu_web/src/site/pages/commands/command/command.dart';
import 'package:animu_web/src/site/pages/commands/command/command_component.dart';
import 'package:animu_web/src/site/pages/commands/command_category/command_category.dart';
import 'package:animu_web/src/site/pages/commands/command_category/command_category_component.dart';
import 'package:animu_web/src/site/partials/footer/footer_component.dart';
import 'package:animu_web/src/site/partials/header/header.dart';
import 'package:animu_web/src/site/partials/header/header_component.dart';

@Component(
  selector: 'commands',
  templateUrl: './commands_component.html',
  styleUrls: ['./commands_component.css'],
  directives: [
    coreDirectives,
    HeaderComponent,
    CommandCategoryComponent,
    CommandComponent,
    FooterComponent,
  ],
)
class CommandsComponent implements OnInit {
  Header header = Header(
    title: 'A command for everything',
    imageUrl: '/assets/img/terminal.svg',
    headerSize: HeaderSize.small,
    rotate: false,
    showSearch: true,
    searchType: SearchType.commands,
  );

  List<Command> commands;
  List<CommandCategory> categories = [];

  Command selectedCommand;

  void ngOnInit() {
    commands = Command.fetchAllCommands();

    Map<String, List<Command>> tempCategories = {};

    for (Command command in commands) {
      if (tempCategories[command.category] != null)
        tempCategories[command.category].add(command);
      else
        tempCategories[command.category] = [command];
    }

    tempCategories.forEach(
      (k, v) => categories.add(
        (CommandCategory(name: k, commands: v)),
      ),
    );
  }

  void viewCommand(Command command) {
    selectedCommand = command;
  }
}
