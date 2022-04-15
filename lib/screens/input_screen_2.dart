import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputScreen2 extends StatelessWidget {
  const InputScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> valuesForm = {
      'first_name': 'Luis',
      'last_name': 'Meza',
      'email': 'luis@fmail.com',
      'password': 'Luis',
      'role': 'Example'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Input'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField2(
                    labelText: "Nombre",
                    hintText: "Nombre del usuario",
                    formProperty: 'first_name',
                    formValues: valuesForm,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField2(
                    labelText: "Apellido",
                    hintText: "Apellido del usuario",
                    formProperty: 'last_name',
                    formValues: valuesForm,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField2(
                    labelText: "Email",
                    hintText: "Email del usuario",
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: valuesForm,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField2(
                    labelText: "Contraseña",
                    hintText: "Contraseña del usuario",
                    obscureText: true,
                    formProperty: 'password',
                    formValues: valuesForm,
                  ),
                  const SizedBox(height: 30),
                  DropdownButtonFormField<String>(
                      items: const [
                        DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                        DropdownMenuItem(
                            value: 'SuperUser', child: Text('SuperUser')),
                        DropdownMenuItem(
                            value: 'Junior Development',
                            child: Text('Junior Development')),
                        DropdownMenuItem(
                            value: 'Señior Development',
                            child: Text('Señior Development')),
                      ],
                      onChanged: (value) {
                        valuesForm['role'] = value ?? "Admin";
                        print(value);
                      }),
                  const SizedBox(height: 30),
                  ElevatedButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        if (!myFormKey.currentState!.validate()) {
                          print("Formulario no valido");
                          return;
                        }
                        //* imprimir valores del formulario
                        print(valuesForm);
                      },
                      child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text("Guardar")),
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
