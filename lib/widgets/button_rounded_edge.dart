import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    required this.label,
    this.margin,
    this.padding,
    this.textColor,
    this.onPressed,
    required this.boarderWidth,
    this.radius,
    this.color,
    this.borderColor,
    this.isShowingLoader = false,
    this.labelStyle,
    this.width,
    this.height,
    this.icon,
    this.isBoxShadowNeeded = false,
    this.isIconRight = false,
  });

  final String label;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final void Function()? onPressed;
  final TextStyle? labelStyle;
  final double? radius;
  final bool isBoxShadowNeeded;
  final double boarderWidth;
  final Color? color;
  final Color? borderColor;
  final Color? textColor;
  final double? height;
  final double? width;
  final Icon? icon;
  final bool isShowingLoader;
  final bool isIconRight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height ?? 48.0,
        width: width ?? double.infinity,
        alignment: Alignment.center,
        margin: margin,
        padding: padding,
        decoration: BoxDecoration(
          boxShadow: [
            isBoxShadowNeeded
                ? const BoxShadow(
                  color: Color.fromRGBO(74, 111, 165, 0.4),
                  spreadRadius: -10,
                  blurRadius: 23,
                  offset: Offset(2, 4),
                )
                : const BoxShadow(
                  color: Colors.transparent,
                  spreadRadius: 0,
                  blurRadius: 0,
                  offset: Offset(0, 0),
                ),
          ],
          color: color ?? Colors.white,
          borderRadius: BorderRadius.circular(radius ?? 12),
          border: Border.all(
            color: borderColor ?? Colors.transparent,
            width: boarderWidth,
          ),
        ),
        child:
            isShowingLoader
                ? const SizedBox(
                  height: 19.0,
                  width: 19.0,
                  child: CircularProgressIndicator(
                    strokeWidth: 3.0,
                    color: Colors.purple,
                  ),
                )
                : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children:
                      isIconRight
                          ? [
                            Text(
                              label,
                              style:
                                  labelStyle ??
                                  TextStyle(color: textColor ?? Colors.purple),
                            ),
                            if (icon != null) ...[
                              const SizedBox(width: 10),
                              icon!,
                            ],
                          ]
                          : [
                            if (icon != null) ...[
                              icon!,
                              const SizedBox(width: 10),
                            ],
                            Text(
                              label,
                              style:
                                  labelStyle ??
                                  TextStyle(color: textColor ?? Colors.purple),
                            ),
                          ],
                ),
      ),
    );
  }
}
