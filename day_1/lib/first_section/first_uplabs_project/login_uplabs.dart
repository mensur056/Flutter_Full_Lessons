import 'package:day_1/first_section/first_uplabs_project/const/padding.dart';
import 'package:day_1/first_section/first_uplabs_project/const/strings.dart';
import 'package:day_1/first_section/first_uplabs_project/widget/elevated_button.dart';
import 'package:day_1/first_section/first_uplabs_project/widget/icon_button.dart';
import 'package:day_1/first_section/first_uplabs_project/widget/text.dart';
import 'package:day_1/first_section/first_uplabs_project/widget/text_field.dart';
import 'package:day_1/first_section/first_uplabs_project/widget/text_login.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: MyProjectPadding.paddingHorizontal40,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomTextLogin(
              color: Colors.black,
              textHeight: 36,
            ),
            customSizedBox(),
            RichText(
              text: TextSpan(
                children: [
                  customTextSpan(
                    MyProjectStrings.account,
                  ),
                  customTextSpan(MyProjectStrings.create),
                  customTextSpan(MyProjectStrings.description),
                ],
              ),
            ),
            const CustomTextField(
              title: MyProjectStrings.textFiledUserName,
              icon: Icons.person,
            ),
            const CustomTextField(
              title: MyProjectStrings.textFiledPassWord,
              icon: Icons.lock,
            ),
            customSizedBox(),
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                const CustomText(
                  title: MyProjectStrings.remember,
                ),
                const Spacer(),
                const CustomText(
                  title: MyProjectStrings.forgotPass,
                )
              ],
            ),
            customSizedBox(),
            const CustomElevatedButton(),
            customSizedBox(),
            Row(
              children: const [
                CustomText(
                  title: MyProjectStrings.orLogin,
                ),
                Spacer(),
                CustomIconButton(
                  icon: Icons.facebook,
                ),
                CustomIconButton(
                  icon: Icons.abc,
                ),
                CustomIconButton(
                  icon: Icons.add,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  TextSpan customTextSpan(String title) => TextSpan(
        text: title,
      );

  SizedBox customSizedBox() {
    return const SizedBox(
      height: 20,
    );
  }
}
