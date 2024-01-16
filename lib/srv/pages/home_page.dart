// Importa la biblioteca de entrada y salida estándar.
import 'dart:io';

// Importa la biblioteca de Flutter Material.
import 'package:flutter/material.dart';

// Importa la biblioteca de selección de imágenes.
import 'package:uploadimg/srv/componentes/seleccionaring.dart';

// Importa la biblioteca de subida de imágenes.
import 'package:uploadimg/srv/componentes/subur_img.dart';

// Define la clase HomePage.
class HomePage extends StatefulWidget {
  // Crea una clave única para el estado de la página de inicio.
  const HomePage({super.key});

  // Crea el estado de la página de inicio.
  @override
  State<HomePage> createState() => _HomePageState();
}

// Define la subclase _HomePageState.
class _HomePageState extends State<HomePage> {
  // Define la variable imagenSubir.
  File? imagenSubir;

  // Crea el método build.
  @override
  Widget build(BuildContext context) {
    // Devuelve un Scaffold.
    return Scaffold(
      // Define el cuerpo del Scaffold.
      body: Column(
        // Define los hijos del Column.
        children: [
          // Comprueba si imagenSubir es nulo.
          imagenSubir != null
              ? Image.file(imagenSubir!) // Si no es nulo, muestra la imagen.
              : Container(
                  // Si es nulo, muestra un contenedor.
                  margin: const EdgeInsets.all(10),
                  height: 200,
                  width: double.infinity,
                  color: Colors.red,
                ),
          // Crea un ElevatedButton para seleccionar una imagen.
          ElevatedButton(
            // Define la función onPressed.
            onPressed: () async {
              // Obtiene la imagen.
              final image = await getImage();

              // Define la función setState.
              setState(() {
                // Actualiza la variable imagenSubir.
                imagenSubir = File(image!.path);
              });
            },
            // Define el hijo del ElevatedButton.
            child: const Text('seleccionar Imagen'),
          ),
          // Crea un ElevatedButton para subir una imagen.
          ElevatedButton(
            // Define la función onPressed.
            onPressed: () async {
              // Comprueba si imagenSubir es nulo.
              if (imagenSubir == null) {
                // Si es nulo, devuelve.
                return;
              }

              // Obtiene la subida de la imagen.
              final subir = await uploadImage(imagenSubir!);
            
            },
            // Define el hijo del ElevatedButton.
            child: const Text('subir Imagen'),
          ),
        ],
      ),
    );
  }
}