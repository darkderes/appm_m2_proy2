import 'package:appm_m2_proy2/common/header.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../data/contents_onboard.dart';


class SocialMedias extends StatelessWidget {
  const SocialMedias({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            const Header(),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Social Media",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Tres elementos por fila
              ),
              shrinkWrap: true, // Ajustar al tamaño de los elementos
              itemCount: socialMediaList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset(socialMediaList[index].imageAsset),
                  // title: Text(socialMediaList[index].name),
                  // Agrega aquí cualquier acción que desees realizar cuando se haga clic en la lista
                  onTap: () {
                       _launchUrl(Uri.parse(socialMediaList[index].url.toString()));
                    // Acción al hacer clic en el elemento de la lista
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
// Función para abrir la URL
Future<void> _launchUrl(Uri url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}
