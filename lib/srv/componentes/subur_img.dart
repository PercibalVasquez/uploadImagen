// Importa la biblioteca de archivos de dart.
import 'dart:io';

// Importa la biblioteca de almacenamiento de firebase.
import 'package:firebase_storage/firebase_storage.dart';

// Crea una instancia del servicio de almacenamiento de firebase.
final FirebaseStorage storage = FirebaseStorage.instance;

// Define una función asíncrona que carga una imagen a firebase storage.
Future<String?> uploadImage(File image) async {
  // Obtiene el nombre del archivo de la imagen.
  String nameFile = image.path.split('/').last;

  // Crea una referencia al archivo en firebase storage.
  Reference ref = storage.ref().child('imagenes').child(nameFile);

  // Crea una tarea de carga para subir el archivo a firebase storage.
  UploadTask uploadTask = ref.putFile(image);

  // Espera hasta que se complete la carga del archivo.
  TaskSnapshot snapshot = await uploadTask.whenComplete(() => true);

  // Retorna la URL de descarga de la imagen.
  return snapshot.ref.getDownloadURL();
}