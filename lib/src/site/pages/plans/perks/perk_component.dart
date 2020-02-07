import 'package:angular/angular.dart';
import 'package:animu_web/src/site/pages/plans/perks/perk.dart';

@Component(
  selector: 'perk',
  templateUrl: './perk_component.html',
  styleUrls: ['./perk_component.css'],
  directives: [coreDirectives],
)
class PerkComponent {
  @Input()
  Perk perk;

  Map<String, bool> iconClasses = {};

  void OnInit() {
    iconClasses = {
      perk.icon: true,
    };
  }
}
