import 'package:flutter/material.dart';

class FormSection extends StatelessWidget {
  final String nameit;
  final bool? ispassword;
  final bool? isMust;
  final TextEditingController? authControler;
  const FormSection({super.key, 
  
  required this.nameit,
  this.authControler, 
   this.ispassword, 
   this.isMust});

  @override
  Widget build(BuildContext context)  {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 8
        ),
      
      child: TextFormField(
        controller:authControler,
        validator: isMust == true ? (String? value) 
        {
          if(value == null || value.isEmpty){
            return 'Fill Requier Box';
          }else{
            return null;
          }
        }:
        null,
        obscureText: ispassword == true,
        
        decoration:InputDecoration(  
            filled: true,
            hintStyle:const TextStyle(color: Colors.black),
            fillColor: Colors.white,
            labelText:nameit,
            border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(24),
              borderSide: BorderSide.none,
            ),
            
        ),
      ),
    );
  }
}
