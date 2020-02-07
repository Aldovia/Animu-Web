import 'package:angular/angular.dart';
import 'package:animu_web/src/site/pages/plans/pricing/pricing.dart';

@Component(
  selector: 'pricing',
  templateUrl: './pricing_component.html',
  styleUrls: ['./pricing_component.css'],
  directives: [coreDirectives],
)
class PricingComponent {
  @Input()
  Pricing pricing;
}
