import 'package:dart_counter/application/settings/edit_profile_image/edit_profile_image_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class EditProfileImageModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EditProfileImageBloc>(),
      child: const EditProfileImageWidget(),
    );
  }
}
