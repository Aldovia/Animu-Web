import 'package:angular/angular.dart';
import 'package:animu_web/src/site/pages/support/article/article.dart';

@Component(
  selector: 'article',
  templateUrl: './article_component.html',
  styleUrls: ['./article_component.css'],
  directives: [coreDirectives],
)
class ArticleComponent {
  @Input()
  Article article;
}
