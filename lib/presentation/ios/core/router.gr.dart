// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$_Router extends RootStackRouter {
  _$_Router([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    UnauthenticatedFlowRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const UnauthenticatedFlow(),
          opaque: true,
          barrierDismissible: false);
    },
    AuthenticatedFlowRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const AuthenticatedFlow(),
          opaque: true,
          barrierDismissible: false);
    },
    AuthFlowRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const AuthFlow(),
          customRouteBuilder: modalParentRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    ForgotPasswordModalRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const ForgotPasswordModal(),
          customRouteBuilder: expandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    ForgotPasswordInitialPageRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const ForgotPasswordInitialPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ForgotPasswordSuccessPageRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const ForgotPasswordSuccessPage(),
          opaque: true,
          barrierDismissible: false);
    },
    HomePageRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: HomePage(),
          opaque: true,
          barrierDismissible: false);
    },
    SettingsFlowRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const SettingsFlow());
    },
    PrivacyPolicyPageRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const PrivacyPolicyPage());
    },
    ContactPageRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const ContactPage());
    },
    GameInvitationsPageRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const GameInvitationsPage());
    },
    FriendsFlowRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const FriendsFlow());
    },
    ProfilePageRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const ProfilePage());
    },
    GameHistoryFlowRoute.name: (routeData) {
      final args = routeData.argsAs<GameHistoryFlowRouteArgs>();
      return CupertinoPageX<dynamic>(
          routeData: routeData,
          child: GameHistoryFlow(
              key: args.key, gameHistoryBloc: args.gameHistoryBloc));
    },
    PlayOfflineFlowRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const PlayOfflineFlow());
    },
    PlayOnlineFlowRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const PlayOnlineFlow());
    },
    TrainingFlowRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const TrainingFlow());
    },
    SettingsPageRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const SettingsPage(),
          customRouteBuilder: modalParentRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    ChangeEmailModalRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const ChangeEmailModal(),
          customRouteBuilder: expandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    ChangePasswordModalRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const ChangePasswordModal(),
          customRouteBuilder: expandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    ChangeUsernameModalRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const ChangeUsernameModal(),
          customRouteBuilder: expandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    EditProfileImageModalRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: EditProfileImageModal(),
          customRouteBuilder: notExpandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    ChangeEmailInitialPageRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const ChangeEmailInitialPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ChangeEmailSuccessPageRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const ChangeEmailSuccessPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ChangePasswordInitialPageRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const ChangePasswordInitialPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ChangePasswordSuccessPageRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const ChangePasswordSuccessPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ChangeUsernameInitialPageRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const ChangeUsernameInitialPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ChangeUsernameSuccessPageRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const ChangeUsernameSuccessPage(),
          opaque: true,
          barrierDismissible: false);
    },
    FriendsOverviewFlowRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const FriendsOverviewFlow());
    },
    FriendsProfilePageRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const FriendsProfilePage());
    },
    FriendsOverviewPageRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const FriendsOverviewPage(),
          customRouteBuilder: modalParentRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    MoreModalRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: MoreModal(),
          customRouteBuilder: notExpandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    SearchUserModalRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const SearchUserModal(),
          customRouteBuilder: expandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    GameHistoryOverviewPageRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const GameHistoryOverviewPage());
    },
    GameHistoryDetailsPageRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const GameHistoryDetailsPage());
    },
    CreateOfflineGameFlowRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const CreateOfflineGameFlow(),
          opaque: true,
          barrierDismissible: false);
    },
    InOfflineGameFlowRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const InOfflineGameFlow());
    },
    PostOfflineGamePageRoute.name: (routeData) {
      final args = routeData.argsAs<PostOfflineGamePageRouteArgs>();
      return CupertinoPageX<dynamic>(
          routeData: routeData,
          child: PostOfflineGamePage(key: args.key, snapshot: args.snapshot));
    },
    CreateOfflineGamePageRoute.name: (routeData) {
      final args = routeData.argsAs<CreateOfflineGamePageRouteArgs>();
      return CustomPage<dynamic>(
          routeData: routeData,
          child: CreateOfflineGamePage(
              key: args.key, initialSnapshot: args.initialSnapshot),
          customRouteBuilder: modalParentRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    CreateGameAdvancedSettingsModalRoute.name: (routeData) {
      final args = routeData.argsAs<CreateGameAdvancedSettingsModalRouteArgs>();
      return CustomPage<dynamic>(
          routeData: routeData,
          child:
              CreateGameAdvancedSettingsModal(key: args.key, index: args.index),
          customRouteBuilder: notExpandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    YouReallyWantToCancelGameDialogRoute.name: (routeData) {
      final args = routeData.argsAs<YouReallyWantToCancelGameDialogRouteArgs>();
      return CustomPage<dynamic>(
          routeData: routeData,
          child: YouReallyWantToCancelGameDialog(
              key: args.key, onYesPressed: args.onYesPressed),
          reverseDurationInMilliseconds: 0,
          opaque: false,
          barrierDismissible: false);
    },
    InOfflineGamePageRoute.name: (routeData) {
      final args = routeData.argsAs<InOfflineGamePageRouteArgs>();
      return CustomPage<dynamic>(
          routeData: routeData,
          child: InOfflineGamePage(
              key: args.key, initialSnapshot: args.initialSnapshot),
          customRouteBuilder: modalParentRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    CheckoutDetailsModalRoute.name: (routeData) {
      final args = routeData.argsAs<CheckoutDetailsModalRouteArgs>();
      return CustomPage<dynamic>(
          routeData: routeData,
          child: CheckoutDetailsModal(key: args.key, bloc: args.bloc),
          customRouteBuilder: expandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    OfflineStatsModalRoute.name: (routeData) {
      final args = routeData.argsAs<OfflineStatsModalRouteArgs>();
      return CustomPage<dynamic>(
          routeData: routeData,
          child: OfflineStatsModal(key: args.key, snapshot: args.snapshot),
          customRouteBuilder: expandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    AdvancedSettingsModalRoute.name: (routeData) {
      final args = routeData.argsAs<AdvancedSettingsModalRouteArgs>();
      return CustomPage<dynamic>(
          routeData: routeData,
          child: AdvancedSettingsModal(key: args.key, players: args.players),
          customRouteBuilder: expandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    CreateOnlineGameFlowRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const CreateOnlineGameFlow(),
          opaque: true,
          barrierDismissible: false);
    },
    InOnlineGameFlowRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const InOnlineGameFlow());
    },
    PostOnlineGamePageRoute.name: (routeData) {
      final args = routeData.argsAs<PostOnlineGamePageRouteArgs>();
      return CupertinoPageX<dynamic>(
          routeData: routeData,
          child: PostOnlineGamePage(key: args.key, snapshot: args.snapshot));
    },
    CreateOnlineGamePageRoute.name: (routeData) {
      final args = routeData.argsAs<CreateOnlineGamePageRouteArgs>();
      return CustomPage<dynamic>(
          routeData: routeData,
          child: CreateOnlineGamePage(
              key: args.key, initialSnapshot: args.initialSnapshot),
          customRouteBuilder: modalParentRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    InOnlineGamePageRoute.name: (routeData) {
      final args = routeData.argsAs<InOnlineGamePageRouteArgs>();
      return CustomPage<dynamic>(
          routeData: routeData,
          child: InOnlineGamePage(
              key: args.key, initialSnapshot: args.initialSnapshot),
          customRouteBuilder: modalParentRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    OnlineStatsModalRoute.name: (routeData) {
      final args = routeData.argsAs<OnlineStatsModalRouteArgs>();
      return CustomPage<dynamic>(
          routeData: routeData,
          child: OnlineStatsModal(key: args.key, snapshot: args.snapshot),
          customRouteBuilder: expandedModalRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    CreateTrainingFlowRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const CreateTrainingFlow());
    },
    InBobsTwentySevenTrainingFlowRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const InBobsTwentySevenTrainingFlow());
    },
    InScoreTrainingFlowRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const InScoreTrainingFlow());
    },
    InSingleTrainingFlowRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const InSingleTrainingFlow());
    },
    InDoubleTrainingFlowRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const InDoubleTrainingFlow());
    },
    PostTrainingPageRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const PostTrainingPage());
    },
    CreateTrainingPageRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const CreateTrainingPage());
    },
    InBobsTwentySeventTrainingPageRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const InBobsTwentySeventTrainingPage());
    },
    InScoreTrainingPageRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const InScoreTrainingPage());
    },
    InSingleTrainingPageRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const InSingleTrainingPage());
    },
    InDoubleTrainingPageRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const InDoubleTrainingPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(UnauthenticatedFlowRoute.name,
            path: '/unauthenticated-flow',
            children: [
              RouteConfig(AuthFlowRoute.name,
                  path: '', parent: UnauthenticatedFlowRoute.name),
              RouteConfig(ForgotPasswordModalRoute.name,
                  path: 'forgot-password-modal',
                  parent: UnauthenticatedFlowRoute.name,
                  children: [
                    RouteConfig(ForgotPasswordInitialPageRoute.name,
                        path: '', parent: ForgotPasswordModalRoute.name),
                    RouteConfig(ForgotPasswordSuccessPageRoute.name,
                        path: 'forgot-password-success-page',
                        parent: ForgotPasswordModalRoute.name)
                  ])
            ]),
        RouteConfig(AuthenticatedFlowRoute.name,
            path: '/authenticated-flow',
            children: [
              RouteConfig(HomePageRoute.name,
                  path: '', parent: AuthenticatedFlowRoute.name),
              RouteConfig(SettingsFlowRoute.name,
                  path: 'settings-flow',
                  parent: AuthenticatedFlowRoute.name,
                  children: [
                    RouteConfig(SettingsPageRoute.name,
                        path: '', parent: SettingsFlowRoute.name),
                    RouteConfig(ChangeEmailModalRoute.name,
                        path: 'change-email-modal',
                        parent: SettingsFlowRoute.name,
                        children: [
                          RouteConfig(ChangeEmailInitialPageRoute.name,
                              path: '', parent: ChangeEmailModalRoute.name),
                          RouteConfig(ChangeEmailSuccessPageRoute.name,
                              path: 'change-email-success-page',
                              parent: ChangeEmailModalRoute.name)
                        ]),
                    RouteConfig(ChangePasswordModalRoute.name,
                        path: 'change-password-modal',
                        parent: SettingsFlowRoute.name,
                        children: [
                          RouteConfig(ChangePasswordInitialPageRoute.name,
                              path: '', parent: ChangePasswordModalRoute.name),
                          RouteConfig(ChangePasswordSuccessPageRoute.name,
                              path: 'change-password-success-page',
                              parent: ChangePasswordModalRoute.name)
                        ]),
                    RouteConfig(ChangeUsernameModalRoute.name,
                        path: 'change-username-modal',
                        parent: SettingsFlowRoute.name,
                        children: [
                          RouteConfig(ChangeUsernameInitialPageRoute.name,
                              path: '', parent: ChangeUsernameModalRoute.name),
                          RouteConfig(ChangeUsernameSuccessPageRoute.name,
                              path: 'change-username-success-page',
                              parent: ChangeUsernameModalRoute.name)
                        ]),
                    RouteConfig(EditProfileImageModalRoute.name,
                        path: 'edit-profile-image-modal',
                        parent: SettingsFlowRoute.name)
                  ]),
              RouteConfig(PrivacyPolicyPageRoute.name,
                  path: 'privacy-policy-page',
                  parent: AuthenticatedFlowRoute.name),
              RouteConfig(ContactPageRoute.name,
                  path: 'contact-page', parent: AuthenticatedFlowRoute.name),
              RouteConfig(GameInvitationsPageRoute.name,
                  path: 'game-invitations-page',
                  parent: AuthenticatedFlowRoute.name),
              RouteConfig(FriendsFlowRoute.name,
                  path: 'friends-flow',
                  parent: AuthenticatedFlowRoute.name,
                  children: [
                    RouteConfig(FriendsOverviewFlowRoute.name,
                        path: '',
                        parent: FriendsFlowRoute.name,
                        children: [
                          RouteConfig(FriendsOverviewPageRoute.name,
                              path: '', parent: FriendsOverviewFlowRoute.name),
                          RouteConfig(MoreModalRoute.name,
                              path: 'more-modal',
                              parent: FriendsOverviewFlowRoute.name),
                          RouteConfig(SearchUserModalRoute.name,
                              path: 'search-user-modal',
                              parent: FriendsOverviewFlowRoute.name)
                        ]),
                    RouteConfig(FriendsProfilePageRoute.name,
                        path: 'friends-profile-page',
                        parent: FriendsFlowRoute.name)
                  ]),
              RouteConfig(ProfilePageRoute.name,
                  path: 'profile-page', parent: AuthenticatedFlowRoute.name),
              RouteConfig(GameHistoryFlowRoute.name,
                  path: 'game-history-flow',
                  parent: AuthenticatedFlowRoute.name,
                  children: [
                    RouteConfig(GameHistoryOverviewPageRoute.name,
                        path: '', parent: GameHistoryFlowRoute.name),
                    RouteConfig(GameHistoryDetailsPageRoute.name,
                        path: 'game-history-details-page',
                        parent: GameHistoryFlowRoute.name)
                  ]),
              RouteConfig(PlayOfflineFlowRoute.name,
                  path: 'play-offline-flow',
                  parent: AuthenticatedFlowRoute.name,
                  children: [
                    RouteConfig(CreateOfflineGameFlowRoute.name,
                        path: '',
                        parent: PlayOfflineFlowRoute.name,
                        children: [
                          RouteConfig(CreateOfflineGamePageRoute.name,
                              path: '',
                              parent: CreateOfflineGameFlowRoute.name),
                          RouteConfig(CreateGameAdvancedSettingsModalRoute.name,
                              path: 'create-game-advanced-settings-modal',
                              parent: CreateOfflineGameFlowRoute.name),
                          RouteConfig(YouReallyWantToCancelGameDialogRoute.name,
                              path: 'you-really-want-to-cancel-game-dialog',
                              parent: CreateOfflineGameFlowRoute.name)
                        ]),
                    RouteConfig(InOfflineGameFlowRoute.name,
                        path: 'in-offline-game-flow',
                        parent: PlayOfflineFlowRoute.name,
                        children: [
                          RouteConfig(InOfflineGamePageRoute.name,
                              path: '', parent: InOfflineGameFlowRoute.name),
                          RouteConfig(CheckoutDetailsModalRoute.name,
                              path: 'checkout-details-modal',
                              parent: InOfflineGameFlowRoute.name),
                          RouteConfig(OfflineStatsModalRoute.name,
                              path: 'offline-stats-modal',
                              parent: InOfflineGameFlowRoute.name),
                          RouteConfig(AdvancedSettingsModalRoute.name,
                              path: 'advanced-settings-modal',
                              parent: InOfflineGameFlowRoute.name),
                          RouteConfig(YouReallyWantToCancelGameDialogRoute.name,
                              path: 'you-really-want-to-cancel-game-dialog',
                              parent: InOfflineGameFlowRoute.name)
                        ]),
                    RouteConfig(PostOfflineGamePageRoute.name,
                        path: 'post-offline-game-page',
                        parent: PlayOfflineFlowRoute.name)
                  ]),
              RouteConfig(PlayOnlineFlowRoute.name,
                  path: 'play-online-flow',
                  parent: AuthenticatedFlowRoute.name,
                  children: [
                    RouteConfig(CreateOnlineGameFlowRoute.name,
                        path: '',
                        parent: PlayOnlineFlowRoute.name,
                        children: [
                          RouteConfig(CreateOnlineGamePageRoute.name,
                              path: '', parent: CreateOnlineGameFlowRoute.name),
                          RouteConfig(CreateGameAdvancedSettingsModalRoute.name,
                              path: 'create-game-advanced-settings-modal',
                              parent: CreateOnlineGameFlowRoute.name),
                          RouteConfig(YouReallyWantToCancelGameDialogRoute.name,
                              path: 'you-really-want-to-cancel-game-dialog',
                              parent: CreateOnlineGameFlowRoute.name)
                        ]),
                    RouteConfig(InOnlineGameFlowRoute.name,
                        path: 'in-online-game-flow',
                        parent: PlayOnlineFlowRoute.name,
                        children: [
                          RouteConfig(InOnlineGamePageRoute.name,
                              path: '', parent: InOnlineGameFlowRoute.name),
                          RouteConfig(CheckoutDetailsModalRoute.name,
                              path: 'checkout-details-modal',
                              parent: InOnlineGameFlowRoute.name),
                          RouteConfig(OnlineStatsModalRoute.name,
                              path: 'online-stats-modal',
                              parent: InOnlineGameFlowRoute.name),
                          RouteConfig(AdvancedSettingsModalRoute.name,
                              path: 'advanced-settings-modal',
                              parent: InOnlineGameFlowRoute.name),
                          RouteConfig(YouReallyWantToCancelGameDialogRoute.name,
                              path: 'you-really-want-to-cancel-game-dialog',
                              parent: InOnlineGameFlowRoute.name)
                        ]),
                    RouteConfig(PostOnlineGamePageRoute.name,
                        path: 'post-online-game-page',
                        parent: PlayOnlineFlowRoute.name)
                  ]),
              RouteConfig(TrainingFlowRoute.name,
                  path: 'training-flow',
                  parent: AuthenticatedFlowRoute.name,
                  children: [
                    RouteConfig(CreateTrainingFlowRoute.name,
                        path: '',
                        parent: TrainingFlowRoute.name,
                        children: [
                          RouteConfig(CreateTrainingPageRoute.name,
                              path: '', parent: CreateTrainingFlowRoute.name),
                          RouteConfig(YouReallyWantToCancelGameDialogRoute.name,
                              path: 'you-really-want-to-cancel-game-dialog',
                              parent: CreateTrainingFlowRoute.name)
                        ]),
                    RouteConfig(InBobsTwentySevenTrainingFlowRoute.name,
                        path: 'in-bobs-twenty-seven-training-flow',
                        parent: TrainingFlowRoute.name,
                        children: [
                          RouteConfig(InBobsTwentySeventTrainingPageRoute.name,
                              path: '',
                              parent: InBobsTwentySevenTrainingFlowRoute.name),
                          RouteConfig(YouReallyWantToCancelGameDialogRoute.name,
                              path: 'you-really-want-to-cancel-game-dialog',
                              parent: InBobsTwentySevenTrainingFlowRoute.name)
                        ]),
                    RouteConfig(InScoreTrainingFlowRoute.name,
                        path: 'in-score-training-flow',
                        parent: TrainingFlowRoute.name,
                        children: [
                          RouteConfig(InScoreTrainingPageRoute.name,
                              path: '', parent: InScoreTrainingFlowRoute.name),
                          RouteConfig(YouReallyWantToCancelGameDialogRoute.name,
                              path: 'you-really-want-to-cancel-game-dialog',
                              parent: InScoreTrainingFlowRoute.name)
                        ]),
                    RouteConfig(InSingleTrainingFlowRoute.name,
                        path: 'in-single-training-flow',
                        parent: TrainingFlowRoute.name,
                        children: [
                          RouteConfig(InSingleTrainingPageRoute.name,
                              path: '', parent: InSingleTrainingFlowRoute.name),
                          RouteConfig(YouReallyWantToCancelGameDialogRoute.name,
                              path: 'you-really-want-to-cancel-game-dialog',
                              parent: InSingleTrainingFlowRoute.name)
                        ]),
                    RouteConfig(InDoubleTrainingFlowRoute.name,
                        path: 'in-double-training-flow',
                        parent: TrainingFlowRoute.name,
                        children: [
                          RouteConfig(InDoubleTrainingPageRoute.name,
                              path: '', parent: InDoubleTrainingFlowRoute.name),
                          RouteConfig(YouReallyWantToCancelGameDialogRoute.name,
                              path: 'you-really-want-to-cancel-game-dialog',
                              parent: InDoubleTrainingFlowRoute.name)
                        ]),
                    RouteConfig(PostTrainingPageRoute.name,
                        path: 'post-training-page',
                        parent: TrainingFlowRoute.name)
                  ])
            ])
      ];
}

