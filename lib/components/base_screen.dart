import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  final Widget child;
  final String? title;
  final String? subtitle;
  final Widget? floatingAction;
  final Widget? leadingAction;
  final Widget? trailingAction;
  final double? leadingWidth;
  final Widget? bottomNavigationBar;
  final Color? backgroundColor;
  final bool resizeToAvoidBottomInset;
  const BaseScreen({
    required this.child,
    this.title,
    this.subtitle,
    this.floatingAction,
    this.leadingAction,
    this.trailingAction,
    this.leadingWidth,
    this.bottomNavigationBar,
    this.backgroundColor,
    this.resizeToAvoidBottomInset = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Disable native dynamic text
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaleFactor: 1.0,
        boldText: false,
      ),
      // Disable swipe back
      child: WillPopScope(
        onWillPop: () async => false,
        // Dismiss keyboard when background is tapped
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Scaffold(
            backgroundColor: backgroundColor ?? Colors.white,
            resizeToAvoidBottomInset: resizeToAvoidBottomInset,
            // extendBodyBehindAppBar: true,
            appBar: title != null
                ? AppBar(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    automaticallyImplyLeading: false,
                    centerTitle: true,
                    scrolledUnderElevation: 0,
                    title: Column(
                      children: [
                        Text(
                          title!,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).textTheme.bodyLarge!.color,
                          ),
                        ),
                        if (subtitle != null)
                          Text(
                            subtitle!,
                            style: TextStyle(
                              fontSize: 12,
                              color:
                                  Theme.of(context).textTheme.bodyLarge!.color,
                            ),
                          ),
                      ],
                    ),
                    leading: leadingAction,
                    leadingWidth: 75,
                    actions: [
                      if (trailingAction != null) trailingAction!,
                    ],
                  )
                : null,
            floatingActionButton: floatingAction,
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            body: SafeArea(
              bottom: false,
              maintainBottomViewPadding: true,
              child: child,
            ),
            bottomNavigationBar: bottomNavigationBar,
          ),
        ),
      ),
    );
  }
}
