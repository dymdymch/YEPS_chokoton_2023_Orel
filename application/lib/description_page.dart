import 'package:flutter/material.dart';

String fishingText = 'Фішинг - це вид інтернет-шахрайства, який полягає в обмані користувачів з метою отримання їхньої конфіденційної інформації, такої як паролі, номери кредитних карток та інші особисті дані. Зазвичай цей обман відбувається через фішингові листи, веб-сторінки або повідомлення.\nПриклади Фішингу:\n   1. Фішингові листи: Користувачі можуть отримувати листи, які видавалися за офіційні повідомлення від банків, соціальних мереж або інших послуг, в яких вимагається ввести свої дані на фішингову сторінку.\n   2. Фішингові веб-сайти: Зловмисники створюють фішингові веб-сайти, що схожі на офіційні, з метою введення користувачів в оману та отримання їхніх даних.\n  3. Ситуація поспіху: Шахраї можуть використовувати стресові ситуації, наприклад, блокування або погрози щодо акаунту, щоб змусити користувачів надати інформацію швидко.';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({
    super.key,
    required this.title,
    required this.imagePath,
  });

  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Image.asset(imagePath),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  fishingText,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
        ),
      ),
    );
  }
}
