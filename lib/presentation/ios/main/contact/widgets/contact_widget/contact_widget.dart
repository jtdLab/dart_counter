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
            small: 50,
            normal: 60,
            large: 69,
            extraLarge: 78,
          ),
        ),
        const LogoDisplayer(),
        // TODO  size for diffrent size classes
        const AppSpacer.custom(
          mobileSize: ResponsiveDouble(
            small: 96,
            normal: 110,
            large: 123,
            extraLarge: 140,
          ),
        ),
        Text(
          'David Schlauch\r\nElisabethenstrasse 7\r\n87700 Memmingen\r\ndartsger.business@gmail.com'
              .toUpperCase(),
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 10,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
