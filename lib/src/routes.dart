import 'package:angular_router/angular_router.dart';
import 'package:animu_web/src/route_paths.dart';
import 'package:animu_web/src/site/pages/home/home_component.template.dart'
    as home_template;
import 'package:animu_web/src/site/pages/plans/plans_component.template.dart'
    as plans_template;
import 'package:animu_web/src/site/pages/support/support_component.template.dart'
    as support_template;
import 'package:animu_web/src/site/pages/commands/commands_component.template.dart'
    as commands_template;

export 'route_paths.dart';

class Routes {
  static final home = RouteDefinition(
    routePath: RoutePaths.home,
    component: home_template.HomeComponentNgFactory,
    useAsDefault: true,
  );

  static final plans = RouteDefinition(
    routePath: RoutePaths.plans,
    component: plans_template.PlansComponentNgFactory,
  );

  static final support = RouteDefinition(
    routePath: RoutePaths.support,
    component: support_template.SupportComponentNgFactory,
  );

  static final commands = RouteDefinition(
    routePath: RoutePaths.commands,
    component: commands_template.CommandsComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    home,
    plans,
    support,
    commands,
  ];
}
