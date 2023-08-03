import '../barrel.dart';

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
          const CustomTextDetails(text:"Social Media"),
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
                       launchUrl(Uri.parse(socialMediaList[index].url.toString()));
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
