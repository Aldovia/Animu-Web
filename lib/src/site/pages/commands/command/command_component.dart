import 'package:angular/angular.dart';
import 'package:animu_web/src/site/pages/commands/command/command.dart';

@Component(
  selector: 'command-view',
  templateUrl: './command_component.html',
  styleUrls: ['./command_component.css'],
  directives: [
    coreDirectives,
  ],
)
class CommandComponent {
  @Input()
  Command command;
}