/// generated route for
/// [UnauthenticatedFlow]
class UnauthenticatedFlowRoute extends PageRouteInfo<void> {
  const UnauthenticatedFlowRoute({List<PageRouteInfo>? children})
      : super(UnauthenticatedFlowRoute.name,
            path: '/unauthenticated-flow', initialChildren: children);

  static const String name = 'UnauthenticatedFlowRoute';
}

/// generated route for
/// [AuthenticatedFlow]
class AuthenticatedFlowRoute extends PageRouteInfo<void> {
  const AuthenticatedFlowRoute({List<PageRouteInfo>? children})
      : super(AuthenticatedFlowRoute.name,
            path: '/authenticated-flow', initialChildren: children);

  static const String name = 'AuthenticatedFlowRoute';
}

/// generated route for
/// [AuthFlow]
class AuthFlowRoute extends PageRouteInfo<void> {
  const AuthFlowRoute() : super(AuthFlowRoute.name, path: '');

  static const String name = 'AuthFlowRoute';
}

/// generated route for
/// [ForgotPasswordModal]
class ForgotPasswordModalRoute extends PageRouteInfo<void> {
  const ForgotPasswordModalRoute({List<PageRouteInfo>? children})
      : super(ForgotPasswordModalRoute.name,
            path: 'forgot-password-modal', initialChildren: children);

