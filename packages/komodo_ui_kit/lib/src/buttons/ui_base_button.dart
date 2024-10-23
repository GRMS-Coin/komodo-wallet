import 'package:flutter/cupertino.dart';

class UIBaseButton extends StatelessWidget {
  const UIBaseButton({
    required this.isEnabled,
    required this.child,
    required this.width,
    required this.height,
    required this.border,
    super.key,
  });
  final bool isEnabled;
  final double width;
  final double height;
  final BoxBorder? border;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isEnabled,
      child: Opacity(
        opacity: isEnabled ? 1 : 0.4,
        child: Container(
          constraints: BoxConstraints.tightFor(width: width, height: height),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(18)),
            border: border,
          ),
          child: child,
        ),
      ),
    );
  }
}
