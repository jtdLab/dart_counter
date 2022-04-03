part of './privacy_policy_page.dart';

// BODY
class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPage(
      navigationBar: AppNavigationBar(
        middle: Text(
          context.l10n.privacyPolicy.toUpperCase(),
        ),
        leading: const BackButton(),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: modalLogoMarginTop(context),
            ),
            const LogoDisplayer(),
            SizedBox(
              height: modalLogoMarginBottom(context),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size50(context) - 10,
              ), // TODO responsive
              child: Text(
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.'
                    .toUpperCase(),
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 10,
                ),
              ),
            ),
            SizedBox(
              height: spacerLarge(context),
            ),
          ],
        ),
      ),
    );
  }
}
