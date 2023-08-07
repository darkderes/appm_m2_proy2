import '../barrel.dart';

class Profile extends StatelessWidget {
  final int indexColor;
  const Profile({
    super.key, required  this.indexColor,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                const Header(),
            
                GestureDetector(
                    child:
                        CustomCard(text: onboardContent.phone, icon: Icons.phone, colorInput: pageColors[indexColor]),
                    onTap: () {
                      makePhoneCall(onboardContent.phone);
                    }),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                    child:
                        CustomCard(text: onboardContent.email, icon: Icons.email, colorInput: pageColors[indexColor]),
                    onTap: () {
                      final Uri emailLaunchUri = Uri(
                        scheme: 'mailto',
                        path: onboardContent.email,
                        query: encodeQueryParameters(<String, String>{
                          'subject': 'Contacto',
                        }),
                      );
                      launchUrl(emailLaunchUri);
                    }),
                const SizedBox(
                  height: 10,
                ),
                const CustomQr(
                    nombre: "https://www.linkedin.com/in/jorge-darderes/"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void makePhoneCall(String phoneNumber) async {
  final url = 'tel:$phoneNumber';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'No se pudo realizar la llamada: $url';
  }
}

String? encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map((MapEntry<String, String> e) =>
          '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
      .join('&');
}
// ···
