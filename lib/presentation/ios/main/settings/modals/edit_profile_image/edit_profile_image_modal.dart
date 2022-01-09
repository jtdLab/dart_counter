// BLOC
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOC
import 'package:dart_counter/application/main/settings/edit_profile_image/edit_profile_image_bloc.dart';

// LOCAL WIDGETS
part 'widgets.dart';

// TODO use app page here
class EditProfileImageModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EditProfileImageBloc>(),
      child: const AppModal(
        child: _EditProfileImageWidget(),
      ),
    );
  }
}
