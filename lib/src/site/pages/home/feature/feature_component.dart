import 'package:angular/angular.dart';
import 'package:animu_web/src/site/pages/home/feature/feature.dart';

@Component(
  selector: 'feature',
  templateUrl: './feature_component.html',
  styleUrls: ['./feature_component.css'],
  directives: [coreDirectives],
)
class FeatureComponent {
  @Input()
  Feature feature;
}
