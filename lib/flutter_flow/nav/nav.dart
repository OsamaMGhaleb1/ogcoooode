import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => RootPageContext.wrap(
        appStateNotifier.loggedIn ? NavBarPage() : StartWidget(),
        errorRoute: state.uri.toString(),
      ),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => RootPageContext.wrap(
            appStateNotifier.loggedIn ? NavBarPage() : StartWidget(),
          ),
        ),
        FFRoute(
          name: 'Start',
          path: '/start',
          builder: (context, params) => StartWidget(),
        ),
        FFRoute(
          name: 'LoginMethod',
          path: '/loginMethod',
          builder: (context, params) => LoginMethodWidget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: 'onBoard_Profile',
          path: '/onBoardProfile',
          requireAuth: true,
          builder: (context, params) => OnBoardProfileWidget(),
        ),
        FFRoute(
          name: 'pinCodeSet',
          path: '/pinCodeSet',
          builder: (context, params) => PinCodeSetWidget(),
        ),
        FFRoute(
          name: 'BiometricSet',
          path: '/biometricSet',
          builder: (context, params) => BiometricSetWidget(),
        ),
        FFRoute(
          name: 'ForgotPass',
          path: '/forgotPass',
          builder: (context, params) => ForgotPassWidget(
            email: params.getParam(
              'email',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Home',
          path: '/home',
          requireAuth: true,
          builder: (context, params) => HomeWidget(),
        ),
        FFRoute(
          name: 'Cart',
          path: '/cart',
          requireAuth: true,
          builder: (context, params) => CartWidget(),
        ),
        FFRoute(
          name: 'Notifications',
          path: '/notifications',
          requireAuth: true,
          builder: (context, params) => NotificationsWidget(),
        ),
        FFRoute(
          name: 'WishLIst',
          path: '/wishLIst',
          requireAuth: true,
          builder: (context, params) => WishLIstWidget(),
        ),
        FFRoute(
          name: 'SpecialOffers',
          path: '/specialOffers',
          requireAuth: true,
          builder: (context, params) => SpecialOffersWidget(),
        ),
        FFRoute(
          name: 'Products',
          path: '/products',
          requireAuth: true,
          asyncParams: {
            'specialOffer':
                getDoc(['specialOffer'], SpecialOfferRecord.fromSnapshot),
          },
          builder: (context, params) => ProductsWidget(
            pageTitle: params.getParam(
              'pageTitle',
              ParamType.String,
            ),
            specialOffer: params.getParam(
              'specialOffer',
              ParamType.Document,
            ),
            showMostPopular: params.getParam(
              'showMostPopular',
              ParamType.bool,
            ),
            showSpecialOffer: params.getParam(
              'showSpecialOffer',
              ParamType.bool,
            ),
            showActiveCategory: params.getParam(
              'showActiveCategory',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Search',
          path: '/search',
          requireAuth: true,
          builder: (context, params) => SearchWidget(),
        ),
        FFRoute(
          name: 'Detail',
          path: '/detail',
          requireAuth: true,
          asyncParams: {
            'product': getDoc(['product'], ProductRecord.fromSnapshot),
          },
          builder: (context, params) => DetailWidget(
            product: params.getParam(
              'product',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'Reviews',
          path: '/reviews',
          requireAuth: true,
          asyncParams: {
            'product': getDoc(['product'], ProductRecord.fromSnapshot),
          },
          builder: (context, params) => ReviewsWidget(
            product: params.getParam(
              'product',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'CheckOut',
          path: '/checkOut',
          requireAuth: true,
          builder: (context, params) => CheckOutWidget(
            orderRef: params.getParam(
              'orderRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['order'],
            ),
          ),
        ),
        FFRoute(
          name: 'ShippingMethods',
          path: '/shippingMethods',
          requireAuth: true,
          builder: (context, params) => ShippingMethodsWidget(),
        ),
        FFRoute(
          name: 'LoginSecure',
          path: '/loginSecure',
          requireAuth: true,
          builder: (context, params) => LoginSecureWidget(
            securityType: params.getParam(
              'securityType',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'OrderHistory',
          path: '/orderHistory',
          requireAuth: true,
          builder: (context, params) => OrderHistoryWidget(),
        ),
        FFRoute(
          name: 'TrackOrder',
          path: '/trackOrder',
          requireAuth: true,
          asyncParams: {
            'order': getDoc(['order'], OrderRecord.fromSnapshot),
          },
          builder: (context, params) => TrackOrderWidget(
            order: params.getParam(
              'order',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'Transactions',
          path: '/transactions',
          requireAuth: true,
          builder: (context, params) => TransactionsWidget(
            walletRef: params.getParam(
              'walletRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['wallet'],
            ),
          ),
        ),
        FFRoute(
          name: 'E-Receipt',
          path: '/eReceipt',
          requireAuth: true,
          asyncParams: {
            'order': getDoc(['order'], OrderRecord.fromSnapshot),
          },
          builder: (context, params) => EReceiptWidget(
            order: params.getParam(
              'order',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'Profile',
          path: '/profile',
          requireAuth: true,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'Profile')
              : ProfileWidget(),
        ),
        FFRoute(
          name: 'ProfileEdit',
          path: '/profileEdit',
          requireAuth: true,
          builder: (context, params) => ProfileEditWidget(),
        ),
        FFRoute(
          name: 'Address',
          path: '/address',
          requireAuth: true,
          builder: (context, params) => AddressWidget(),
        ),
        FFRoute(
          name: 'SettingNotification',
          path: '/settingNotification',
          requireAuth: true,
          builder: (context, params) => SettingNotificationWidget(),
        ),
        FFRoute(
          name: 'PaymentMethods',
          path: '/paymentMethods',
          requireAuth: true,
          builder: (context, params) => PaymentMethodsWidget(),
        ),
        FFRoute(
          name: 'NewCard',
          path: '/newCard',
          requireAuth: true,
          builder: (context, params) => NewCardWidget(),
        ),
        FFRoute(
          name: 'Security',
          path: '/security',
          requireAuth: true,
          builder: (context, params) => SecurityWidget(),
        ),
        FFRoute(
          name: 'Language',
          path: '/language',
          requireAuth: true,
          builder: (context, params) => LanguageWidget(),
        ),
        FFRoute(
          name: 'PrivacyPolicy',
          path: '/privacyPolicy',
          builder: (context, params) => PrivacyPolicyWidget(),
        ),
        FFRoute(
          name: 'InviteContacts',
          path: '/inviteContacts',
          requireAuth: true,
          builder: (context, params) => InviteContactsWidget(),
        ),
        FFRoute(
          name: 'Signup',
          path: '/signup',
          builder: (context, params) => SignupWidget(),
        ),
        FFRoute(
          name: 'SecurityChoice',
          path: '/securityChoice',
          builder: (context, params) => SecurityChoiceWidget(),
        ),
        FFRoute(
          name: 'addp4g',
          path: '/addp4g',
          builder: (context, params) => Addp4gWidget(),
        ),
        FFRoute(
          name: 'APPS',
          path: '/apps',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: AppsWidget(),
          ),
        ),
        FFRoute(
          name: 'CARD',
          path: '/card',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: CardWidget(),
          ),
        ),
        FFRoute(
          name: 'daitail',
          path: '/daitail',
          asyncParams: {
            'product': getDoc(['product'], ProductRecord.fromSnapshot),
            'requet': getDoc(['requests'], RequestsRecord.fromSnapshot),
          },
          builder: (context, params) => DaitailWidget(
            product: params.getParam(
              'product',
              ParamType.Document,
            ),
            requet: params.getParam(
              'requet',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'gamepackage',
          path: '/gamepackage',
          asyncParams: {
            'name': getDoc(['shahn'], ShahnRecord.fromSnapshot),
          },
          builder: (context, params) => GamepackageWidget(
            name: params.getParam(
              'name',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'gamess',
          path: '/gamess',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: GamessWidget(),
          ),
        ),
        FFRoute(
          name: 'HOMEMAIN',
          path: '/homemain',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'HOMEMAIN')
              : NavBarPage(
                  initialPage: 'HOMEMAIN',
                  page: HomemainWidget(),
                ),
        ),
        FFRoute(
          name: 'CHAT',
          path: '/chat',
          builder: (context, params) => ChatWidget(),
        ),
        FFRoute(
          name: 'dashboard',
          path: '/dashboard',
          builder: (context, params) => DashboardWidget(),
        ),
        FFRoute(
          name: 'chat_detail',
          path: '/chatDetail',
          asyncParams: {
            'chatUser': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => ChatDetailWidget(
            chatUser: params.getParam(
              'chatUser',
              ParamType.Document,
            ),
            chatRef: params.getParam(
              'chatRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['chats'],
            ),
          ),
        ),
        FFRoute(
          name: 'wallet',
          path: '/wallet',
          builder: (context, params) => WalletWidget(),
        ),
        FFRoute(
          name: 'homepage',
          path: '/homepage',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'homepage')
              : HomepageWidget(),
        ),
        FFRoute(
          name: 'sendmony',
          path: '/sendmony',
          builder: (context, params) => SendmonyWidget(),
        ),
        FFRoute(
          name: 'donesend',
          path: '/donesend',
          builder: (context, params) => DonesendWidget(
            pagore: params.getParam(
              'pagore',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Pagos'],
            ),
          ),
        ),
        FFRoute(
          name: 'sendmonyemen',
          path: '/sendmonyemen',
          builder: (context, params) => SendmonyemenWidget(),
        ),
        FFRoute(
          name: 'TOPUPP',
          path: '/topupp',
          builder: (context, params) => TopuppWidget(),
        ),
        FFRoute(
          name: 'MAHFAZA',
          path: '/mahfaza',
          builder: (context, params) => MahfazaWidget(),
        ),
        FFRoute(
          name: 'TRANSMONY',
          path: '/transmony',
          builder: (context, params) => TransmonyWidget(),
        ),
        FFRoute(
          name: 'USDT',
          path: '/usdt',
          builder: (context, params) => UsdtWidget(),
        ),
        FFRoute(
          name: 'DetailCopy',
          path: '/detailCopy',
          requireAuth: true,
          asyncParams: {
            'product': getDoc(['product'], ProductRecord.fromSnapshot),
          },
          builder: (context, params) => DetailCopyWidget(
            product: params.getParam(
              'product',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'ADDPACAG',
          path: '/addpacag',
          builder: (context, params) => AddpacagWidget(),
        ),
        FFRoute(
          name: 'addd',
          path: '/addd',
          builder: (context, params) => AdddWidget(),
        ),
        FFRoute(
          name: 'YEMENMOBILE',
          path: '/yemenmobile',
          asyncParams: {
            'jk': getDoc(['SHAHNRASEED'], ShahnraseedRecord.fromSnapshot),
          },
          builder: (context, params) => YemenmobileWidget(
            name: params.getParam(
              'name',
              ParamType.String,
            ),
            jk: params.getParam(
              'jk',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'Dashboarddetails',
          path: '/dashboarddetails',
          asyncParams: {
            'details': getDoc(['order'], OrderRecord.fromSnapshot),
          },
          builder: (context, params) => DashboarddetailsWidget(
            details: params.getParam(
              'details',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'orders',
          path: '/orders',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'orders')
              : NavBarPage(
                  initialPage: 'orders',
                  page: OrdersWidget(),
                ),
        ),
        FFRoute(
          name: 'SEARCH1',
          path: '/search1',
          builder: (context, params) => Search1Widget(),
        ),
        FFRoute(
          name: 'you',
          path: '/you',
          asyncParams: {
            'jk': getDoc(['SHAHNRASEED'], ShahnraseedRecord.fromSnapshot),
          },
          builder: (context, params) => YouWidget(
            name: params.getParam(
              'name',
              ParamType.String,
            ),
            jk: params.getParam(
              'jk',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'HomeRASSED',
          path: '/homeRASSED',
          builder: (context, params) => HomeRASSEDWidget(),
        ),
        FFRoute(
          name: 'ADDOFER',
          path: '/addofer',
          builder: (context, params) => AddoferWidget(
            name: params.getParam(
              'name',
              ParamType.String,
            ),
            network: params.getParam(
              'network',
              ParamType.String,
            ),
            type: params.getParam(
              'type',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'networkraseed',
          path: '/networkraseed',
          builder: (context, params) => NetworkraseedWidget(
            name: params.getParam(
              'name',
              ParamType.String,
            ),
            type: params.getParam(
              'type',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'yai',
          path: '/yai',
          asyncParams: {
            'jk': getDoc(['SHAHNRASEED'], ShahnraseedRecord.fromSnapshot),
          },
          builder: (context, params) => YaiWidget(
            name: params.getParam(
              'name',
              ParamType.String,
            ),
            jk: params.getParam(
              'jk',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'homeraseed',
          path: '/homeraseed',
          builder: (context, params) => HomeraseedWidget(),
        ),
        FFRoute(
          name: 'SERVICERASEED',
          path: '/serviceraseed',
          builder: (context, params) => ServiceraseedWidget(),
        ),
        FFRoute(
          name: 'networkraseeadsl',
          path: '/networkraseeadsl',
          builder: (context, params) => NetworkraseeadslWidget(
            name: params.getParam(
              'name',
              ParamType.String,
            ),
            type: params.getParam(
              'type',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'DONERASEEED',
          path: '/doneraseeed',
          builder: (context, params) => DoneraseeedWidget(
            sno: params.getParam(
              'sno',
              ParamType.String,
            ),
            numberref: params.getParam(
              'numberref',
              ParamType.int,
            ),
            cost: params.getParam(
              'cost',
              ParamType.double,
            ),
          ),
        ),
        FFRoute(
          name: 'servicewater',
          path: '/servicewater',
          builder: (context, params) => ServicewaterWidget(
            name: params.getParam(
              'name',
              ParamType.String,
            ),
            type: params.getParam(
              'type',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'SBAFONE1',
          path: '/sbafone1',
          asyncParams: {
            'jk': getDoc(['SHAHNRASEED'], ShahnraseedRecord.fromSnapshot),
          },
          builder: (context, params) => Sbafone1Widget(
            name: params.getParam(
              'name',
              ParamType.String,
            ),
            jk: params.getParam(
              'jk',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'AMLIAT',
          path: '/amliat',
          builder: (context, params) => AmliatWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/start';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).info,
                  child: Image.asset(
                    'assets/images/VID-20241117-WA0015_1.gif',
                    fit: BoxFit.contain,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(
        hasTransition: true,
        transitionType: PageTransitionType.scale,
        alignment: Alignment.bottomCenter,
        duration: Duration(milliseconds: 200),
      );
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
