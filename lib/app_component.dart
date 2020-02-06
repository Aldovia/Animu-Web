import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'src/routes.dart';

@Component(
  selector: 'root',
  template: '''
    <router-outlet [routes]=
    "Routes.all"></router-outlet>
    ''',
  directives: [routerDirectives],
  exports: [RoutePaths, Routes],
)
class AppComponent {}
