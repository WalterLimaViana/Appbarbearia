import 'package:flutter/material.dart';
import 'package:flutter_floating_menu/delegates/fab_vertical_delegate.dart';
import 'package:flutter_floating_menu/pages/calendario_page.dart';
import 'package:flutter_floating_menu/pages/contato_page.dart';
import 'package:flutter_floating_menu/pages/home_page.dart';

class FabMenuButton extends StatefulWidget {
  FabMenuButton({Key? key}) : super(key: key);

  @override
  State<FabMenuButton> createState() => _FabMenuButtonState();
}

class _FabMenuButtonState extends State<FabMenuButton>
    with SingleTickerProviderStateMixin {
  final actionButtonColor = Colors.tealAccent.shade100;
  late final AnimationController animation;
  final menuIsOpen = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    animation =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
  }

  @override
  void dispose() {
    animation.dispose();
    super.dispose();
  }

  toggleMenu() {
    menuIsOpen.value ? animation.reverse() : animation.forward();
    menuIsOpen.value = !menuIsOpen.value;
  }

  toggleHome() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  toggleAgendamento() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CalendarioPage()));
  }

  toggleContato() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ContatoPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Flow(
      clipBehavior: Clip.none,
      delegate: FabVerticalDelegate(animation: animation),
      children: [
        FloatingActionButton(
          child: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: animation,
          ),
          onPressed: () => toggleMenu(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.home),
          onPressed: () => toggleHome(),
          backgroundColor: actionButtonColor,
        ),
        FloatingActionButton(
          child: const Icon(Icons.calendar_month),
          onPressed: () => toggleAgendamento(),
          backgroundColor: actionButtonColor,
        ),
        FloatingActionButton(
          child: const Icon(Icons.phone),
          onPressed: () => toggleContato(),
          backgroundColor: actionButtonColor,
        ),
      ],
    );
  }
}
