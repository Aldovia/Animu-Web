import 'package:angular/angular.dart';
import 'package:animu_web/src/site/pages/support/category/category.dart';

@Component(
  selector: 'category',
  templateUrl: './category_component.html',
  styleUrls: ['./category_component.css'],
  directives: [coreDirectives],
)
class CategoryComponent {
  @Input()
  Category category;
}
