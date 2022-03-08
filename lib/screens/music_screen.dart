import 'dart:convert';

import 'package:flutter/material.dart';

class MusicScreen extends StatelessWidget {
  final url = const [
    'https://odiomalley.com/wp-content/uploads/2020/07/discos-espana.jpg',
    'https://i.ytimg.com/vi/DpwSozTYlEo/maxresdefault.jpg',
    'https://imgsrv2.voi.id/N7KWPn1smEtZDtdQBob8Pb9J-iFdd9xoDoQCvNNKZ14/auto/1200/675/sm/1/bG9jYWw6Ly8vcHVibGlzaGVycy8xMTc5NjkvMjAyMTEyMjcxNzMyLW1haW4uY3JvcHBlZF8xNjQwNjAxMTY5LmpwZw.jpg'
  ];

  const MusicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('MÚSICA'),
      ),
      body: Column(
        children: [
         const  Divider(
            height: 10,
          ),
          const Text(
            'Recientes',
            textAlign: TextAlign.end,
            textScaleFactor: 1.2,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: FittedBox(
              alignment: Alignment.center,
              fit: BoxFit.cover,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const FadeInImage(
                        image: NetworkImage(
                            'https://los40.com/los40/imagenes/2017/02/08/album/1486575611_816191_1486576381_album_normal.jpg'),
                        width: 180,
                        height: 50,
                        fit: BoxFit.cover,
                        placeholder:
                            AssetImage('assets/images/jar-loading.gif'),
                      ),
                      Container(
                        width: 10,
                      ),
                      const FadeInImage(
                        image: NetworkImage(
                            'https://hips.hearstapps.com/es.h-cdn.co/hares/images/cultura/ocio/portadas-de-discos-y-de-albums-de-musica-mas-importantes-del-s.xx/nevermind-nirvana-1991/4247807-1-esl-ES/nevermind-nirvana-1991.jpg'),
                        width: 180,
                        height: 50,
                        fit: BoxFit.cover,
                        placeholder:
                            AssetImage('assets/images/jar-loading.gif'),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 0,
                    height: 10,
                  ),
                  Row(
                    children: [
                      const FadeInImage(
                        image: NetworkImage(
                            'https://gastv.mx/wp-content/uploads/2013/05/beatles.jpg'),
                        width: 180,
                        height: 50,
                        fit: BoxFit.cover,
                        placeholder:
                            AssetImage('assets/images/jar-loading.gif'),
                      ),
                      Container(
                        width: 10,
                      ),
                      const FadeInImage(
                        image: NetworkImage(
                            'https://cdn.oldskull.net/wp-content/uploads/2015/01/Rock_Covers-ilustracion-oldskull-03.jpg'),
                        width: 180,
                        height: 50,
                        fit: BoxFit.cover,
                        placeholder:
                            AssetImage('assets/images/jar-loading.gif'),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 0,
                    height: 10,
                  ),
                  Row(
                    children: [
                      const FadeInImage(
                        image: NetworkImage(
                            'https://i.pinimg.com/originals/b9/2f/0a/b92f0a217b4ec9407e326ce94167dc36.jpg'),
                        width: 180,
                        height: 50,
                        fit: BoxFit.cover,
                        placeholder:
                            AssetImage('assets/images/jar-loading.gif'),
                      ),
                      Container(
                        width: 10,
                      ),
                      const FadeInImage(
                        image: NetworkImage(
                            'https://cdns-images.dzcdn.net/images/cover/4928c5792c1d69fe440bb3d23b0b0a25/500x500.jpg'),
                        width: 180,
                        height: 50,
                        fit: BoxFit.cover,
                        placeholder:
                            AssetImage('assets/images/jar-loading.gif'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const Divider(
            height: 30,
          ),
          const Text(
            'Música relajante',
            textAlign: TextAlign.end,
            textScaleFactor: 1.2,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                const FadeInImage(
                  image: NetworkImage(
                      'https://los40.com/los40/imagenes/2017/11/28/album/1511885438_220718_1512040978_album_normal.jpg'),
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                  placeholder: AssetImage('assets/images/jar-loading.gif'),
                ),
                Container(
                  width: 10,
                ),
                const FadeInImage(
                  image: NetworkImage(
                      'https://los40.com/los40/imagenes/2019/12/19/album/1576745869_863024_1576747266_album_normal.jpg'),
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                  placeholder: AssetImage('assets/images/jar-loading.gif'),
                ),
                Container(
                  width: 10,
                ),
                const FadeInImage(
                  image: NetworkImage(
                      'https://los40.com/los40/imagenes/2019/12/19/album/1576745869_863024_1576747261_album_normal.jpg'),
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                  placeholder: AssetImage('assets/images/jar-loading.gif'),
                ),
              ],
            ),
          ),
           const Divider(
            height: 30,
          ),
          const Text(
            'Sonidos Naturales',
            textAlign: TextAlign.end,
            textScaleFactor: 1.2,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                const FadeInImage(
                  image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2018/06/05/02/46/rio-3454621_960_720.jpg'),
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                  placeholder: AssetImage('assets/images/jar-loading.gif'),
                ),
                Container(
                  width: 10,
                ),
                const FadeInImage(
                  image: NetworkImage(
                      'https://t1.pb.ltmcdn.com/es/posts/0/9/7/que_significa_sonar_con_lluvia_5790_orig.jpg'),
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                  placeholder: AssetImage('assets/images/jar-loading.gif'),
                ),
                Container(
                  width: 10,
                ),
                const FadeInImage(
                  image: NetworkImage(
                      'https://www.ecured.cu/images/c/cc/Viento00.jpg'),
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                  placeholder: AssetImage('assets/images/jar-loading.gif'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
