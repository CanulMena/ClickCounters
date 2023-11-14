import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}


class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int counterScreen = 0;
//*Si dejo aca el atributo clicks: clicks mantiene el valor 'Clicks' durante toda la vida del widget, incluso si el valor de counterScreen cambia más tarde.

  /* int get validationClicks{
    return counterScreen <= 0 ? counterScreen = 0 : counterScreen;
  } */

  @override
  Widget build(BuildContext context) {
    //Esto se logra moviendo la inicialización de clicks dentro del método build, donde se llama cada vez que se actualiza la interfaz de usuario
    String clicks = counterScreen == 1 ? 'Click' : 'Clicks';

    return Scaffold(

      appBar: AppBar(
        title: const Center(child: Text('Counter Functions')),
        actions: [
          IconButton(
            onPressed: () {
            setState(() {
            counterScreen = 0;
          });
          },
          icon: const Icon(Icons.restore),
            )
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${counterScreen <= 0 ? counterScreen = 0 : counterScreen}', style: const  TextStyle(fontSize: 80, fontWeight: FontWeight.w200)),
            Text( clicks, style: const TextStyle(fontSize: 50, fontWeight: FontWeight.w300)),
            //!resolucion pro
            //! Text( 'Click${counterScreen == 1 ? 's' : ' '}', style: const TextStyle(fontSize: 50, fontWeight: FontWeight.w300)), 
          ],
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,

        children:[  
          
          CustomFloatingActionButton(
            icon: Icons.restore, 
            onPressed: (){
              counterScreen = 0;
              setState(() {});
            },
          ),

          const SizedBox( width: 16,),

          CustomFloatingActionButton(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: (){
              counterScreen --;
              setState(() {});
            },
            ),

          const SizedBox(width: 16,),

          CustomFloatingActionButton(
            icon: Icons.plus_one,
            onPressed: (){
              counterScreen ++;
              setState(() {});
            },
            ),
        
        ],
      )
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
//Cuando es statelessWidget solo podemos agregar atributos de clase que no cambiaran! - Cosa que si pueden hacer los stateful
  final IconData icon;
  final VoidCallback? onPressed;
  const CustomFloatingActionButton({
    super.key,
    required this.icon,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
    onPressed: onPressed,
    child: Icon(icon),
    );
  }
} 