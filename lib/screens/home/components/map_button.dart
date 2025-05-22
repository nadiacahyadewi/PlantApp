import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/screens/maps/maps.dart';

class TitleWithMoreBtns extends StatefulWidget {
  const TitleWithMoreBtns({
    super.key,
    required this.title,
    required this.press,
  });

  final String title;
  final Function press;

  @override
  State<TitleWithMoreBtns> createState() => _TitleWithMoreBtnsState();
}

class _TitleWithMoreBtnsState extends State<TitleWithMoreBtns> {
  String? alamatDipilih;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              TitleWithCustomUnderline(text: widget.title),
              const Spacer(),
              FilledButton(
                onPressed: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MapPage(),
                    ),
                  );
                  if (result != null) {
                    setState(() {
                      alamatDipilih = result;
                    });
                  }
                },
                style: FilledButton.styleFrom(backgroundColor: kPrimaryColor),
                child: const Text("Pilih"),
              ),
            ],
          ),
          const SizedBox(height: 8),
          alamatDipilih == null
              ? const Text(
                  'Tidak ada alamat yang dipilih',
                  style: TextStyle(color: Colors.grey),
                )
              : Text(
                  alamatDipilih!,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
