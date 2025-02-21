import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget { // StatefulWidget используется, когда вам нужно, чтобы данные или виджеты изменялись во время работы приложения.
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //виджет, который является контейнером для всего приложения, предоставляя ему стили и темы согласно материальному дизайну.
      home: Scaffold( // Scaffold — это базовый контейнер для визуальной структуры приложения. В нем размещаются такие элементы, как AppBar, Drawer, FloatingActionButton и основной контент (body).
        appBar: AppBar( //AppBar — это верхняя панель приложения, которая обычно используется для отображения названия, кнопок действий или навигации.
          title: Center(
            child: Text(
              "Lab 3: Layout Basics",
              style: TextStyle(
              color: Colors.white, 
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
                    ),
          ),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(12), //быр бырынын арасы 
            padding: const EdgeInsets.all(16), // внутренние отступы
            decoration: BoxDecoration(
                color: Colors.blue,
                 borderRadius: BorderRadius.circular(12),// скругление углов
                 boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 6, // Радиус размытия тени
                    offset: Offset(2, 2) //Смещение тени (например, по осям X и Y)
                                      )
                 ],
                 ),
            child: const Center(
             child: Text(
              "Welcome to Flutter",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
             ), 
            ),
          ),
          const SizedBox (height: 12,), //отступов между элементами
            Container(
              decoration: BoxDecoration(
                color: Colors.green,  // Цвет фона
                borderRadius: BorderRadius.circular(8),  // Радиус углов
                border: Border.all(
                  color: Colors.white,  // Цвет границы
                  width: 2,  // Ширина границы
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),  // Отступы
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Тексты по краям
                children: [
                  Text(
                    'Left Text',
                    style: TextStyle(
                      color: Colors.white,  // Цвет текста
                      fontSize: 16,  // Размер шрифта
                    ),
                  ),
                  Text(
                    'Right Text',
                    style: TextStyle(
                      color: Colors.white,  // Цвет текста
                      fontSize: 16,  // Размер шрифта
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}