import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:haweyati/src/utils/const.dart';

class HaweyatiAppBar extends StatelessWidget with PreferredSizeWidget {
  final bool hideCart;
  final bool hideHome;
  final double progress;

  const HaweyatiAppBar({
    this.hideCart = false,
    this.hideHome = false,
    this.progress = 0.0
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> _actions = [];
    if (!hideHome) _actions.add(
      GestureDetector(
        child: Image.asset(HomeIcon, width: 23, color: Colors.white),
        onTap: () => Navigator
            .of(context)
            .popUntil((route) => route.settings.name == '/')
      )
    );
    if (!hideCart) _actions.add(
      GestureDetector(
        child: IconButton(
          onPressed: () {},
          icon: Image.asset(CartIcon, width: 30)
        ),
      )
    );

    Widget _leading;
    if (Navigator.of(context).canPop()) {
      _leading = IconButton(
        icon: Transform.rotate(
          angle: Localizations.localeOf(context).toString() == 'ar' ? 3.14159 : 0,
          child: Image.asset(ArrowBackIcon, width: 26, height: 26)
        ),
        onPressed: Navigator.of(context).pop,
      );
    }
    Widget _progress;
    if (progress > 0.0) {
      _progress = PreferredSize(
        preferredSize: Size.fromHeight(3),
        child: SizedBox(
          height: 3,
          child: LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.white,
          )
        )
      );
    }

    return AppBar(
      elevation: 0,
      bottom: _progress,
      leading: _leading,
      actions: _actions,
      centerTitle: true,
      title: const Image(
        width: 33, height: 33,
        image: const AssetImage(AppLogo),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56);
}