  static const String name = 'ForgotPasswordModalRoute';
}

/// generated route for
/// [ForgotPasswordInitialPage]
class ForgotPasswordInitialPageRoute extends PageRouteInfo<void> {
  const ForgotPasswordInitialPageRoute()
      : super(ForgotPasswordInitialPageRoute.name, path: '');

  static const String name = 'ForgotPasswordInitialPageRoute';
}

/// generated route for
/// [ForgotPasswordSuccessPage]
class ForgotPasswordSuccessPageRoute extends PageRouteInfo<void> {
  const ForgotPasswordSuccessPageRoute()
      : super(ForgotPasswordSuccessPageRoute.name,
            path: 'forgot-password-success-page');

  static const String name = 'ForgotPasswordSuccessPageRoute';
}

/// generated route for
/// [HomePage]
class HomePageRoute extends PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [SettingsFlow]
class SettingsFlowRoute extends PageRouteInfo<void> {
  const SettingsFlowRoute({List<PageRouteInfo>? children})
      : super(SettingsFlowRoute.name,
            path: 'settings-flow', initialChildren: children);

  static const String name = 'SettingsFlowRoute';
}

/// generated route for
/// [PrivacyPolicyPage]
class PrivacyPolicyPageRoute extends PageRouteInfo<void> {
  const PrivacyPolicyPageRoute()
      : super(PrivacyPolicyPageRoute.name, path: 'privacy-policy-page');

