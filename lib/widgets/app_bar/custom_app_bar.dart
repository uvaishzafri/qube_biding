import 'package:flutter/material.dart';
import '../../core/app_export.dart';

enum Style {
  bgGradientnameonPrimaryContaineropacity1nameonPrimaryContaineropacity0
}

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar(
      {Key? key,
      this.height,
      this.styleType,
      this.leadingWidth,
      this.leading,
      this.title,
      this.centerTitle,
      this.actions})
      : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 70.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        SizeUtils.width,
        height ?? 70.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style
          .bgGradientnameonPrimaryContaineropacity1nameonPrimaryContaineropacity0:
        return Container(
          height: 70.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
                theme.colorScheme.onPrimaryContainer.withOpacity(0)
              ],
            ),
          ),
        );
      default:
        return null;
    }
  }
}
