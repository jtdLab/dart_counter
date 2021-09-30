// BLOC
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOC
import 'package:dart_counter/application/settings/edit_profile_image/edit_profile_image_bloc.dart';

// SHARED WIDGETS
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_primary_button.dart';

// LOCAL WIDGETS
part 'widgets.dart';

// TODO use app page here
class EditProfileImageModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EditProfileImageBloc>(),
      child: const EditProfileImageWidget(),
    );
  }
}
