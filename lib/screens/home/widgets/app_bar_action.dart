import 'package:entre_tiempos/themes/app_theme.dart';
import 'package:flutter/material.dart';

class AppBarAction extends StatefulWidget {
  const AppBarAction({
    Key? key,
    //required int state,
  }) : //_state = state,
        super(key: key);

  @override
  State<AppBarAction> createState() => _AppBarActionState();
}

class _AppBarActionState extends State<AppBarAction> {
  static int statePriority = 4;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: InkWell(
        child: Container(
          
          child: Row(
            children:   [
              IconButton(onPressed:() => {} , icon: const Icon(Icons.circle , color: AppTheme.kYellowLight )),
              //const SizedBox(width: 10,),              
              IconButton(onPressed:() => {} , icon: const Icon(Icons.circle , color: AppTheme.kOrangeLight )),            
              //const SizedBox(width: 10,),                 
              IconButton(onPressed:() => {} , icon: const Icon(Icons.circle , color: AppTheme.kRedLight  )),            

            ],
          ),
          //duration: const Duration(milliseconds: 300),

        ),
        onTap: () {
          setState(() {
            if (statePriority < 5) {
              statePriority++;
            }
            if (statePriority == 5) {
              statePriority = 0;
            }
          });
        },
      ),
    );
  }
}
