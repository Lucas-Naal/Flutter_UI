import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_interface/provider/get_animal_provider.dart';
import 'package:user_interface/model/dto_request/dto_animal_request.dart';

class AnimalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Animales'),
      ),
      body: Center(
        child: Consumer<AnimalProvider>(
          builder: (context, animalProvider, child) {
            if (animalProvider.animals != null) {
              return ListView.builder(
                itemCount: animalProvider.animals!.length,
                itemBuilder: (context, index) {
                  DtoAnimalRequest animal = animalProvider.animals![index];
                  return ListTile(
                    title: Text(animal.name),
                    subtitle: Text(animal.typeOfAnimal),
                    leading: Text('${animal.id}'),
                  );
                },
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: () {
          Provider.of<AnimalProvider>(context, listen: false).getAnimals();
        },
      ),
    );
  }
}
