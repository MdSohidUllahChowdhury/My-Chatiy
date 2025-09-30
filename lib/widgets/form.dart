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
        horizontal: 20,
        vertical: 2
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
            labelStyle: const TextStyle(fontSize:10,fontWeight: FontWeight.w100),
            border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(14),
              borderSide: BorderSide.none,
            ),
            
        ),
      ),
    );
  }
}
