import 'package:flutter/material.dart';
import 'package:my_chatiy/firebase/database.dart';
import 'package:random_string/random_string.dart';
class ProfileFormScreen extends StatefulWidget {
  const ProfileFormScreen({super.key});

  @override
  State<ProfileFormScreen> createState() => _ProfileFormScreenState();
}

class _ProfileFormScreenState extends State<ProfileFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _mobileController = TextEditingController();
  final _emailController = TextEditingController();
  String _gender = 'Male';
  String _country = 'Select';

  @override
  void dispose() {
    _nameController.dispose();
    _addressController.dispose();
    _mobileController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    final id = randomAlphaNumeric(10);
    final data = {
      'name': _nameController.text.trim(),
      'address': _addressController.text.trim(),
      'mobile': _mobileController.text.trim(),
      'gender': _gender,
      'email': _emailController.text.trim(),
      'country': _country,
    };
    await CallDataBase().teamRank(data,id);
    // For now show collected data in a SnackBar. You can wire this to backend.
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Saved: ${data['name']}, ${data['email']}')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const SizedBox(height: 8),
              Center(
                child: CircleAvatar(
                  radius: 48,
                  backgroundColor: Colors.grey.shade300,
                  child: const Icon(Icons.person, size: 48, color: Colors.white),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Name'),
                validator: (v) => (v == null || v.trim().isEmpty) ? 'Please enter a name' : null,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _addressController,
                decoration: const InputDecoration(labelText: 'Address'),
                validator: (v) => (v == null || v.trim().isEmpty) ? 'Please enter an address' : null,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _mobileController,
                decoration: const InputDecoration(labelText: 'Mobile Number'),
                keyboardType: TextInputType.phone,
                validator: (v) {
                  if (v == null || v.trim().isEmpty) return 'Please enter a mobile number';
                  if (v.trim().length < 7) return 'Enter a valid mobile number';
                  return null;
                },
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField<String>(
                value: _gender,
                items: const [
                  DropdownMenuItem(value: 'Male', child: Text('Male')),
                  DropdownMenuItem(value: 'Female', child: Text('Female')),
                  DropdownMenuItem(value: 'Other', child: Text('Other')),
                ],
                onChanged: (v) => setState(() => _gender = v ?? 'Male'),
                decoration: const InputDecoration(labelText: 'Gender'),
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                validator: (v) {
                  if (v == null || v.trim().isEmpty) return 'Please enter an email';
                  final emailRegex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}");
                  if (!emailRegex.hasMatch(v.trim())) return 'Enter a valid email';
                  return null;
                },
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField<String>(
                value: _country,
                items: const [
                  DropdownMenuItem(value: 'Select', child: Text('Select country')),
                  DropdownMenuItem(value: 'USA', child: Text('USA')),
                  DropdownMenuItem(value: 'UK', child: Text('UK')),
                  DropdownMenuItem(value: 'Bangladesh', child: Text('Bangladesh')),
                  DropdownMenuItem(value: 'Other', child: Text('Other')),
                ],
                onChanged: (v) => setState(() => _country = v ?? 'Select'),
                decoration: const InputDecoration(labelText: 'Country'),
                validator: (v) => (v == null || v == 'Select') ? 'Please select a country' : null,
              ),
              const SizedBox(height: 24),
              SizedBox(
                height: 48,
                child: ElevatedButton(

                  onPressed: _save,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  child: const Text('Save',style: TextStyle(color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

