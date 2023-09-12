import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.itemData, {super.key});
  
  final List<Map<String, Object>> itemData;
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: itemData.map((data) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                
              Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 179, 135, 251),
                ),
                child: Center(
                  child: Text(((data['question_index'] as int)  +1).toString(),
                  style: GoogleFonts.lato(
                    color: Colors.black,
                    fontSize: 20,           
                  ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(data['question'] as String,
                 
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 220, 220, 220),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  const SizedBox(height: 2,),
                  Text(data['user_answer'] as String,
                 
                    style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 164, 164, 251),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  
                  Text(data['correct_answer'] as String,
                  
                    style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 129, 145, 249),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  const SizedBox(height: 20,),
                ],),
              ),
            ],);
          }).toList(),
        ),
      ),
    );
  }
}