  static const String name = 'PrivacyPolicyPageRoute';
}

/// generated route for
/// [ContactPage]
class ContactPageRoute extends PageRouteInfo<void> {
  const ContactPageRoute() : super(ContactPageRoute.name, path: 'contact-page');

  static const String name = 'ContactPageRoute';
}

/// generated route for
/// [GameInvitationsPage]
class GameInvitationsPageRoute extends PageRouteInfo<void> {
  const GameInvitationsPageRoute()
      : super(GameInvitationsPageRoute.name, path: 'game-invitations-page');

  static const String name = 'GameInvitationsPageRoute';
}

/// generated route for
/// [FriendsFlow]
class FriendsFlowRoute extends PageRouteInfo<void> {
  const FriendsFlowRoute({List<PageRouteInfo>? children})
      : super(FriendsFlowRoute.name,
            path: 'friends-flow', initialChildren: children);

  static const String name = 'FriendsFlowRoute';
}

/// generated route for
/// [ProfilePage]
class ProfilePageRoute extends PageRouteInfo<void> {
  const ProfilePageRoute() : super(ProfilePageRoute.name, path: 'profile-page');

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [GameHistoryFlow]
class GameHistoryFlowRoute extends PageRouteInfo<GameHistoryFlowRouteArgs> {
  GameHistoryFlowRoute(
      {Key? key,
      required GameHistoryBloc gameHistoryBloc,
      List<PageRouteInfo>? children})
      : super(GameHistoryFlowRoute.name,
            path: 'game-history-flow',
            args: GameHistoryFlowRouteArgs(
                key: key, gameHistoryBloc: gameHistoryBloc),
            initialChildren: children);

