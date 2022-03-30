import 'package:flutter/cupertino.dart';

class SlidRight extends PageRouteBuilder {
  final screen;

  SlidRight(this.screen)
      : super(
          pageBuilder: (context, animation, animationtwo) => screen,
          transitionsBuilder: (context, animation, animationtwo, child) {
            var begin = Offset(1.0, 0.0 );
            var end = Offset.zero ;
            var tween = Tween(begin:begin, end:end );
            // var offsetAnimation = animation.drive(tween);
            var curvesAnimation = CurvedAnimation(parent: animation, curve: Curves.easeIn);
            return SlideTransition(position: tween.animate(curvesAnimation),child: child,);
          }

        );


}

PageRouteBuilder animationRoute({required Widget child}) {
  return PageRouteBuilder(
      pageBuilder: (context, animation, animationTwo) => child,
      transitionsBuilder: (context, animation, animationTwo, child) {
        var begin = 0.0;
        var end = 1.0;
        var tween = Tween(begin:begin, end:end );
        // var offsetAnimation = animation.drive(tween);
        var curvesAnimation = CurvedAnimation(parent: animation, curve: Curves.easeIn);
        return ScaleTransition(scale: tween.animate(curvesAnimation),child: child,);
      }
  );
}

PageRouteBuilder animationRotationRoute({required Widget child}) {
  return PageRouteBuilder(
      pageBuilder: (context, animation, animationTwo) => child,
      transitionsBuilder: (context, animation, animationTwo, child) {
        var begin = 0.0;
        var end = 1.0;
        var tween = Tween(begin:begin, end:end );
        // var offsetAnimation = animation.drive(tween);
        var curvesAnimation = CurvedAnimation(parent: animation, curve: Curves.linear);
        return RotationTransition(turns: tween.animate(curvesAnimation),child: child,);
      }
  );
}

PageRouteBuilder animationSizeTransitionRoute({required Widget child}) {
  return PageRouteBuilder(
      pageBuilder: (context, animation, animationTwo) => child,
      transitionsBuilder: (context, animation, animationTwo, child) => Align(
        alignment: Alignment.topRight,
        child: SizeTransition(sizeFactor: animation, axisAlignment: 1.0, child: child,),
      )
  );
}

PageRouteBuilder addTwoAnimationRoute({required Widget child}) {
  return PageRouteBuilder(
      pageBuilder: (context, animation, animationTwo) => child,
      transitionsBuilder: (context, animation, animationTwo, child)  {
        var begin = 0.0;
        var end = 1.0;
        var tween = Tween(begin:begin, end:end );
        // var offsetAnimation = animation.drive(tween);
        var curvesAnimation = CurvedAnimation(parent: animation, curve: Curves.linear);
        return RotationTransition(turns: tween.animate(curvesAnimation),child: ScaleTransition(scale: tween.animate(curvesAnimation),child: child,),);
      }
  );
}

