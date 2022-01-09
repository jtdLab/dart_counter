import 'package:timeago/timeago.dart' as timeago;

class DeMessages extends timeago.DeMessages {
  @override
  String lessThanOneMinute(int seconds) => 'einer Minute';
}