  static const String name = 'GameHistoryFlowRoute';
}

class GameHistoryFlowRouteArgs {
  const GameHistoryFlowRouteArgs({this.key, required this.gameHistoryBloc});

  final Key? key;

  final GameHistoryBloc gameHistoryBloc;

  @override
  String toString() {
    return 'GameHistoryFlowRouteArgs{key: $key, gameHistoryBloc: $gameHistoryBloc}';
  }
}

/// generated route for
/// [PlayOfflineFlow]
class PlayOfflineFlowRoute extends PageRouteInfo<void> {
  const PlayOfflineFlowRoute({List<PageRouteInfo>? children})
      : super(PlayOfflineFlowRoute.name,
            path: 'play-offline-flow', initialChildren: children);

  static const String name = 'PlayOfflineFlowRoute';
}

/// generated route for
/// [PlayOnlineFlow]
class PlayOnlineFlowRoute extends PageRouteInfo<void> {
  const PlayOnlineFlowRoute({List<PageRouteInfo>? children})
      : super(PlayOnlineFlowRoute.name,
            path: 'play-online-flow', initialChildren: children);

  static const String name = 'PlayOnlineFlowRoute';
}

/// generated route for
/// [TrainingFlow]
class TrainingFlowRoute extends PageRouteInfo<void> {
  const TrainingFlowRoute({List<PageRouteInfo>? children})
      : super(TrainingFlowRoute.name,
            path: 'training-flow', initialChildren: children);

  static const String name = 'TrainingFlowRoute';
}

/// generated route for
/// [SettingsPage]
class SettingsPageRoute extends PageRouteInfo<void> {
  const SettingsPageRoute() : super(SettingsPageRoute.name, path: '');

  static const String name = 'SettingsPageRoute';
}

/// generated route for
/// [ChangeEmailModal]
class ChangeEmailModalRoute extends PageRouteInfo<void> {
  const ChangeEmailModalRoute({List<PageRouteInfo>? children})
      : super(ChangeEmailModalRoute.name,
            path: 'change-email-modal', initialChildren: children);

  static const String name = 'ChangeEmailModalRoute';
}

/// generated route for
/// [ChangePasswordModal]
class ChangePasswordModalRoute extends PageRouteInfo<void> {
  const ChangePasswordModalRoute({List<PageRouteInfo>? children})
      : super(ChangePasswordModalRoute.name,
            path: 'change-password-modal', initialChildren: children);

  static const String name = 'ChangePasswordModalRoute';
}

/// generated route for
/// [ChangeUsernameModal]
class ChangeUsernameModalRoute extends PageRouteInfo<void> {
  const ChangeUsernameModalRoute({List<PageRouteInfo>? children})
      : super(ChangeUsernameModalRoute.name,
            path: 'change-username-modal', initialChildren: children);

  static const String name = 'ChangeUsernameModalRoute';
}

/// generated route for
/// [EditProfileImageModal]
class EditProfileImageModalRoute extends PageRouteInfo<void> {
  const EditProfileImageModalRoute()
      : super(EditProfileImageModalRoute.name,
            path: 'edit-profile-image-modal');

  static const String name = 'EditProfileImageModalRoute';
}

/// generated route for
/// [ChangeEmailInitialPage]
class ChangeEmailInitialPageRoute extends PageRouteInfo<void> {
  const ChangeEmailInitialPageRoute()
      : super(ChangeEmailInitialPageRoute.name, path: '');

  static const String name = 'ChangeEmailInitialPageRoute';
}

/// generated route for
/// [ChangeEmailSuccessPage]
class ChangeEmailSuccessPageRoute extends PageRouteInfo<void> {
  const ChangeEmailSuccessPageRoute()
      : super(ChangeEmailSuccessPageRoute.name,
            path: 'change-email-success-page');

  static const String name = 'ChangeEmailSuccessPageRoute';
}

/// generated route for
/// [ChangePasswordInitialPage]
class ChangePasswordInitialPageRoute extends PageRouteInfo<void> {
  const ChangePasswordInitialPageRoute()
      : super(ChangePasswordInitialPageRoute.name, path: '');

  static const String name = 'ChangePasswordInitialPageRoute';
}

/// generated route for
/// [ChangePasswordSuccessPage]
class ChangePasswordSuccessPageRoute extends PageRouteInfo<void> {
  const ChangePasswordSuccessPageRoute()
      : super(ChangePasswordSuccessPageRoute.name,
            path: 'change-password-success-page');

  static const String name = 'ChangePasswordSuccessPageRoute';
}

/// generated route for
/// [ChangeUsernameInitialPage]
class ChangeUsernameInitialPageRoute extends PageRouteInfo<void> {
  const ChangeUsernameInitialPageRoute()
      : super(ChangeUsernameInitialPageRoute.name, path: '');

  static const String name = 'ChangeUsernameInitialPageRoute';
}

/// generated route for
/// [ChangeUsernameSuccessPage]
class ChangeUsernameSuccessPageRoute extends PageRouteInfo<void> {
  const ChangeUsernameSuccessPageRoute()
      : super(ChangeUsernameSuccessPageRoute.name,
            path: 'change-username-success-page');

