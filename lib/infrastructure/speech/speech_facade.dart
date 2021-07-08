import 'package:dart_counter/domain/speech/i_speech_facade.dart';
import 'package:injectable/injectable.dart';

@Environment(Environment.test)
@Environment(Environment.prod)
class SpeechFacade implements ISpeechFacade {
  
}
