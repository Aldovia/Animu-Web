import 'package:angular/angular.dart';
import 'package:animu_web/src/site/partials/navbar/navbar_component.dart';

@Component(
  selector: 'header',
  templateUrl: './header_component.html',
  styleUrls: ['./header_component.css'],
  directives: [NavbarComponent],
)
class HeaderComponent {}
