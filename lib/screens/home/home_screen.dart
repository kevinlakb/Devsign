import 'package:entre_tiempos/models/task.dart';
import 'package:entre_tiempos/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:entre_tiempos/screens/home/widgets/widgets.dart';
import 'package:entre_tiempos/screens/login_screen1.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isCalOpen = false;
  double y0ffset = -340;
  @override
  Widget build(BuildContext context) {
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

    final _formKey = GlobalKey<FormState>();
    final size = MediaQuery.of(context).size;
    final username = LoginScreen1.getname();
    final TextEditingController _titlecontroller = TextEditingController();
    final TextEditingController _descriptioncontroller =
        TextEditingController();
    final TextEditingController _datecontroller = TextEditingController();
    int _prioritycontroller = 0;

    DateTime? _dateTime = DateTime.now();
    String date = DateFormat('dd-MM-yy').format(DateTime.now());

    //double slide = -450;
    return Scaffold(
      drawer: const SideBar(),
      appBar: AppBar(
        //backgroundColor: AppTheme.bgWhite,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                icon: const Icon(Icons.menu, color: Colors.white, size: 28));
          },
        ),
        actions: [
          Row(
            children: [
              isCalOpen
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          isCalOpen = false;
                          y0ffset = -size.height * 0.4;
                        });
                      },
                      icon: const Icon(Icons.calendar_today, size: 25),
                      color: Colors.white,
                    )
                  : IconButton(
                      onPressed: () {
                        setState(() {
                          isCalOpen = true;
                          y0ffset = 0;
                        });
                      },
                      icon: const Icon(Icons.calendar_today, size: 25),
                      color: Colors.white,
                    ),
              const SizedBox(
                width: 20,
              )
            ],
          ),
          const AppBarAction(),
        ],
        title: Text('Hola!, $username',
            style: const TextStyle(
                fontFamily: 'Roboto',
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        //elevation: 0,
      ),
      body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //mainAxisSize: MainAxisSize.max,
          children: [
            Calendar(y0ffset: isCalOpen),
            AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                transform: Matrix4.translationValues(0, y0ffset, 0),
                child: ListView.builder(
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
                              margin: EdgeInsets.only(
                                  left: 30, right: size.width * 0.025),
                              padding: const EdgeInsets.only(
                                  left: 16, top: 0, right: 16, bottom: 0),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: tasksList[i]
                                    .colorPriority[tasksList[i].priority],
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade300,
                                    blurRadius: 2.0,
                                    spreadRadius: 0.0,
                                    offset: const Offset(2.0,
                                        5.0), // shadow direction: bottom right
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
                                                fontSize: 18,
                                                color: Colors.white)),
                                      ),
                                      SizedBox(
                                        width: size.width * 0.2,
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: !tasksList[i].activated
                                              ? IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      tasksList[i].activated =
                                                          true;
                                                    });
                                                  },
                                                  icon: const Icon(
                                                      Icons
                                                          .arrow_drop_down_sharp,
                                                      size: 25),
                                                  color: Colors.white,
                                                )
                                              : IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      tasksList[i].activated =
                                                          false;
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
                                              duration: const Duration(
                                                  milliseconds: 300),
                                              width: 150,
                                              height: tasksList[i].activated
                                                  ? 40.0
                                                  : 0,
                                              decoration: BoxDecoration(
                                                  color: Colors.transparent,
                                                  border: Border.all(
                                                    color: Colors.white,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12)),
                                              child: const Center(
                                                child: Text('EMPEZAR',
                                                    style: TextStyle(
                                                        fontFamily: 'Open Sans',
                                                        //fontWeight: FontWeight.bold,
                                                        fontSize: 16,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                        color: Colors.white)),
                                              )),
                                          splashColor: const Color.fromRGBO(
                                              255, 255, 255, 0.6),
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, 'Development');
                                          }),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      InkWell(
                                        child: AnimatedContainer(
                                            duration: const Duration(
                                                milliseconds: 300),
                                            width: 150,
                                            height: tasksList[i].activated
                                                ? 40.0
                                                : 0,
                                            decoration: BoxDecoration(
                                                color: Colors.transparent,
                                                border: Border.all(
                                                    color: Colors.white,
                                                    width: 2),
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                            child: const Center(
                                              child: Text('EDITAR',
                                                  style: TextStyle(
                                                      fontFamily: 'Open Sans',
                                                      //fontWeight: FontWeight.bold,
                                                      fontSize: 16,
                                                      fontStyle:
                                                          FontStyle.italic,
                                                      color: Colors.white)),
                                            )),
                                        splashColor: const Color.fromRGBO(
                                            255, 255, 255, 0.6),
                                        onTap: () {},
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ]),
                  itemCount: tasksList.length,
                )),
          ]),
      floatingActionButton: Container(
        height: size.width * 0.15,
        width: size.width * 0.15,
        decoration: BoxDecoration(
          //borderRadius: BorderRadius.circular(20),
          shape: BoxShape.circle,
          color: const Color.fromRGBO(68, 43, 134, 0.9),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(2.0, 3.0), // changes position of shadow
            ),
          ],
        ),
        child: InkWell(
            splashColor: const Color.fromARGB(100, 255, 255, 255),
            child: Center(
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: size.width * 0.1,
              ),
            ),
            onTap: () => {
                  showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return StatefulBuilder(builder:
                            (BuildContext context, StateSetter mystate) {
                          return DraggableScrollableSheet(
                            initialChildSize: 0.96,
                            maxChildSize: 1.0,
                            minChildSize: 0.2,
                            builder: (BuildContext context, scrollController) =>
                                Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  SizedBox(
                                    width: 100,
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                            top: 15, bottom: 5),
                                        height: 5,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade500,
                                            borderRadius:
                                                BorderRadius.circular(2)),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 40,
                                        width: 100,
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Center(
                                            child: Container(
                                              margin: const EdgeInsets.only(
                                                  left: 20),
                                              child: Transform.rotate(
                                                  angle: 3.1416 / 4,
                                                  child: const Icon(
                                                    Icons.add,
                                                    //color: Colors.white,
                                                    size: 40,
                                                  )),
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                          child: Container(
                                              margin: const EdgeInsets.only(
                                                  right: 20),
                                              height: 40,
                                              width: 100,
                                              color: Colors.transparent,
                                              child: Center(
                                                child: Container(
                                                  height: 30,
                                                  width: 90,
                                                  decoration: BoxDecoration(
                                                      color: AppTheme.primary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: const Center(
                                                    child: Text(
                                                      'Guardar',
                                                      style: TextStyle(
                                                          fontFamily: 'Roboto',
                                                          color: Colors.white,
                                                          fontSize: 18),
                                                    ),
                                                  ),
                                                ),
                                              )),
                                          onTap: () {
                                            if (_formKey.currentState!
                                                .validate()) {
                                              // If the form is valid, display a snackbar. In the real world,
                                              // you'd often call a server or save the information in a database.
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                    content: Text(
                                                        'Processing Data')),
                                              );
                                              mystate(() {
                                                AppTask.setTask(Task(
                                                    title:
                                                        _titlecontroller.text,
                                                    priority:
                                                        _prioritycontroller,
                                                    description:
                                                        _descriptioncontroller
                                                            .text,
                                                    date: _dateTime));
                                              });
                                              mystate(() {
                                                Navigator.pop(context);
                                              });
                                            }
                                          }),
                                    ],
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 20, right: 20, top: 10),
                                    padding: const EdgeInsets.only(
                                        top: 20,
                                        left: 20,
                                        right: 20,
                                        bottom: 70),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                            color: AppTheme.primary, width: 2)),
                                    child: Form(
                                      key: _formKey,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TextFormField(
                                            controller: _titlecontroller,
                                            textAlign: TextAlign.left,
                                            decoration: InputDecoration(
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        Colors.grey.shade500),
                                              ),
                                              focusedBorder:
                                                  const UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: AppTheme.primary,
                                                    width: 2.0),
                                              ),
                                              prefixIcon: const Icon(
                                                  Icons.title,
                                                  color: AppTheme.primary,
                                                  size: 30),
                                              hintText: 'Agregar Título',
                                              //labelText: 'Agregar Titulo',
                                              hintStyle: TextStyle(
                                                fontFamily: 'Roboto',
                                                fontSize: 18,
                                                color: Colors.grey.shade500,
                                              ),

                                              counterText: '',
                                            ),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Por favor añade un titulo';
                                              }
                                              return null;
                                            },
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          TextFormField(
                                            controller: _descriptioncontroller,
                                            textAlign: TextAlign.left,
                                            maxLength: 200,
                                            decoration: InputDecoration(
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        Colors.grey.shade500),
                                              ),
                                              focusedBorder:
                                                  const UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: AppTheme.primary,
                                                    width: 2.0),
                                              ),
                                              prefixIcon: const Icon(
                                                  Icons.menu_open_rounded,
                                                  color: AppTheme.primary,
                                                  size: 30),
                                              border: InputBorder.none,
                                              hintText: 'Decripción',
                                              //labelText: 'Agregar Titulo',
                                              hintStyle: TextStyle(
                                                fontFamily: 'Roboto',
                                                fontSize: 18,
                                                color: Colors.grey.shade500,
                                              ),
                                              counterText: '',
                                            ),
                                            // validator: (value) {
                                            //   if (value == null ||
                                            //       value.isEmpty) {
                                            //     return 'Por favor añade un titulo';
                                            //   }
                                            //   return null;
                                            // },
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          TextFormField(
                                            controller: _datecontroller,
                                            textAlign: TextAlign.left,
                                            decoration: InputDecoration(
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        Colors.grey.shade500),
                                              ),
                                              focusedBorder:
                                                  const UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: AppTheme.primary,
                                                    width: 2.0),
                                              ),
                                              prefixIcon: IconButton(
                                                icon: const Icon(Icons
                                                    .calendar_month_rounded),
                                                color: AppTheme.primary,
                                                iconSize: 30,
                                                onPressed: () async {
                                                  _dateTime =
                                                      await showDatePicker(
                                                    context: context,
                                                    initialDate:
                                                        _dateTime == null
                                                            ? DateTime.now()
                                                            : _dateTime!,
                                                    firstDate: DateTime(2022),
                                                    lastDate: DateTime(2050),
                                                  );
                                                  mystate(() {
                                                    date =
                                                        DateFormat('dd-MM-yy')
                                                            .format(_dateTime ??
                                                                DateTime.now());
                                                  });
                                                },
                                              ),
                                              border: InputBorder.none,
                                              hintText: date,
                                              //labelText: 'Agregar Titulo',
                                              hintStyle: TextStyle(
                                                fontFamily: 'Roboto',
                                                fontSize: 18,
                                                color: Colors.grey.shade500,
                                              ),
                                              counterText: '',
                                            ),
                                            // validator: (value) {
                                            //   if (value == null ||
                                            //       value.isEmpty) {
                                            //     return 'Por favor añade un titulo';
                                            //   }
                                            //   return null;
                                            // },
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          Column(
                                            children: [
                                              Text('Prioridad',
                                                  style: TextStyle(
                                                    color: Colors.grey.shade500,
                                                    fontFamily: 'Roboto',
                                                    fontSize: 20,
                                                  )),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  InkWell(
                                                    child: Container(
                                                        width:
                                                            _prioritycontroller ==
                                                                    0
                                                                ? 120
                                                                : 100,
                                                        height:
                                                            _prioritycontroller ==
                                                                    0
                                                                ? 40
                                                                : 30,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          color: _prioritycontroller ==
                                                                  0
                                                              ? AppTheme
                                                                  .kYellowLight
                                                              : AppTheme
                                                                  .kYellowDark,
                                                        )),
                                                    onTap: () {
                                                      mystate(() {
                                                        _prioritycontroller = 0;
                                                      });
                                                    },
                                                  ),
                                                  InkWell(
                                                      child: Container(
                                                          width:
                                                              _prioritycontroller ==
                                                                      1
                                                                  ? 120
                                                                  : 100,
                                                          height:
                                                              _prioritycontroller ==
                                                                      1
                                                                  ? 40
                                                                  : 30,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            color: _prioritycontroller ==
                                                                    1
                                                                ? AppTheme
                                                                    .kOrangeLight
                                                                : AppTheme
                                                                    .kOrangeDark,
                                                          )),
                                                      onTap: () {
                                                        mystate(() {
                                                          _prioritycontroller =
                                                              1;
                                                        });
                                                      }),
                                                  InkWell(
                                                    child: Container(
                                                        width:
                                                            _prioritycontroller ==
                                                                    2
                                                                ? 120
                                                                : 100,
                                                        height:
                                                            _prioritycontroller ==
                                                                    2
                                                                ? 40
                                                                : 30,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          color:
                                                              _prioritycontroller ==
                                                                      2
                                                                  ? AppTheme
                                                                      .kRedLight
                                                                  : AppTheme
                                                                      .kRedDark,
                                                        )),
                                                    onTap: () {
                                                      mystate(() {
                                                        _prioritycontroller = 2;
                                                      });
                                                    },
                                                  ),
                                                ],
                                              ),
                                              // Container(
                                              //   margin: const EdgeInsets.only(
                                              //       top: 50),
                                              //   height: 2,
                                              //   decoration: BoxDecoration(
                                              //       color: AppTheme.primary,
                                              //       borderRadius:
                                              //           BorderRadius.circular(
                                              //               1)),
                                              // )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                      }),
                }),
      ),
    );
  }
}
