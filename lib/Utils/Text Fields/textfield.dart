import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartdistributor/Constants/color.dart';

import 'package:smartdistributor/Utils/Theme/app_config.dart';

class AppTextField extends TextFormField {
  AppTextField({super.key});

  static simpleField(
    BuildContext context, {
    required String hintText,
    required TextEditingController controller,
    bool readOnly = false,
    int? maxLength,
    int? maxLines,
    Function? onTap,
  }) {
    SizeConfig().init(context);
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: controller,
      readOnly: readOnly,
      validator: (value) {
        if (value!.isEmpty) {
          return "Please $hintText";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
          color: AppColors.greyText,
          fontSize: SizeConfig.screenWidth * 0.032,
          fontWeight: FontWeight.w400,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.greyText,
            width: 1.5,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.secondary,
            width: 1.5,
          ),
        ),
        errorStyle: GoogleFonts.poppins(
          color: AppColors.error,
          fontSize: SizeConfig.screenWidth * 0.022,
          fontWeight: FontWeight.w400,
        ),
      ),
      maxLength: maxLength,
      maxLines: maxLines,
      style: GoogleFonts.poppins(
        color: AppColors.blackText,
        fontSize: SizeConfig.screenWidth * 0.032,
        fontWeight: FontWeight.w400,
      ),
      onTap: () {
        onTap!();
      },
    );
  }

  static searchField(
    BuildContext context, {
    required String hintText,
    TextEditingController? controller,
    Function? onChanged,
    Function? onTap,
  }) {
    SizeConfig().init(context);
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return "Please $hintText";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
          color: AppColors.greyText,
          fontSize: SizeConfig.screenWidth * 0.032,
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        errorStyle: GoogleFonts.poppins(
          color: AppColors.error,
          fontSize: SizeConfig.screenWidth * 0.022,
          fontWeight: FontWeight.w400,
        ),
        fillColor: AppColors.grey1.withOpacity(0.5),
        filled: true,
        isCollapsed: true,
        isDense: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        prefixIcon: Icon(
          Icons.search,
          size: 30,
          color: AppColors.greyText.withOpacity(0.7),
        ),
      ),
      textAlignVertical: TextAlignVertical.center,
      textAlign: TextAlign.start,
      style: GoogleFonts.poppins(
        color: AppColors.blackText,
        fontSize: SizeConfig.screenWidth * 0.032,
        fontWeight: FontWeight.w400,
      ),
      onChanged: (value) {
        if (onChanged != null) {
          onChanged(value);
        }
      },
      onTap: () {
        onTap!();
      },
    );
  }

  static charMassageField(
    BuildContext context, {
    required String hintText,
    required TextEditingController controller,
    Function? onChanged,
  }) {
    SizeConfig().init(context);
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
          color: AppColors.greyText,
          fontSize: SizeConfig.screenWidth * 0.032,
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        errorStyle: GoogleFonts.poppins(
          color: AppColors.error,
          fontSize: SizeConfig.screenWidth * 0.022,
          fontWeight: FontWeight.w400,
        ),
        fillColor: AppColors.grey1.withOpacity(0.5),
        filled: true,
        isCollapsed: true,
        isDense: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      ),
      textAlignVertical: TextAlignVertical.center,
      textAlign: TextAlign.start,
      style: GoogleFonts.poppins(
        color: AppColors.blackText,
        fontSize: SizeConfig.screenWidth * 0.032,
        fontWeight: FontWeight.w400,
      ),
      onChanged: (value) => onChanged!(value),
    );
  }

  static phoneNumberField(
    BuildContext context, {
    required String hintText,
    required TextEditingController controller,
  }) {
    SizeConfig().init(context);
    return TextFormField(
      keyboardType: TextInputType.phone,
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return "Please enter your phone number";
        } else if (value[0] == "0") {
          return "Invalid phone number";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
          color: AppColors.greyText,
          fontSize: SizeConfig.screenWidth * 0.032,
          fontWeight: FontWeight.w400,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.greyText,
            width: 1.5,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.secondary,
            width: 1.5,
          ),
        ),
        errorStyle: GoogleFonts.poppins(
          color: AppColors.error,
          fontSize: SizeConfig.screenWidth * 0.022,
          fontWeight: FontWeight.w400,
        ),
      ),
      style: GoogleFonts.poppins(
        color: AppColors.blackText,
        fontSize: SizeConfig.screenWidth * 0.032,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  static usernameField(
    BuildContext context, {
    required String hintText,
    required TextEditingController controller,
    required bool isValidUserName,
    required bool isShowSuffix,
    Function? onChange,
  }) {
    SizeConfig().init(context);
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return "Please enter your username";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
          color: AppColors.greyText,
          fontSize: SizeConfig.screenWidth * 0.032,
          fontWeight: FontWeight.w400,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.greyText,
            width: 1.5,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.secondary,
            width: 1.5,
          ),
        ),
        errorStyle: GoogleFonts.poppins(
          color: AppColors.error,
          fontSize: SizeConfig.screenWidth * 0.022,
          fontWeight: FontWeight.w400,
        ),
        suffixIcon: isShowSuffix
            ? isValidUserName
                ? const Icon(
                    Icons.close,
                    color: AppColors.error,
                  )
                : const Icon(
                    Icons.check,
                    color: AppColors.success,
                  )
            : null,
      ),
      style: GoogleFonts.poppins(
        color: AppColors.blackText,
        fontSize: SizeConfig.screenWidth * 0.032,
        fontWeight: FontWeight.w400,
      ),
      onChanged: (value) {
        onChange!(value);
      },
    );
  }

  static emailField(
    BuildContext context, {
    required String hintText,
    required TextEditingController controller,
    Function? onChange,
  }) {
    SizeConfig().init(context);
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: controller,
      validator: (value) {
        print(value);
        if (value == null || value.isEmpty) {
          return "Please enter your email address";
        } else {
          String pattern =
              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
          RegExp regex = RegExp(pattern);
          if (!regex.hasMatch(value)) {
            return 'Enter a valid email address';
          }
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
          color: AppColors.greyText,
          fontSize: SizeConfig.screenWidth * 0.032,
          fontWeight: FontWeight.w400,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.greyText,
            width: 1.5,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.secondary,
            width: 1.5,
          ),
        ),
        errorStyle: GoogleFonts.poppins(
          color: AppColors.error,
          fontSize: SizeConfig.screenWidth * 0.022,
          fontWeight: FontWeight.w400,
        ),
      ),
      style: GoogleFonts.poppins(
        color: AppColors.blackText,
        fontSize: SizeConfig.screenWidth * 0.032,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  static passwordField(
    BuildContext context, {
    required String hintText,
    String? errorText,
    required TextEditingController controller,
    required bool isVisiable,
    required Function callback,
    Function? validator,
  }) {
    SizeConfig().init(context);
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      controller: controller,
      validator: (value) {
        if (validator != null) {
          validator(value);
        } else {
          if (value == null || value.isEmpty) {
            return errorText ?? "Please enter your password";
          } else {
            String pattern = r'^.{8,}$';
            // r"^(?=.*?[A-Z])(?=(.*[a-z]){1,})(?=(.*[\d]){1,})(?=(.*[\W]){1,})(?!.*\s).{8,}$";
            RegExp regex = RegExp(pattern);
            if (!regex.hasMatch(value)) {
              return 'Minimum of 8 Characters is Required';
            }
          }
        }
        return null;
      },
      obscureText: !isVisiable,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
          color: AppColors.greyText,
          fontSize: SizeConfig.screenWidth * 0.032,
          fontWeight: FontWeight.w400,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.greyText,
            width: 1.5,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.secondary,
            width: 1.5,
          ),
        ),
        errorStyle: GoogleFonts.poppins(
          color: AppColors.error,
          fontSize: SizeConfig.screenWidth * 0.022,
          fontWeight: FontWeight.w400,
        ),
        suffixIcon: IconButton(
          onPressed: () {
            callback();
          },
          splashRadius: 25,
          icon: Icon(
            isVisiable ? Icons.visibility : Icons.visibility_off,
            color: isVisiable ? AppColors.primary : AppColors.greyText,
          ),
        ),
      ),
      style: GoogleFonts.poppins(
        color: AppColors.blackText,
        fontSize: SizeConfig.screenWidth * 0.032,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