  static const String name = 'ChangeUsernameSuccessPageRoute';
}

/// generated route for
/// [FriendsOverviewFlow]
class FriendsOverviewFlowRoute extends PageRouteInfo<void> {
  const FriendsOverviewFlowRoute({List<PageRouteInfo>? children})
      : super(FriendsOverviewFlowRoute.name,
            path: '', initialChildren: children);

  static const String name = 'FriendsOverviewFlowRoute';
}

/// generated route for
/// [FriendsProfilePage]
class FriendsProfilePageRoute extends PageRouteInfo<void> {
  const FriendsProfilePageRoute()
      : super(FriendsProfilePageRoute.name, path: 'friends-profile-page');

  static const String name = 'FriendsProfilePageRoute';
}

/// generated route for
/// [FriendsOverviewPage]
class FriendsOverviewPageRoute extends PageRouteInfo<void> {
  const FriendsOverviewPageRoute()
      : super(FriendsOverviewPageRoute.name, path: '');

  static const String name = 'FriendsOverviewPageRoute';
}

/// generated route for
/// [MoreModal]
class MoreModalRoute extends PageRouteInfo<void> {
  const MoreModalRoute() : super(MoreModalRoute.name, path: 'more-modal');

  static const String name = 'MoreModalRoute';
}

/// generated route for
/// [SearchUserModal]
class SearchUserModalRoute extends PageRouteInfo<void> {
  const SearchUserModalRoute()
      : super(SearchUserModalRoute.name, path: 'search-user-modal');

  static const String name = 'SearchUserModalRoute';
}

/// generated route for
/// [GameHistoryOverviewPage]
class GameHistoryOverviewPageRoute extends PageRouteInfo<void> {
  const GameHistoryOverviewPageRoute()
      : super(GameHistoryOverviewPageRoute.name, path: '');

  static const String name = 'GameHistoryOverviewPageRoute';
}

/// generated route for
/// [GameHistoryDetailsPage]
class GameHistoryDetailsPageRoute extends PageRouteInfo<void> {
  const GameHistoryDetailsPageRoute()
      : super(GameHistoryDetailsPageRoute.name,
            path: 'game-history-details-page');

  static const String name = 'GameHistoryDetailsPageRoute';
}

/// generated route for
/// [CreateOfflineGameFlow]
class CreateOfflineGameFlowRoute extends PageRouteInfo<void> {
  const CreateOfflineGameFlowRoute({List<PageRouteInfo>? children})
      : super(CreateOfflineGameFlowRoute.name,
            path: '', initialChildren: children);

  static const String name = 'CreateOfflineGameFlowRoute';
}

/// generated route for
/// [InOfflineGameFlow]
class InOfflineGameFlowRoute extends PageRouteInfo<void> {
  const InOfflineGameFlowRoute({List<PageRouteInfo>? children})
      : super(InOfflineGameFlowRoute.name,
            path: 'in-offline-game-flow', initialChildren: children);

  static const String name = 'InOfflineGameFlowRoute';
}

/// generated route for
/// [PostOfflineGamePage]
class PostOfflineGamePageRoute
    extends PageRouteInfo<PostOfflineGamePageRouteArgs> {
  PostOfflineGamePageRoute({Key? key, required OfflineGameSnapshot snapshot})
      : super(PostOfflineGamePageRoute.name,
            path: 'post-offline-game-page',
            args: PostOfflineGamePageRouteArgs(key: key, snapshot: snapshot));

  static const String name = 'PostOfflineGamePageRoute';
}

class PostOfflineGamePageRouteArgs {
  const PostOfflineGamePageRouteArgs({this.key, required this.snapshot});

  final Key? key;

  final OfflineGameSnapshot snapshot;

  @override
  String toString() {
    return 'PostOfflineGamePageRouteArgs{key: $key, snapshot: $snapshot}';
  }
}

/// generated route for
/// [CreateOfflineGamePage]
class CreateOfflineGamePageRoute
    extends PageRouteInfo<CreateOfflineGamePageRouteArgs> {
  CreateOfflineGamePageRoute(
      {Key? key, required OfflineGameSnapshot initialSnapshot})
      : super(CreateOfflineGamePageRoute.name,
            path: '',
            args: CreateOfflineGamePageRouteArgs(
                key: key, initialSnapshot: initialSnapshot));

  static const String name = 'CreateOfflineGamePageRoute';
}

class CreateOfflineGamePageRouteArgs {
  const CreateOfflineGamePageRouteArgs(
      {this.key, required this.initialSnapshot});

  final Key? key;

  final OfflineGameSnapshot initialSnapshot;

  @override
  String toString() {
    return 'CreateOfflineGamePageRouteArgs{key: $key, initialSnapshot: $initialSnapshot}';
  }
}

/// generated route for
/// [CreateGameAdvancedSettingsModal]
class CreateGameAdvancedSettingsModalRoute
    extends PageRouteInfo<CreateGameAdvancedSettingsModalRouteArgs> {
  CreateGameAdvancedSettingsModalRoute({Key? key, required int index})
      : super(CreateGameAdvancedSettingsModalRoute.name,
            path: 'create-game-advanced-settings-modal',
            args: CreateGameAdvancedSettingsModalRouteArgs(
                key: key, index: index));

  static const String name = 'CreateGameAdvancedSettingsModalRoute';
}

class CreateGameAdvancedSettingsModalRouteArgs {
  const CreateGameAdvancedSettingsModalRouteArgs(
      {this.key, required this.index});

  final Key? key;

  final int index;

  @override
  String toString() {
    return 'CreateGameAdvancedSettingsModalRouteArgs{key: $key, index: $index}';
  }
}

/// generated route for
/// [YouReallyWantToCancelGameDialog]
class YouReallyWantToCancelGameDialogRoute
    extends PageRouteInfo<YouReallyWantToCancelGameDialogRouteArgs> {
  YouReallyWantToCancelGameDialogRoute(
      {Key? key, required void Function() onYesPressed})
      : super(YouReallyWantToCancelGameDialogRoute.name,
            path: 'you-really-want-to-cancel-game-dialog',
            args: YouReallyWantToCancelGameDialogRouteArgs(
                key: key, onYesPressed: onYesPressed));

  static const String name = 'YouReallyWantToCancelGameDialogRoute';
}

class YouReallyWantToCancelGameDialogRouteArgs {
  const YouReallyWantToCancelGameDialogRouteArgs(
      {this.key, required this.onYesPressed});

