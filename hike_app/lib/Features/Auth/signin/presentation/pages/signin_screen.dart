import 'package:hike_app/Features/Auth/basic_auth_screen.dart';
import 'package:hike_app/Features/Auth/signin/presentation/widgets/sign_in_form.dart';
import 'package:hike_app/Features/Auth/signin/presentation/widgets/sign_in_header.dart';

class HikeSignInScreen extends BaseAuthScreen {
  const HikeSignInScreen({super.key})
    : super(
        header: const SignInHeader(),
        form: const SignInForm(),
        tagline: 'Reconnect with people who love hiking just like you!',
      );
}
