import 'package:angular/angular.dart';
import 'package:animu_web/src/site/pages/home/home_component.dart';

@Component(
  selector: 'root',
  template: '<home></home>',
  directives: [HomeComponent],
)
class AppComponent {}
