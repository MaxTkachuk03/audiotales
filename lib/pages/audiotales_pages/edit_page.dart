import 'dart:io';

import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/pages/audiotales_pages/profile_page.dart';
import 'package:audiotales/resouses/borders.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/resouses/icons.dart';
import 'package:audiotales/resouses/images.dart';
import 'package:audiotales/widgets/buttons/text_button_save.dart';
import 'package:audiotales/widgets/paint/circular_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  static const routeName = '/audiotales/edit';

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  File? imageFile;

  Future<void> _getImageGallery() async {
    // Pick an image
    final XFile? image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );

    if (image == null) return;

    // ignore: unnecessary_null_comparison
    if (image != null) {
      setState(() {
        imageFile = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height;
    final double w = MediaQuery.of(context).size.width;
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      // bottomNavigationBar: const BottomBar(),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          CircularWrapper(
            height: h / 2.4,
          ),
          SingleChildScrollView(
            child: SizedBox(
              height: h, // / 1.25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          Navigator.popAndPushNamed(context, Profile.routeName);
                        },
                        padding: const EdgeInsets.all(0),
                        icon: SvgPicture.asset(
                          AppIcons.back,
                        ),
                      ),
                      const Spacer(
                        flex: 3,
                      ),
                      //const SizedBox(width: 45,),
                      Text(
                        S.of(context).profile,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: white,
                          fontWeight: AppFonts.bold,
                          fontFamily: AppFonts.fontFamily,
                          fontSize: 36.0,
                        ),
                      ),
                      const Spacer(
                        flex: 12,
                      ),
                    ],
                  ),
                  Text(
                    S.of(context).yourpiece,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: white,
                      fontWeight: AppFonts.regular,
                      fontFamily: AppFonts.fontFamily,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(
                    height: 64,
                  ),
                  Container(
                    width: w / 1.9,
                    height: h / 4,
                    decoration: const BoxDecoration(
                      color: editcolor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(24.0),
                      ),
                    ),
                    child: IconButton(
                      icon: imageFile == null
                          ? Image.asset(AppImages.profile)
                          : Image.file(imageFile!),
                      onPressed: () {
                        _getImageGallery();
                      },
                    ),
                  ),

                  //ImagePicker().pickImage(source: ImageSource.gallery)
                  // const SizedBox(
                  //   height: 40,
                  // ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 45.0,
                      ),
                      child: Column(
                        children: [
                          const Spacer(
                            flex: 2,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 70.0,
                            ),
                            child: TextField(
                              cursorColor: blackCursor,
                              cursorWidth: 1.0,
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: lightBlack,
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: lightBlack,
                                  ),
                                ),
                              ),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: black,
                                fontWeight: AppFonts.regular,
                                fontSize: 24.0,
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 4,
                          ),
                          // const SizedBox(
                          //   height: 24,
                          // ),
                          Container(
                            decoration: const BoxDecoration(
                              color: white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(41.0)),
                              boxShadow: [
                                BoxShadow(
                                  color: shadow,
                                  offset: Offset(0.0, 4.0),
                                  blurRadius: 11.0,
                                ),
                              ],
                            ),
                            child: TextField(
                              cursorColor: lightBlack,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(10.0),
                                fillColor: white,
                                filled: true,
                                focusedBorder: border,
                                enabledBorder: border,
                                border: border,
                              ),
                              keyboardType: TextInputType.phone,
                              inputFormatters: [
                                // MaskedInputFormatter('+## (###) ### ### #'),
                                PhoneInputFormatter(),
                              ],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: black,
                                fontWeight: AppFonts.regular,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 4,
                          ),
                          const TextButtonSave(),
                          const Spacer(
                            flex: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
