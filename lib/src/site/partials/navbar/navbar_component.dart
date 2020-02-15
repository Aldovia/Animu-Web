import 'package:angular/angular.dart';

@Component(
  selector: 'navbar',
  templateUrl: './navbar_component.html',
  styleUrls: ['./navbar_component.css'],
  directives: [
    coreDirectives,
  ],
)
class NavbarComponent {
  bool showSidebar = false;

  void toggleSideBar() => showSidebar = !showSidebar;
}
