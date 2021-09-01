import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../widgets/customnavigation.dart';
import 'package:cryptocurrency_app/constants/keys.dart';
import 'package:cryptocurrency_app/provider/crypto_provider.dart';
import 'package:cryptocurrency_app/screens/settings.dart';
import 'package:cryptocurrency_app/widgets/favorite_pair.dart';
import 'package:cryptocurrency_app/widgets/pair_tile.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:easy_localization/easy_localization.dart';

class Exchange extends HookConsumerWidget {
  const Exchange({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              margin: EdgeInsets.only(left: 50),
              width: double.infinity,
              child: CrytoAssets()),
          CollapsingNavigationDrawer(selectedIndex: 6),
        ],
      ),
    );
  }
}

class CrytoAssets extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pairs = ref.watch(pairsProvider);
    final favoritePair = ref.watch(favoritePairProvider);
    return Container(
      key: Keys.HOME_SCREEN,
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  color: Color(0xff071d40),
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          'Crypto Assets',
                          style: TextStyle(color: Colors.white, fontSize: 23),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SettingScreen(),
                            )),
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50)),
                          // width: 45,
                          child: Icon(
                            Icons.settings,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 190,
                  child: favoritePair.when(
                    data: (data) {
                      return FavoritePairWidget(data);
                    },
                    loading: () => Center(
                      child: CircularProgressIndicator(),
                    ),
                    error: (error, e) => Center(
                      child: Text(error.toString().tr()),
                    ),
                  ),
                ),
                Expanded(
                  child: pairs.when(
                    data: (data) {
                      return Container(
                        child: ListView.builder(
                          padding: EdgeInsets.only(top: 0.0),
                          itemCount: data.length,
                          itemBuilder: (ctx, int idx) => ProviderScope(
                            overrides: [
                              currentPair.overrideWithValue(data[idx]),
                            ],
                            child: const PairTile(),
                          ),
                        ),
                      );
                    },
                    loading: () => Center(
                      child: CircularProgressIndicator(),
                    ),
                    error: (error, e) => Center(
                      child: Text(error.toString().tr()),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
