import 'package:flutter/material.dart';

class Uicontrolsscreen extends StatelessWidget {
  const Uicontrolsscreen({super.key});

  static const name = "ui_controls_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UIControlsView(),
    );
  }
}

class _UIControlsView extends StatefulWidget {
  const _UIControlsView();

  @override
  State<_UIControlsView> createState() => _UIControlsViewState();
}


enum Transportation { car,plane,boat, submarine}


class _UIControlsViewState extends State<_UIControlsView> {

  bool isDeveloper = true;
  Transportation selectedTransportation=Transportation.car;
  bool wantsBreakfast =false;
  bool wantsLunch =false;
  bool wantsDinner=false;

  @override
Widget build(BuildContext context) {
    return ListView(
        physics: const ClampingScrollPhysics(),

        children: [
            SwitchListTile(
                title: const Text('Modo Desarrollador'),
                subtitle: const Text('Controles Adicionales'),
                value: true, 
                onChanged: (value) {

                  isDeveloper= !isDeveloper;
                }
            ),
            
            ExpansionTile(title: const Text('Transporte elegido:'),
            subtitle: Text('$selectedTransportation'),
            children: [
              RadioListTile(
            title: const Text('Transporte 1'),
            subtitle: const Text('Viajar por carro'),
            value: Transportation.car,
            groupValue: selectedTransportation,
            onChanged: (value) => setState(() {
                selectedTransportation = Transportation.car;
            }),
            ), 
            
            RadioListTile(
            title: const Text('Transporte 2'),
            subtitle: const Text('Viajar por bote'),
            value: Transportation.boat,
            groupValue: selectedTransportation,
            onChanged: (value) => setState(() {
                selectedTransportation = Transportation.boat;
            }),
            ),
            
            RadioListTile(
              title: const Text('Transporte 3'),
            subtitle: const Text('Viajar por avión'),
            value: Transportation.car,
            groupValue: selectedTransportation,
            onChanged: (value) => setState(() {
                selectedTransportation = Transportation.plane;
            }),
            ),
            
            RadioListTile(
              title: const Text('Transporte 4'),
            subtitle: const Text('Viajar por submarino'),
            value: Transportation.car,
            groupValue: selectedTransportation,
            onChanged: (value) => setState(() {
                selectedTransportation = Transportation.submarine;
            }),
            ),// RadioListTile
            ],
            ),

          CheckboxListTile(
            title: const Text('Quieres desayunar?'),
            value: wantsBreakfast, 
            onChanged: (value) => setState(() {
            wantsBreakfast=!wantsBreakfast;
          })),

          CheckboxListTile(
            title: const Text('Quieres almorzar?'),
            value: wantsBreakfast, 
            onChanged: (value) => setState(() {
            wantsBreakfast=!wantsBreakfast;
          })),

          CheckboxListTile(
            title: const Text('Quieres cenar?'),
            value: wantsBreakfast, 
            onChanged: (value) => setState(() {
            wantsBreakfast=!wantsBreakfast;
          })),

        ],
    ); // ListView
}
}
