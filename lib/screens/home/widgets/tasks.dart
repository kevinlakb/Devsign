import 'package:flutter/material.dart';
import 'package:entre_tiempos/models/task.dart';

class Tasks extends StatefulWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final tasksList = AppTask.generateTasks();
    final List<String> months = [
      'Enero',
      'Febrero',
      'Marzo',
      'Abril',
      'Mayo',
      'Junio',
      'Julio',
      'Agosto',
      'Septiembre',
      'Octubre',
      'Noviembre',
      'Diciembre'
    ];

    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (context, i) => tasksList[i].state
          ? Container()
          : Column(children: [
              Container(
                width: size.width * 0.95,
                margin: const EdgeInsets.only(bottom: 5, top: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                    '${tasksList[i].date!.day} de ${months[tasksList[i].date!.month - 1]} del  ${tasksList[i].date!.year}',
                    style: const TextStyle(fontSize: 16)),
              ),
              AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: EdgeInsets.only(left: 30, right: size.width * 0.025),
                  padding: const EdgeInsets.only(
                      left: 16, top: 0, right: 16, bottom: 0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: tasksList[i].colorPriority[tasksList[i].priority],
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 2.0,
                        spreadRadius: 0.0,
                        offset: const Offset(
                            2.0, 5.0), // shadow direction: bottom right
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: size.width * 0.62,
                            child: Text(
                                '${tasksList[i].title}' /*.toUpperCase()*/,
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.white)),
                          ),
                          SizedBox(
                            width: size.width * 0.2,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: !tasksList[i].activated
                                  ? IconButton(
                                      onPressed: () {
                                        setState(() {
                                          tasksList[i].activated = true;
                                        });
                                      },
                                      icon: const Icon(
                                          Icons.arrow_drop_down_sharp,
                                          size: 25),
                                      color: Colors.white,
                                    )
                                  : IconButton(
                                      onPressed: () {
                                        setState(() {
                                          tasksList[i].activated = false;
                                        });
                                      },
                                      icon: const Icon(
                                          Icons.arrow_drop_up_sharp,
                                          size: 25),
                                      color: Colors.white,
                                    ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                              child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  width: 150,
                                  height: tasksList[i].activated ? 40.0 : 0,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: const Center(
                                    child: Text('EMPEZAR',
                                        style: TextStyle(
                                            fontFamily: 'Open Sans',
                                            //fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.white)),
                                  )),
                              splashColor:
                                  const Color.fromRGBO(255, 255, 255, 0.6),
                              onTap: () {
                                Navigator.pushNamed(context, 'Development');
                              }),
                          const SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                width: 150,
                                height: tasksList[i].activated ? 40.0 : 0,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(
                                        color: Colors.white, width: 2),
                                    borderRadius: BorderRadius.circular(12)),
                                child: const Center(
                                  child: Text('EDITAR',
                                      style: TextStyle(
                                          fontFamily: 'Open Sans',
                                          //fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          fontStyle: FontStyle.italic,
                                          color: Colors.white)),
                                )),
                            splashColor:
                                const Color.fromRGBO(255, 255, 255, 0.6),
                            onTap: () {},
                          ),
                        ],
                      )
                    ],
                  )),
            ]),
      itemCount: tasksList.length,
    );
  }
}
