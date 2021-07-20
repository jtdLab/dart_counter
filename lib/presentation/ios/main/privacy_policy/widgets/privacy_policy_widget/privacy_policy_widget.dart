import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/logo_displayer.dart';

class PrivacyPolicyWidget extends StatelessWidget {
  const PrivacyPolicyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // TODO  size for diffrent size classes
        const AppSpacer.custom(
          mobileSize: ResponsiveDouble(
            small: 70,
            normal: 70,
            large: 70,
            extraLarge: 70,
          ),
        ),
        const LogoDisplayer(),
        // TODO  size for diffrent size classes
        const AppSpacer.custom(
          mobileSize: ResponsiveDouble(
            small: 120,
            normal: 120,
            large: 120,
            extraLarge: 120,
          ),
        ),
        Text(
          LocaleKeys.privacyAndLegal.tr().toUpperCase(),
        ),
        const AppSpacer.large(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Text(
            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.'
                .toUpperCase(),
            textAlign: TextAlign.justify,
            style: const TextStyle(
              fontSize: 8,
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
