import 'package:angular/angular.dart';
import 'package:animu_web/src/site/pages/support/article/article.dart';
import 'package:animu_web/src/site/pages/support/article/article_component.dart';
import 'package:animu_web/src/site/pages/support/category/category.dart';
import 'package:animu_web/src/site/pages/support/category/category_component.dart';
import 'package:animu_web/src/site/partials/footer/footer_component.dart';
import 'package:animu_web/src/site/partials/header/header.dart';
import 'package:animu_web/src/site/partials/header/header_component.dart';

@Component(
  selector: 'support',
  templateUrl: './support_component.html',
  styleUrls: ['./support_component.css'],
  directives: [
    coreDirectives,
    HeaderComponent,
    ArticleComponent,
    CategoryComponent,
    FooterComponent,
  ],
)
class SupportComponent {
  Header header = Header(
    title: 'Search for Articles',
    imageUrl: '/assets/img/search.svg',
    headerSize: HeaderSize.small,
    rotate: false,
    showSearch: true,
    searchText: "Search for Articles",
  );

  List<Article> popularArticles = [
    Article(
      title: 'Customizing Profiles',
      url: '#/profiles/customizing',
    ),
    Article(
      title: 'Introduction to Leveling System',
      url: '#/levels/intro',
    ),
    Article(
      title: 'Toxicity Filters',
      url: '#/moderation/toxicity-filters',
    ),
    Article(
      title: 'Playing Mafia',
      url: '#/misc/mafia',
    ),
    Article(
      title: 'Basic Music Commands',
      url: '#/music/basic',
    ),
    Article(
      title: 'Reports',
      url: '#/moderation/reports',
    ),
  ];

  List<Category> categories = [
    Category(
      title: 'Profiles',
      desc: 'Get to know what profiles are and how you can customize them',
      url: '#/support/profiles',
    ),
    Category(
      title: 'Pets',
      desc: 'Learn how you can get a pet & take care of it\'s needs',
      url: '#/support/pets',
    ),
    Category(
      title: 'Economy',
      desc:
          'Get to know how Animu\'s Economy works & which great things you can do with shiny coins',
      url: '#/support/economy',
    ),
    Category(
      title: 'Welcome',
      desc:
          'Learn how you can give epic roles to new members & how you\'d like to welcome them',
      url: '#/support/welcome',
    ),
    Category(
      title: 'Moderation',
      desc:
          'Learn how you can use Animu\'s powerful moderation features to keep your server safe',
      url: '#/support/moderation',
    ),
    Category(
      title: 'Levels',
      desc:
          'Learn how to tweak level settings for your specific needs & how to create/manage level up perks',
      url: '#/support/levels',
    ),
    Category(
      title: 'Reputation',
      desc:
          'Understand what reputation is and how it can help you keep your server members in check',
      url: '#/support/reputation',
    ),
    Category(
      title: 'Self Roles',
      desc: 'Learn how you can create epic new roles for your server members',
      url: '#/support/self-roles',
    ),
    Category(
      title: 'Music',
      desc:
          'Learn how you can use Animu\'s powerful music system to its fullest',
      url: '#/support/music',
    ),
    Category(
      title: 'Logs',
      desc:
          'Learn how you can set up logs to keep track of what\'s going on in your server',
      url: '#/support/logs',
    ),
    Category(
      title: 'Misc',
      desc: 'Familiarize yourself with hundreds of features Animu has to offer',
      url: '#/support/misc',
    ),
  ];
}