  final Key? key;

  final void Function() onYesPressed;

  @override
  String toString() {
    return 'YouReallyWantToCancelGameDialogRouteArgs{key: $key, onYesPressed: $onYesPressed}';
  }
}

/// generated route for
/// [InOfflineGamePage]
class InOfflineGamePageRoute extends PageRouteInfo<InOfflineGamePageRouteArgs> {
  InOfflineGamePageRoute(
      {Key? key, required OfflineGameSnapshot initialSnapshot})
      : super(InOfflineGamePageRoute.name,
            path: '',
            args: InOfflineGamePageRouteArgs(
                key: key, initialSnapshot: initialSnapshot));

  static const String name = 'InOfflineGamePageRoute';
}

class InOfflineGamePageRouteArgs {
  const InOfflineGamePageRouteArgs({this.key, required this.initialSnapshot});

  final Key? key;

  final OfflineGameSnapshot initialSnapshot;

  @override
  String toString() {
    return 'InOfflineGamePageRouteArgs{key: $key, initialSnapshot: $initialSnapshot}';
  }
}

/// generated route for
/// [CheckoutDetailsModal]
class CheckoutDetailsModalRoute
    extends PageRouteInfo<CheckoutDetailsModalRouteArgs> {
  CheckoutDetailsModalRoute(
      {Key? key,
      required Bloc<CheckoutDetailsEvent, CheckoutDetailsState> bloc})
      : super(CheckoutDetailsModalRoute.name,
            path: 'checkout-details-modal',
            args: CheckoutDetailsModalRouteArgs(key: key, bloc: bloc));

  static const String name = 'CheckoutDetailsModalRoute';
}

class CheckoutDetailsModalRouteArgs {
  const CheckoutDetailsModalRouteArgs({this.key, required this.bloc});

  final Key? key;

  final Bloc<CheckoutDetailsEvent, CheckoutDetailsState> bloc;

  @override
  String toString() {
    return 'CheckoutDetailsModalRouteArgs{key: $key, bloc: $bloc}';
  }
}

/// generated route for
/// [OfflineStatsModal]
class OfflineStatsModalRoute extends PageRouteInfo<OfflineStatsModalRouteArgs> {
  OfflineStatsModalRoute({Key? key, required OfflineGameSnapshot snapshot})
      : super(OfflineStatsModalRoute.name,
            path: 'offline-stats-modal',
            args: OfflineStatsModalRouteArgs(key: key, snapshot: snapshot));

  static const String name = 'OfflineStatsModalRoute';
}

class OfflineStatsModalRouteArgs {
  const OfflineStatsModalRouteArgs({this.key, required this.snapshot});

  final Key? key;

  final OfflineGameSnapshot snapshot;

  @override
  String toString() {
    return 'OfflineStatsModalRouteArgs{key: $key, snapshot: $snapshot}';
  }
}

/// generated route for
/// [AdvancedSettingsModal]
class AdvancedSettingsModalRoute
    extends PageRouteInfo<AdvancedSettingsModalRouteArgs> {
  AdvancedSettingsModalRoute(
      {Key? key, required KtList<AbstractPlayerSnapshot> players})
      : super(AdvancedSettingsModalRoute.name,
            path: 'advanced-settings-modal',
            args: AdvancedSettingsModalRouteArgs(key: key, players: players));

  static const String name = 'AdvancedSettingsModalRoute';
}

class AdvancedSettingsModalRouteArgs {
  const AdvancedSettingsModalRouteArgs({this.key, required this.players});

  final Key? key;

  final KtList<AbstractPlayerSnapshot> players;

  @override
  String toString() {
    return 'AdvancedSettingsModalRouteArgs{key: $key, players: $players}';
  }
}

/// generated route for
/// [CreateOnlineGameFlow]
class CreateOnlineGameFlowRoute extends PageRouteInfo<void> {
  const CreateOnlineGameFlowRoute({List<PageRouteInfo>? children})
      : super(CreateOnlineGameFlowRoute.name,
            path: '', initialChildren: children);

  static const String name = 'CreateOnlineGameFlowRoute';
}

/// generated route for
/// [InOnlineGameFlow]
class InOnlineGameFlowRoute extends PageRouteInfo<void> {
  const InOnlineGameFlowRoute({List<PageRouteInfo>? children})
      : super(InOnlineGameFlowRoute.name,
            path: 'in-online-game-flow', initialChildren: children);

  static const String name = 'InOnlineGameFlowRoute';
}

/// generated route for
/// [PostOnlineGamePage]
class PostOnlineGamePageRoute
    extends PageRouteInfo<PostOnlineGamePageRouteArgs> {
  PostOnlineGamePageRoute({Key? key, required OnlineGameSnapshot snapshot})
      : super(PostOnlineGamePageRoute.name,
            path: 'post-online-game-page',
            args: PostOnlineGamePageRouteArgs(key: key, snapshot: snapshot));

  static const String name = 'PostOnlineGamePageRoute';
}

class PostOnlineGamePageRouteArgs {
  const PostOnlineGamePageRouteArgs({this.key, required this.snapshot});

  final Key? key;

  final OnlineGameSnapshot snapshot;

  @override
  String toString() {
    return 'PostOnlineGamePageRouteArgs{key: $key, snapshot: $snapshot}';
  }
}

/// generated route for
/// [CreateOnlineGamePage]
class CreateOnlineGamePageRoute
    extends PageRouteInfo<CreateOnlineGamePageRouteArgs> {
  CreateOnlineGamePageRoute(
      {Key? key, required OnlineGameSnapshot initialSnapshot})
      : super(CreateOnlineGamePageRoute.name,
            path: '',
            args: CreateOnlineGamePageRouteArgs(
                key: key, initialSnapshot: initialSnapshot));

  static const String name = 'CreateOnlineGamePageRoute';
}

class CreateOnlineGamePageRouteArgs {
  const CreateOnlineGamePageRouteArgs(
      {this.key, required this.initialSnapshot});

