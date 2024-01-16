// Importe el paquete 'image_picker' para acceder a la galería de imágenes del dispositivo
import 'package:image_picker/image_picker.dart';

// Defina una función asincrónica para obtener una imagen de la galería del dispositivo
Future<XFile?> getImage() async {
  // Crea una instancia de la clase ImagePicker
  final ImagePicker _picker = ImagePicker();

  // Utilice el método 'pickImage' para abrir la galería de imágenes del dispositivo y permitir al usuario seleccionar una imagen.
  final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

  //Devolver la imagen seleccionada
  return image;
}