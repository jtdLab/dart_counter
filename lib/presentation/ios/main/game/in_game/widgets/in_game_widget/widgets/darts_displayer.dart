import 'package:dart_counter/domain/play/dart.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

class DartsDisplayer extends StatelessWidget {
  final KtList<Dart> darts;

  const DartsDisplayer({
    Key? key,
    required this.darts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2 * size12(context),
      color: AppColors.black,
      child: AppRow(
        spacing: size6(context),
        children: [
          const Spacer(),
          Image.asset(AppImages.flightWhiteOne),
          Text(
            _mapDartToString(
              dart: darts.size > 0 ? darts.get(0) : null,
            ),
            style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                  color: AppColors.white,
                ),
          ),
          const Spacer(),
          Image.asset(AppImages.flightWhiteTwo),
          Text(
            _mapDartToString(
              dart: darts.size > 1 ? darts.get(1) : null,
            ),
            style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                  color: AppColors.white,
                ),
          ),
          const Spacer(),
          Image.asset(AppImages.flightWhiteThree),
          Text(
            _mapDartToString(
              dart: darts.size > 2 ? darts.get(2) : null,
            ),
            style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                  color: AppColors.white,
                ),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  String _mapDartToString({
    Dart? dart,
  }) {
    if (dart == null) {
      return '-';
    } else {
      var string = '';
      switch (dart.type) {
        case DartType.s:
          string += 'S';
          break;
        case DartType.d:
          string += 'D';
          break;
        case DartType.t:
          string += 'T';
          break;
      }

      return string + dart.value.toString();
    }
  }
}