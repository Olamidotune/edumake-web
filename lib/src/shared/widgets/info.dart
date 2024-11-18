import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  final String? title;
  final String message;
  final String? buttonText;
  final Function? onOkButtonPressed;
  final bool cancelButton;
  final String? cancelButtonText;
  

  const Info({
    Key? key,
    this.title = "Info",
    required this.message,
    this.buttonText,
    this.onOkButtonPressed,
    this.cancelButton = false,
    this.cancelButtonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      titleTextStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: Colors.black,
      ),
      title: Row(
        children: [
          Expanded(
            flex: 9,
            child: Center(
              child: Text(title ?? ''),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.close,
                  color: AppColors.greyColor,
                ),
              ),
            ),
          ),
        ],
      ),
      content: Container(
        padding: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          clipBehavior: Clip.antiAlias,
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                message,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  if (cancelButton)
                    Expanded(
                      child: Container(
                        height: 50,
                        margin: const EdgeInsets.all(5),
                        child: Button(
                          pill: true,
                          onPressed: () => Navigator.pop(context, false),
                          text: 'Cancel',
                        ),
                      ),
                    ),
                  Expanded(
                    child: Container(
                      height: 50,
                      margin: const EdgeInsets.all(5),
                      child: Button(
                        pill: true,
                        onPressed: () {
                          Navigator.pop(context, false);
                          onOkButtonPressed?.call();
                        },
                        text: 'Okay',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
