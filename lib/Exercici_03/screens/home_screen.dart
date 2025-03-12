import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:empty/Exercici_03/providers/car_provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final carProvider = Provider.of<CarProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Lista de Coches")),
      body: carProvider.isLoading
          ? Center(child: CircularProgressIndicator())
          : carProvider.cars.isEmpty
              ? Center(
                  child: ElevatedButton(
                    onPressed: carProvider.fetchCars,
                    child: Text("Cargar coches"),
                  ),
                )
              : ListView.builder(
                  itemCount: carProvider.cars.length,
                  itemBuilder: (context, index) {
                    final car = carProvider.cars[index];
                    return ListTile(
                      leading: Icon(Icons.directions_car),
                      title: Text("${car.make} ${car.model} (${car.year})"),
                      subtitle: Text("Tipo: ${car.type}"),
                    );
                  },
                ),
    );
  }
}
