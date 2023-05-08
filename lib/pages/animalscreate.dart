import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_interface/model/dto_request/dto_animal_request.dart';
import 'package:user_interface/provider/post_animal_provider.dart';

class AnimalCreationForm extends StatefulWidget {
  @override
  _AnimalCreationFormState createState() => _AnimalCreationFormState();
}

class _AnimalCreationFormState extends State<AnimalCreationForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _typeController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _typeController.dispose();
    super.dispose();
  }

  void _createAnimal() {
    if (_formKey.currentState!.validate()) {
      final animal = DtoAnimalRequest(
        id: 0,
        name: _nameController.text,
        typeOfAnimal: _typeController.text,
      );

      Provider.of<AnimalPostProvider>(context, listen: false)
          .createAnimal(animal)
          .then((_) {
        // Éxito: hacer algo después de crear la mascota
        // Por ejemplo, navegar a una pantalla de confirmación o actualizar la lista de mascotas
      }).catchError((error) {
        // Error: manejar el error adecuadamente
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text('Post'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'Nombre'),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Ingrese un nombre válido';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _typeController,
                  decoration:
                      const InputDecoration(labelText: 'Tipo de animal'),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Ingrese un tipo de animal válido';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: ElevatedButton(
                    onPressed: _createAnimal,
                    child: const Text('Crear mascota'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
