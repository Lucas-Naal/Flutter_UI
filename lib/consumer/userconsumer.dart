import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_interface/model/dto_request/dto_user_info_request.dart';
import 'package:user_interface/provider/get_user_info_provider.dart';

class UserConsumer extends StatefulWidget {
  const UserConsumer({super.key});

  @override
  State<UserConsumer> createState() => _UserConsumerState();
}

class _UserConsumerState extends State<UserConsumer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Info',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text('User Info'),
        ),
        body: Center(
          child: Consumer<PersonProvider>(
            builder: (context, animalProvider, child) {
              if (animalProvider.person != null) {
                return ListView.builder(
                  itemCount: animalProvider.person!.length,
                  itemBuilder: (context, index) {
                    DtoPersonRequest person = animalProvider.person![index];
                    return ListTile(
                      title: Text(person.firstName),
                      subtitle: Text(person.lastName),
                      trailing: Image(image: NetworkImage(person.avatar)),
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
            Provider.of<PersonProvider>(context, listen: false).fetchUsers();
          },
        ),
      ),
    );
  }
}
