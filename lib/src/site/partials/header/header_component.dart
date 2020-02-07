import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:animu_web/src/site/partials/header/header.dart';
import 'package:animu_web/src/site/partials/navbar/navbar_component.dart';

@Component(
  selector: 'header',
  templateUrl: './header_component.html',
  styleUrls: ['./header_component.css'],
  directives: [coreDirectives, MaterialInputComponent, NavbarComponent],
)
class HeaderComponent {
  @Input()
  Header header;
}
