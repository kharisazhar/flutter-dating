import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Appbar
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 0.0,
        leading: InkWell(
            onTap: () {
              /// Navigation
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        title: Text('Details',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.w600)),
        actions: [
          InkWell(
              onTap: () {
                /// Navigation
              },
              child: const Icon(
                Icons.more_vert,
                color: Colors.black,
              )),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(22.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Profile Image
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(22.0),
                  child: Image.asset(
                    'assets/images/pict1.jpeg',
                    height: 440,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 32.0),

              /// Account Information
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Name
                      Text(
                        'Dian Sastro, 35',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 4.0),

                      /// Disctance
                      Row(
                        children: [
                          const Icon(
                            Icons.pin_drop_sharp,
                            color: Colors.pinkAccent,
                          ),
                          Text('Distance (2.5km)',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(color: Colors.grey)),
                        ],
                      )
                    ],
                  ),

                  /// Favorite Button
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22.0, vertical: 12.0),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Row(
                      children: const [
                        Icon(Icons.favorite_outline_outlined),
                        SizedBox(
                          width: 4.0,
                        ),
                        Text('2K'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 22.0),
              Text('Waiting for someone best partner',
                  style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: 22.0),

              /// Promo Section
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(22.0),
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      stops: [0.1, 0.2, 0.3, 0.9],
                      colors: [
                        Colors.pink,
                        Colors.pink,
                        Colors.pink,
                        Colors.purple,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(32.0)),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('You and Pevita have 80% of matching',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(color: Colors.white, height: 1.4)),
                          const SizedBox(height: 8.0),
                          Text('More',
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(color: Colors.white)),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/icon/icon_thumbs_up.png',
                      width: 42,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 22.0),

              /// Action Button
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12.0),
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      decoration: const BoxDecoration(
                        color: Colors.pink,
                        shape: BoxShape.circle,
                      ),
                      child: const InkWell(
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
