import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it_done/constants/light.dart';
import 'package:get_it_done/constants/light_dark.dart';
import 'package:get_it_done/services/authentication.dart';
import 'package:get_it_done/widgets/c_clipper_widget.dart';
import 'package:get_it_done/widgets/c_text_field.dart';
import 'package:get_it_done/widgets/cbutton.dart';

class MoreInfo extends StatefulWidget {
  const MoreInfo({Key? key}) : super(key: key);

  @override
  State<MoreInfo> createState() => _MoreInfoState();
}

class _MoreInfoState extends State<MoreInfo> {
  final _auth = AuthService();
  final _fireStore = FirebaseFirestore.instance;
  late String profession;
  late String name;
  late String country;
  @override
  Widget build(BuildContext context) {
    // used this willpopscope screen to make sure user has a chance
    // to enter more details.
    return WillPopScope(
      onWillPop: ()async=> false,
      child: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            backgroundColor: klBackgroundColorScaffold,
            resizeToAvoidBottomInset: false,
            body: Column(
              children: [
                CClipperWidget(
                  clipper: WaveClipperOne(),
                  color: klBackgroundColorHomeClipper,
                  heightFactor: 0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "One More Step",
                        style: klFontLogo(context),
                      ),
                      Text(
                        "Tell us more",
                        style: klFontTagLine(context),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: kldPaddingNameTextField(context),
                            child: CTextField(
                              hasIcon: true,
                              prefixIcon: const FaIcon(
                                FontAwesomeIcons.idCard,
                                color: Color(0xff065C6F),
                              ),
                              obscureText: false,
                              hintText: "Enter Name",
                              keyboardType: TextInputType.name,
                              hintTextFont: klFontEmailHint(context),
                              userTextFont: klFontEmailUser(context),
                              borderWidth: 2.2,
                              borderColor: klBorderColorEmailPasswordTextField,
                              onChanged: (value) {
                                name = value;
                              },
                            ),
                          ),
                          Padding(
                            padding: kldPaddingProfessionTextField(context),
                            child: CTextField(
                                hasIcon: true,
                                prefixIcon: const FaIcon(
                                  FontAwesomeIcons.toolbox,
                                  color: Color(0xff065C6F),
                                ),
                                obscureText: false,
                                hintText: "Enter Profession",
                                keyboardType: TextInputType.name,
                                hintTextFont: klFontEmailHint(context),
                                userTextFont: klFontEmailUser(context),
                                borderWidth: 2.2,
                                borderColor: klBorderColorEmailPasswordTextField,
                                onChanged: (value) {
                                  profession = value;
                                }),
                          ),
                          Padding(
                            padding: kldPaddingCountryTextField(context),
                            child: CTextField(
                                hasIcon: true,
                                prefixIcon: const FaIcon(
                                  FontAwesomeIcons.globe,
                                  color: Color(0xff065C6F),
                                ),
                                obscureText: false,
                                hintText: "Enter Country",
                                keyboardType: TextInputType.name,
                                hintTextFont: klFontEmailHint(context),
                                userTextFont: klFontEmailUser(context),
                                borderWidth: 2.2,
                                borderColor: klBorderColorEmailPasswordTextField,
                                onChanged: (value) {
                                  country = value;
                                }),
                          ),
                        ],
                      ),
                      CButton(
                        onTap: () async {
                          await _fireStore
                              .collection('users')
                              .doc(_auth.currentUser()!.uid)
                              .set({
                            "name": name,
                            "country": country,
                            "profession": profession,
                            "reviews": 0,
                          });
                          if (mounted) {
                            Navigator.pushNamed(context, '/dashboard');
                          }
                        },
                        buttonColor: klColorLoginButton,
                        height: 80,
                        width: 250,
                        text: "Save",
                        font: klFontEmailUser(context),
                        margin: const EdgeInsets.all(0),
                        borderColor: klBorderColorLoginButton,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
