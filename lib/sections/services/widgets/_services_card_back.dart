part of '../services.dart';

class _ServiceCardBackWidget extends StatelessWidget {
  const _ServiceCardBackWidget(
      {Key? key, required this.serviceDesc, required this.serviceTitle})
      : super(key: key);

  final String serviceDesc;
  final String serviceTitle;

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              serviceDesc,
              style: AppText.l1,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            height: AppDimensions.normalize(14),
            width: AppDimensions.normalize(60),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.c!.primary,
              ),
              onPressed: () => showContactDialog(context),
              child: Text(
                'Hire me!',
                style: AppText.b2!.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<dynamic> showContactDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (contecxt) => AlertDialog(
        title: Text(
          "Hire Me!",
          style: AppText.b1,
        ),
        actionsAlignment: MainAxisAlignment.end,
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              "Back",
              style: TextStyle(
                color: AppTheme.c!.primary,
              ),
            ),
          )
        ],
        content: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              height: 40.0,
              onPressed: () => openURL(
                'https://api.whatsapp.com/send?phone=8412063136',
              ),
              color: const Color(0xff34CB62),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    FontAwesomeIcons.whatsapp,
                    color: Colors.white,
                  ),
                  Space.x!,
                  Text(
                    'WhatsApp',
                    style: AppText.l1!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Space.y1!,
            MaterialButton(
              height: 40.0,
              onPressed: () => openURL(
                'https://www.upwork.com/freelancers/~01006e190697df1b9f',
              ),
              color: const Color(0xff13A800),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.network(
                    'https://img.icons8.com/ios-filled/50/000000/upwork.png',
                    height: 35.0,
                    color: Colors.white,
                  ),
                  Space.x!,
                  Text(
                    'Upwork',
                    style: AppText.l1!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
