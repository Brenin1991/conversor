import 'package:flutter/material.dart';

import 'controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conversor F2C"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 35,
                  width: 80,
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  color: Color.fromARGB(255, 23, 177, 28),
                  child: Text("${controller.valorEntrada}°F")),
              Text("="),
              Container(
                  height: 35,
                  width: 80,
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  color: Color.fromARGB(255, 9, 162, 189),
                  child: Text("${controller.valorSaida}°C")),
            ],
          ),
          Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            controller.adicionarDigito("1");
                          });
                        },
                        child: Text("1"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            controller.adicionarDigito("2");
                          });
                        },
                        child: Text("2"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            controller.adicionarDigito("3");
                          });
                        },
                        child: Text("3"),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          controller.adicionarDigito("4");
                        });
                      },
                      child: Text("4"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          controller.adicionarDigito("5");
                        });
                      },
                      child: Text("5"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          controller.adicionarDigito("6");
                        });
                      },
                      child: Text("6"),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          controller.adicionarDigito("7");
                        });
                      },
                      child: Text("7"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          controller.adicionarDigito("8");
                        });
                      },
                      child: Text("8"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          controller.adicionarDigito("9");
                        });
                      },
                      child: Text("9"),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          controller.adicionarDigito("0");
                        });
                      },
                      child: Text("0"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          controller.converter();
                        });
                      },
                      child: Text("="),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          controller.limpar();
                        });
                      },
                      child: Text("C"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      )),
    );
  }
}
