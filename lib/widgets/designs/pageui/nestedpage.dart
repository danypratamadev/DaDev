import 'package:dadev/providers/wprovider.dart';
import 'package:dadev/widgets/designs/appbarui/appbarcollapse.dart';
import 'package:dadev/widgets/designs/appbarui/flexibleappbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dadev/const/cvariableapp.dart';
import 'package:provider/provider.dart';

class NestedScrollPage extends StatelessWidget {

  final bool appbarTitleAsWidget;
  final dynamic appbarTitle;
  final bool centerTitle;
  final String flexibleTitle;
  final Widget body;
  final bool showFlexibleAppBar;
  final double flexibleExpandHeight;
  final bool showSubtitle;
  final dynamic appbarSubtitleWidget;
  final bool showActionAppBar;
  final dynamic actionWidgetAppBar;
  final double textScaleFactor;
  final bool showLeading;
  final Widget leadingBtn;
  final bool showAction;
  final List<Widget> actionWidget;
  final bool useStack;
  final Widget stackWidget;
  final bool useRefresh;
  final int? actionRefresh;
  final bool useCustomPadding;
  final dynamic customPadding;
  final bool darkMode;

  const NestedScrollPage({Key? key, this.appbarTitleAsWidget = false, required this.appbarTitle, this.centerTitle = true, required this.flexibleTitle, required this.showFlexibleAppBar, this.showSubtitle = false, this.appbarSubtitleWidget, required this.flexibleExpandHeight, this.showActionAppBar = false, this.actionWidgetAppBar, required this.textScaleFactor, this.showLeading = true, required this.leadingBtn, this.showAction = false, required this.actionWidget, this.useStack = false, required this.stackWidget, required this.useRefresh, this.actionRefresh, required this.body, this.useCustomPadding = false, this.customPadding, required this.darkMode,}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final mainProvider = Provider.of<WebProvider>(context, listen: false);
    final mediaApp = MediaQuery.of(context);
    final themeApp = Theme.of(context);

    return MediaQuery(
      data: mediaApp.copyWith(
        textScaleFactor: textScaleFactor
      ),
      child: useStack ? Stack(
        children: [
          Positioned(
            left: 0.0,
            right: 0.0,
            top: 0.0,
            bottom: 0.0,
            child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => <Widget>[
                SliverAppBar(
                  primary: true,
                  pinned: true,
                  centerTitle: centerTitle,
                  toolbarHeight: VariableApps.sizeBox50,
                  expandedHeight: showSubtitle ? flexibleExpandHeight + 20.0 : flexibleExpandHeight,
                  automaticallyImplyLeading: showLeading,
                  leading: showLeading ? leadingBtn : null,
                  title: AppBarCollaps(
                    child: appbarTitleAsWidget ? appbarTitle : Text(
                      appbarTitle
                    )
                  ),
                  flexibleSpace: showFlexibleAppBar ? FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    background: FlexibleAppBarBackground(
                      title: flexibleTitle,
                      flexibleExpandHeight: flexibleExpandHeight,
                      showSubtitle: showSubtitle,
                      subtitleWidget: appbarSubtitleWidget,
                      showAction: showActionAppBar,
                      actionWidget: actionWidgetAppBar,
                    ),
                  ) : null,
                  systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarColor: Colors.transparent,
                    statusBarIconBrightness: darkMode ? Brightness.light : Brightness.dark,
                  ),
                  actions: showAction ? actionWidget.map((action) => action).toList() : [],
                )
              ], 
              body: useRefresh ? RefreshIndicator(
                onRefresh: () => mainProvider.onRefresh(context: context, action: actionRefresh!),
                backgroundColor: darkMode ? themeApp.backgroundColor : themeApp.scaffoldBackgroundColor,
                color: themeApp.primaryColor,
                strokeWidth: 2.0,
                child: SizedBox(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: CupertinoScrollbar(
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Padding(
                          padding: useCustomPadding ? customPadding : const EdgeInsets.only(left: VariableApps.primaryPaddingSize, right: VariableApps.primaryPaddingSize),
                          child: body,
                        )
                      ),
                    ),
                  ),
                ),
              ) : MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: CupertinoScrollbar(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Padding(
                      padding: useCustomPadding ? customPadding : const EdgeInsets.only(left: VariableApps.primaryPaddingSize, right: VariableApps.primaryPaddingSize),
                      child: body,
                    )
                  ),
                ),
              ),
            ),
          ),
          stackWidget,
        ],
      ) : NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => <Widget>[
          SliverAppBar(
            primary: true,
            pinned: true,
            centerTitle: true,
            toolbarHeight: VariableApps.sizeBox50,
            expandedHeight: showSubtitle ? flexibleExpandHeight + 20.0 : flexibleExpandHeight,
            automaticallyImplyLeading: showLeading,
            leading: showLeading ? leadingBtn : null,
            title: AppBarCollaps(
              child: appbarTitleAsWidget ? appbarTitle : Text(
                appbarTitle
              )
            ),
            flexibleSpace: showFlexibleAppBar ? FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              background: FlexibleAppBarBackground(
                title: flexibleTitle,
                flexibleExpandHeight: flexibleExpandHeight,
                showSubtitle: showSubtitle,
                subtitleWidget: appbarSubtitleWidget,
                showAction: showActionAppBar,
                actionWidget: actionWidgetAppBar,
              ),
            ) : null,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: darkMode ? Brightness.light : Brightness.dark,
            ),
            actions: showAction ? actionWidget.map((action) => action).toList() : [],
          )
        ], 
        body: useRefresh ? RefreshIndicator(
          onRefresh: () => mainProvider.onRefresh(context: context, action: actionRefresh!),
          backgroundColor: darkMode ? themeApp.backgroundColor : themeApp.scaffoldBackgroundColor,
          color: themeApp.primaryColor,
          strokeWidth: 2.0,
          child: SizedBox(
            width: double.maxFinite,
            height: double.maxFinite,
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: CupertinoScrollbar(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Padding(
                    padding: useCustomPadding ? customPadding : const EdgeInsets.only(left: VariableApps.primaryPaddingSize, right: VariableApps.primaryPaddingSize),
                    child: body,
                  )
                ),
              ),
            ),
          ),
        ) : MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: CupertinoScrollbar(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: useCustomPadding ? customPadding : const EdgeInsets.only(left: VariableApps.primaryPaddingSize, right: VariableApps.primaryPaddingSize),
                child: body,
              )
            ),
          ),
        ),
      ),
    );
  }

}