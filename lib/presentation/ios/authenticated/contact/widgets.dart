part of './contact_page.dart';

// BODY
class _ContactWidget extends StatelessWidget {
  const _ContactWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: modalLogoMarginTop(context),
        ),
        const LogoDisplayer(),
        SizedBox(
          height: modalLogoMarginBottom(context),
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
