import 'package:flutter/material.dart';

class Suggestion extends StatelessWidget {
  const Suggestion({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 16,
            ).copyWith(right: 0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(
                    'lib/images/maskun.png',
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Mas Kun',
                          style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 17),
                        )
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => Dialog(
                        child: ListView(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shrinkWrap: true,
                            children: [
                              'Report',
                            ]
                                .map(
                                  (e) => InkWell(
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 12,
                                        horizontal: 16,
                                      ),
                                      color: Colors.white,
                                      child: Text(e),
                                    ),
                                  ),
                                )
                                .toList()),
                      ),
                    );
                  },
                  icon: const Icon(Icons.more_vert),
                )
              ],
            ),
            // IMAGE SECTION
          ),

          const SizedBox(height: 2),
          SizedBox(
            // height: MediaQuery.of(context).size.height * 0.35,
            height: 200,
            width: 400,
            child: Image.asset(
              'lib/images/maskun-wed1.png',
              fit: BoxFit.cover,
            ),
          ),

          // COMMENT AND SAVE SECTION
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Wedding Photography",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 1),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.comment,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
