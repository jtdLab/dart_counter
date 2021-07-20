import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/logo_displayer.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({
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
          LocaleKeys.contact.tr().toUpperCase(),
        ),
        const AppSpacer.large(),
        Text(
          'David Schlauch\r\nElisabethenstrasse 7\r\n87700 Memmingen\r\ndartsger.business@gmail.com'
              .toUpperCase(),
              textAlign: TextAlign.center,
          style: const TextStyle(
            
            fontSize: 8,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
