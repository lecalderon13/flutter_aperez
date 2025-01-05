import 'package:flutter/material.dart';

//F2 al momento de copiar y renombrar una clase

class CounterFunctionsScreenState extends StatefulWidget {
  const CounterFunctionsScreenState({super.key});

  @override
  State<CounterFunctionsScreenState> createState() => _CounterFunctionsScreenStateState();
}

class _CounterFunctionsScreenStateState extends State<CounterFunctionsScreenState> {
  
  int clickCounter = 0;
  
  get floatingActionButton => null;

  @override
   Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(' Este es mi Counter Functions'),
          actions: [
            IconButton(
                icon: const Icon(Icons.refresh_rounded),
                onPressed: () {
                  setState(() {
                    clickCounter = 0;
                  });
                }),
          ],
        ),
 body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter',
                  style: const TextStyle(
                      fontSize: 160, fontWeight: FontWeight.w100)),

              Text('Click${clickCounter == 1 ? '' : 's'}',
                  style: const TextStyle(fontSize: 25))

              // if( clickCounter == 1 )
              //   const Text('Click', style: TextStyle(fontSize: 25)),

              // if( clickCounter != 1 )
              //   const Text('Clicks', style: TextStyle(fontSize: 25)),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.refresh_rounded,
              onPressed: () {
                clickCounter = 0;
                setState(() {});
              },
            ),
            const SizedBox(height: 10),
            CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                //PARA QUE NO HAYAN NEGATIVOS
                if (clickCounter == 0) return;
                clickCounter--;
                setState(() {});
              },
            ),
            const SizedBox(height: 10),
            CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                clickCounter++;
                setState(() {});
              },
            ),
          ],
        ));
  }
}
class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // Para cambiar el diseño de los botones = shape: const StadiumBorder(),
      enableFeedback: true,
      elevation: 5,
      //Null para que esten ahi pero que no se puedan usar
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}