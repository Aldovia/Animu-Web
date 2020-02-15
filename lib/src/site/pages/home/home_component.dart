import 'package:angular/angular.dart';
import 'package:animu_web/src/site/pages/home/feature/feature.dart';
import 'package:animu_web/src/site/partials/footer/footer_component.dart';
import 'package:animu_web/src/site/partials/header/header.dart';
import 'package:animu_web/src/site/partials/header/header_component.dart';
import 'package:animu_web/src/site/pages/home/feature/feature_component.dart';

@Component(
  selector: 'home',
  templateUrl: './home_component.html',
  styleUrls: ['./home_component.css'],
  directives: [
    coreDirectives,
    HeaderComponent,
    FeatureComponent,
    FooterComponent
  ],
)
class HomeComponent {
  Header header = Header(
    title: 'Take control of your Discord Server',
    imageUrl: '/assets/img/discord-logo-black.svg',
    headerSize: HeaderSize.large,
    showInviteBtn: true,
  );

  List<Feature> features = [
    Feature(
      title: 'Make new members feel at home',
      description:
          'Create a unique welcome message and view instant preview to make sure your new members are seeing what you want them to see. Take customization one step further and add a custom gif or image to your welcome message and give your members an epic role!',
      imageUrl: '/assets/img/feature-welcome.png',
      alternate: false,
    ),
    Feature(
      title: 'Fully Customizable Level System',
      description:
          'Give your server members a reason to level up by creating level up perks such as roles, badges and reputation that members can earn by levelling up. You can even customize the rate at which members earn exp in your server!',
      imageUrl: '/assets/img/feature-levels.png',
      alternate: true,
    ),
    Feature(
      title: 'Companion App',
      description:
          'Animu Companion App lets you manage your server on the go. Create new self roles, keep a look on logs, manage level up system and much more directly on the mobile app!',
      imageUrl: '/assets/img/feature-companion.png',
      alternate: false,
    ),
    Feature(
      title: 'Advanced Moderation Features',
      description:
          'Keep your server safe by using toxicity filters and keeping a look on which people are breaking rules in your server. Feeling Creative? Create custom rules that mute, kick and ban users when they get certain number of warning in some time.',
      imageUrl: '/assets/img/feature-moderation.png',
      alternate: true,
    ),
    Feature(
      title: 'High Quality Music',
      description:
          'Let your server members enjoy high quality music with no limitations.',
      imageUrl: '/assets/img/feature-music.png',
      alternate: false,
    ),
    Feature(
      title: 'Read Manga & Watch Anime',
      description:
          'Read manga and watch your favorite anime directly on discord',
      imageUrl: '/assets/img/feature-anime-manga.png',
      alternate: true,
    ),
    Feature(
      title: 'Much Much More!',
      description:
          'Animu provides you with everything you\'ll ever need to make your server epic! 250+ commands that cover everything from rolling a die to searching steam or browsing stocks!',
      imageUrl: '/assets/img/feature-more.png',
      alternate: false,
    ),
  ];
}
