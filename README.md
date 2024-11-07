# DMI-10A-HelloWorld-Flutter-210659

# HelloWorld App, mi primera aplicacion en Flutter
Primera Aplicacion realizada en Flutter para dispositivos moviles, 
parte de la unidad 2 de la asignatura en Desarrollo Movil Integral

## HISTORIAL DE PRACTICAS
| **No.** | **Nombre**                                 | **Potenciador** | **Estatus**  | **Fecha Revisión** |
|---------|--------------------------------------------|-----------------|--------------|---------------------|
| 20      | Instalación y Configuración de Flutter     | 10              | Finalizada   | 25-10-2024          |
| 21      | Hello World App                            | Pendiente       | Activa       |                     |

---

## **Lista de Herramientas**

![DART](https://img.shields.io/badge/Dart-0175C2?style-for-the-badge&logo=dart&logoColor=white)
![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)

---

## **Documentación**
---
<div style="display: flex; justify-content: space-between;">
    <img align="left" src="img/LOGO TIC (4).png?raw=true" alt="Logo 1" width="300"; />
    <img align="right" src="img/LOGO UTXJ PNG.png?raw=true" alt="Logo 2" width="300";/>
</div><br><br><br><br><br>

<div style="text-align: center;">
    <p><strong>UNIVERSIDAD TECNOLÓGICA DE XICOTEPEC DE JUÁREZ</strong></p>
    <p><strong>Materia:</strong> Desarrollo Móvil Integral</p>
    <p><strong>Alumno:</strong> Justin Martin Muñoz Escorcia</p>
    <p><strong>Matricula:</strong> 210659</p>
    <p><strong>10 A - IDGS</strong></p>
</div>

**Tarea 6:** Implementación de colores y tipografías para la aplicación de contador  
**Objetivo:** Desarrollar una aplicación que permite incrementar, decrementar y resetear un contador visualmente en la interfaz del usuario.

### Puntos clave:

- Utiliza el patrón **Stateful** para manejar el estado del contador.
- Implementa una estructura de proyecto separada por **dominio** y **presentación**.
- Utiliza **pruebas unitarias** y **de widget** para garantizar el funcionamiento correcto.
- Permite personalizar el **color** del contador basado en su valor:
  - **Verde** para positivo.
  - **Rojo** para negativo.
  - **Azul** por defecto.
- Usa **FloatingActionButton personalizados** para las acciones de incrementar, decrementar y resetear.
- La interfaz es **responsiva** y utiliza **estilos personalizados** para mejorar la legibilidad.
- Utiliza el paquete **Bloc** para manejar el estado del contador de manera eficiente.

### **Codigo Fuente:**
- **counter_functions_screen.dart**
```bash
import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('CFS-210659')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$clickCounter',
                style: TextStyle(
                  fontSize: 160,
                  fontWeight: FontWeight.w300,
                  color: clickCounter > 0
                      ? Colors.green
                      : clickCounter < 0
                          ? Colors.red
                          : Colors.blue,
                ),
              ),
              Text(
                (clickCounter == 1 || clickCounter == -1)
                    ? 'Click'
                    : 'Clicks',
                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w100),
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.plus_one,
              color: Colors.green,
              onPressed: () {
                clickCounter++;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              color: Colors.red,
              onPressed: () {
                clickCounter--;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              icon: Icons.refresh_rounded,
              color: Colors.blue,
              onPressed: () {
                clickCounter = 0;
                setState(() {});
              },
            )
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    required this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: color,
      child: Icon(icon),
    );
  }
}



```

- **main.dart**
```bash
import 'package:flutter/material.dart';
//import 'package:helloworld_app_210659/presentation/screens/counter_screen.dart';
import 'package:helloworld_app_210659/presentation/screens/counter_functions_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        fontFamily: 'Merriweather',
      ),
      home: const CounterFunctionsScreen()
    );
  }
}

```
## Resultados:
<div style="display: flex; justify-content: space-between;">
    <img align="left" src="img/results/img1.png?raw=true" alt="img1" width="200"; />
    <img align="left" src="img/results/img2.png?raw=true" alt="img2" width="200";/>
    <img align="left" src="img/results/img3.png?raw=true" alt="img3" width="200"; />
</div>
<div style="display: flex; justify-content: space-between;">
    <img align="left" src="img/results/img4.png?raw=true" alt="img4" width="200"; />
    <img align="left" src="img/results/img5.png?raw=true" alt="img5" width="200";/>
</div><br><br><br><br><br><br><br><br><br><br><br>

**Fecha de entrega:** 05 de noviembre de 2024

---

## AUTOR
Elaborado por: Justin Martin Muñoz Escorcia [justinescorcia](https://github.com/justinescorcia)
