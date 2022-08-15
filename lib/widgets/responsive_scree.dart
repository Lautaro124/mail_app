import 'package:flutter/material.dart';

class ResponsiveScreen extends StatefulWidget {
  final double sizeScreen;
  final Widget mobileScreen;
  final Widget? webScreen;
  final PreferredSizeWidget? preferredSizeWidget;

  const ResponsiveScreen({
    Key? key,
    required this.mobileScreen,
    required this.sizeScreen,
    this.preferredSizeWidget,
    this.webScreen,
  }) : super(key: key);

  @override
  State<ResponsiveScreen> createState() => _ResponsiveScreenState();
}

class _ResponsiveScreenState extends State<ResponsiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.preferredSizeWidget ?? AppBar(),
      body: SafeArea(
        child: SizedBox(
          width: widget.sizeScreen,
          height: MediaQuery.of(context).size.height,
          child: (_isWebScreen() ? widget.webScreen! : widget.mobileScreen),
        ),
      ),
    );
  }

  bool _webScreenExist() => widget.webScreen == null ? false : true;

  bool _isWebScreen() {
    const int maxSizeWidt = 400;

    if (widget.sizeScreen >= maxSizeWidt) return true;

    return _webScreenExist();
  }
}
