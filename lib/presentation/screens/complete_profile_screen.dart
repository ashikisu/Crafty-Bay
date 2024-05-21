import 'package:crafty_bay/presentation/utility/app_color.dart';
import 'package:crafty_bay/widget/applogo.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CompleteProfileScreen extends StatefulWidget {

  const CompleteProfileScreen({super.key});

  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  final TextEditingController _firstNameTextEditingController = TextEditingController();
  final TextEditingController _lastNameTextEditingController = TextEditingController();
  final TextEditingController _mobileTextEditingController = TextEditingController();
  final TextEditingController _cityTextEditingController = TextEditingController();
  final TextEditingController _shippingAddressTextEditingController = TextEditingController();

  final GlobalKey<FormState> _formKey= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                AppLogo(),
                const SizedBox(
                  height: 16,
                ),
                Text('Complete Profile', style: textTheme.titleLarge),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "Get started with your details",
                  style: textTheme.headlineSmall,
                ),
                const SizedBox(
                  height: 24,
                ),
                _buildCompleteProfileForm(),
                const SizedBox(height: 8,),

                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Complete",
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCompleteProfileForm() {
    return Form(
      key: _formKey,
      child: Column(
                  children: [
                    TextFormField(
                      controller: _firstNameTextEditingController,
                      decoration: InputDecoration(
                        hintText: "First Name",
                      ),
                    ),
                    const SizedBox(height: 8,),
                    TextFormField(
                      controller: _lastNameTextEditingController,
                      decoration: InputDecoration(
                        hintText: "Last Name",
                      ),
                    ),
                    const SizedBox(height: 8,),
                    TextFormField(
                      controller: _mobileTextEditingController,
                      decoration: InputDecoration(
                        hintText: "Mobile",
                      ),
                    ),
                    const SizedBox(height: 8,),
                    TextFormField(
                      controller: _cityTextEditingController,

                      decoration: InputDecoration(
                        hintText: "City",
                      ),
                    ),
                    const SizedBox(height: 8,),
                    TextFormField(
                      controller: _shippingAddressTextEditingController,
                      maxLines: 3,
                      decoration: InputDecoration(
                        hintText: "Shippin Adress",
                      ),
                    ),
                  ],
                ),
    );
  }



  @override
  void dispose() {
   _firstNameTextEditingController.dispose();
   _lastNameTextEditingController.dispose();
   _mobileTextEditingController.dispose();
   _cityTextEditingController.dispose();
   _shippingAddressTextEditingController.dispose();
   super.dispose();

  }
}
