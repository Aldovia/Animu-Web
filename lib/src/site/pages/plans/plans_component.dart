import 'package:angular/angular.dart';
import 'package:animu_web/src/site/pages/plans/perks/perk.dart';
import 'package:animu_web/src/site/pages/plans/perks/perk_component.dart';
import 'package:animu_web/src/site/pages/plans/pricing/pricing.dart';
import 'package:animu_web/src/site/pages/plans/pricing/pricing_component.dart';
import 'package:animu_web/src/site/partials/footer/footer_component.dart';
import 'package:animu_web/src/site/partials/header/header.dart';
import 'package:animu_web/src/site/partials/header/header_component.dart';

@Component(
  selector: 'plans',
  templateUrl: './plans_component.html',
  styleUrls: ['./plans_component.css'],
  directives: [
    coreDirectives,
    HeaderComponent,
    PricingComponent,
    PerkComponent,
    FooterComponent,
  ],
)
class PlansComponent {
  Header header = Header(
    title: 'Upgrade your Experience',
    imageUrl: '/assets/img/crown.svg',
    headerSize: HeaderSize.medium,
  );

  List<Pricing> pricings = [
    Pricing(
      title: 'Animu Lite',
      desc: 'Unlock all Lite Features',
      price: 4.99,
      isAvailable: true,
      isMain: false,
    ),
    Pricing(
      title: 'Animu Pro',
      desc: 'Unlock all Pro Features',
      price: 19.99,
      isAvailable: false,
      isMain: true,
    ),
    Pricing(
      title: 'Animu Plus',
      desc: 'Unlock all Plus Features',
      price: 9.99,
      isAvailable: true,
      isMain: false,
    ),
  ];

  List<Perk> perks = [
    Perk(
        title: 'Leveling System',
        desc:
            'A powerful Leveling System that can be fully customized to suite your specific needs.',
        icon: 'show_chart',
        isFA: false,
        isPlus: false,
        isPro: false),
    Perk(
        title: 'Music',
        desc: 'Enjoy high quality music with no queue limits.',
        icon: 'fa-music',
        isFA: true,
        isPlus: false,
        isPro: false),
    Perk(
        title: 'Toxicity Filters',
        desc:
            'Toxicity filters use machine learning models to help you stop abuse and harassment in your servers.',
        icon: 'chat_bubble_outline',
        isFA: false,
        isPlus: true,
        isPro: false),
    Perk(
        title: 'Multiplayer Games',
        desc:
            '9 Multiplayer Games that you can play with your friends or strangers in your server.',
        icon: 'fa-gamepad',
        isFA: true,
        isPlus: false,
        isPro: false),
    Perk(
        title: 'Image Manipulation',
        desc:
            'More than 30 different commands that let you manipulate images & user avatars.',
        icon: 'photo',
        isFA: false,
        isPlus: false,
        isPro: false),
    Perk(
        title: 'Search Anything',
        desc:
            'More than 20 commands to search for Anime, manga, TV shows or even weather directly from your server.',
        icon: 'search',
        isFA: false,
        isPlus: false,
        isPro: false),
    Perk(
        title: '24/7 Radio',
        desc:
            'Play your favorite songs 24/7 in your server with no interruptions.',
        icon: 'queue_music',
        isFA: false,
        isPlus: true,
        isPro: false),
    Perk(
        title: 'Read Manga',
        desc: 'Read your favorite manga within your discord server.',
        icon: 'fa-book-open',
        isFA: true,
        isPlus: false,
        isPro: false),
    Perk(
        title: 'Anime Episode Links',
        desc:
            'Get direct links to your favorite Anime using a simple command in your server.',
        icon: 'fa-tv',
        isFA: true,
        isPlus: false,
        isPro: false),
    Perk(
        title: 'Logs',
        desc: 'Keep an eye on what\'s going on in your server in your absence.',
        icon: 'chat',
        isFA: false,
        isPlus: false,
        isPro: false),
    Perk(
        title: 'Remove Messages',
        desc:
            'Keep your server clean by automatically deleting messages when a member leaves.',
        icon: 'backspace',
        isFA: false,
        isPlus: true,
        isPro: false),
    Perk(
        title: 'Priority Support',
        desc:
            'Get prioritized support from our staff. We\'ll help you set up Animu, and help you figure out how it works.',
        icon: 'fa-users',
        isFA: true,
        isPlus: false,
        isPro: false),
  ];
}
