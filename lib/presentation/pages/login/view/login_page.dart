import 'package:flutter/material.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/pages/login/widgets/image_row.dart';
import 'package:movie_app/presentation/pages/login/widgets/login_and_reg_form.dart';
import 'package:movie_app/presentation/themes/values.dart';

import '../../../../core/utils/generics/is_keyboard_active.dart';
import '../../../components/background.dart';
import '../../../themes/screen_size_config.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    return Scaffold(
      body: Background(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding * 2),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Assets.images.logo2.svg(),
                    const SizedBox(height: kDefaultPadding * 1.5),
                    Visibility(
                      visible: isKeyboardActive(context) ? false : true,
                      child: Column(
                        children: const [
                          ImageRow__widget(),
                          SizedBox(height: kDefaultPadding * 1.5),
                          Bold__text(
                            text: 'See what’s next.',
                            fontSize: 18.0,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: kDefaultPadding / 2),
                          Body__text(
                            text:
                                'Watch TV shows anytime anywhere & whenever you want.',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              LoginAndRegForm__widget(),
            ],
          ),
        ),
      ),
    );
  }
}