  final Key? key;

  final OnlineGameSnapshot initialSnapshot;

  @override
  String toString() {
    return 'CreateOnlineGamePageRouteArgs{key: $key, initialSnapshot: $initialSnapshot}';
  }
}

/// generated route for
/// [InOnlineGamePage]
class InOnlineGamePageRoute extends PageRouteInfo<InOnlineGamePageRouteArgs> {
  InOnlineGamePageRoute({Key? key, required OnlineGameSnapshot initialSnapshot})
      : super(InOnlineGamePageRoute.name,
            path: '',
            args: InOnlineGamePageRouteArgs(
                key: key, initialSnapshot: initialSnapshot));

  static const String name = 'InOnlineGamePageRoute';
}

class InOnlineGamePageRouteArgs {
  const InOnlineGamePageRouteArgs({this.key, required this.initialSnapshot});

  final Key? key;

  final OnlineGameSnapshot initialSnapshot;

  @override
  String toString() {
    return 'InOnlineGamePageRouteArgs{key: $key, initialSnapshot: $initialSnapshot}';
  }
}

/// generated route for
/// [OnlineStatsModal]
class OnlineStatsModalRoute extends PageRouteInfo<OnlineStatsModalRouteArgs> {
  OnlineStatsModalRoute({Key? key, required OnlineGameSnapshot snapshot})
      : super(OnlineStatsModalRoute.name,
            path: 'online-stats-modal',
            args: OnlineStatsModalRouteArgs(key: key, snapshot: snapshot));

  static const String name = 'OnlineStatsModalRoute';
}

class OnlineStatsModalRouteArgs {
  const OnlineStatsModalRouteArgs({this.key, required this.snapshot});

  final Key? key;

  final OnlineGameSnapshot snapshot;

  @override
  String toString() {
    return 'OnlineStatsModalRouteArgs{key: $key, snapshot: $snapshot}';
  }
}

/// generated route for
/// [CreateTrainingFlow]
class CreateTrainingFlowRoute extends PageRouteInfo<void> {
  const CreateTrainingFlowRoute({List<PageRouteInfo>? children})
      : super(CreateTrainingFlowRoute.name,
            path: '', initialChildren: children);

  static const String name = 'CreateTrainingFlowRoute';
}

/// generated route for
/// [InBobsTwentySevenTrainingFlow]
class InBobsTwentySevenTrainingFlowRoute extends PageRouteInfo<void> {
  const InBobsTwentySevenTrainingFlowRoute({List<PageRouteInfo>? children})
      : super(InBobsTwentySevenTrainingFlowRoute.name,
            path: 'in-bobs-twenty-seven-training-flow',
            initialChildren: children);

  static const String name = 'InBobsTwentySevenTrainingFlowRoute';
}

/// generated route for
/// [InScoreTrainingFlow]
class InScoreTrainingFlowRoute extends PageRouteInfo<void> {
  const InScoreTrainingFlowRoute({List<PageRouteInfo>? children})
      : super(InScoreTrainingFlowRoute.name,
            path: 'in-score-training-flow', initialChildren: children);

  static const String name = 'InScoreTrainingFlowRoute';
}

/// generated route for
/// [InSingleTrainingFlow]
class InSingleTrainingFlowRoute extends PageRouteInfo<void> {
  const InSingleTrainingFlowRoute({List<PageRouteInfo>? children})
      : super(InSingleTrainingFlowRoute.name,
            path: 'in-single-training-flow', initialChildren: children);

  static const String name = 'InSingleTrainingFlowRoute';
}

/// generated route for
/// [InDoubleTrainingFlow]
class InDoubleTrainingFlowRoute extends PageRouteInfo<void> {
  const InDoubleTrainingFlowRoute({List<PageRouteInfo>? children})
      : super(InDoubleTrainingFlowRoute.name,
            path: 'in-double-training-flow', initialChildren: children);

  static const String name = 'InDoubleTrainingFlowRoute';
}

/// generated route for
/// [PostTrainingPage]
class PostTrainingPageRoute extends PageRouteInfo<void> {
  const PostTrainingPageRoute()
      : super(PostTrainingPageRoute.name, path: 'post-training-page');

  static const String name = 'PostTrainingPageRoute';
}

/// generated route for
/// [CreateTrainingPage]
class CreateTrainingPageRoute extends PageRouteInfo<void> {
  const CreateTrainingPageRoute()
      : super(CreateTrainingPageRoute.name, path: '');

  static const String name = 'CreateTrainingPageRoute';
}

/// generated route for
/// [InBobsTwentySeventTrainingPage]
class InBobsTwentySeventTrainingPageRoute extends PageRouteInfo<void> {
  const InBobsTwentySeventTrainingPageRoute()
      : super(InBobsTwentySeventTrainingPageRoute.name, path: '');

  static const String name = 'InBobsTwentySeventTrainingPageRoute';
}

/// generated route for
/// [InScoreTrainingPage]
class InScoreTrainingPageRoute extends PageRouteInfo<void> {
  const InScoreTrainingPageRoute()
      : super(InScoreTrainingPageRoute.name, path: '');

  static const String name = 'InScoreTrainingPageRoute';
}

/// generated route for
/// [InSingleTrainingPage]
class InSingleTrainingPageRoute extends PageRouteInfo<void> {
  const InSingleTrainingPageRoute()
      : super(InSingleTrainingPageRoute.name, path: '');

  static const String name = 'InSingleTrainingPageRoute';
}

/// generated route for
/// [InDoubleTrainingPage]
class InDoubleTrainingPageRoute extends PageRouteInfo<void> {
  const InDoubleTrainingPageRoute()
      : super(InDoubleTrainingPageRoute.name, path: '');

  static const String name = 'InDoubleTrainingPageRoute';
}
