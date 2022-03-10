import 'package:flutter/material.dart';
final List<String> url = <String>['https://www.guioteca.com/los-80/files/2016/01/MICHAEL-JACKSON-Thrillerfrontal.jpg',
                                     'https://los40.com/los40/imagenes/2017/11/28/album/1511885438_220718_1512040978_album_normal.jpg',
                                     'https://rtvc-assets-radionica3.s3.amazonaws.com/s3fs-public/senalradionica/articulo-noticia/galeriaimagen/c7590ab3f18d63d195f2e53a11798339_0.jpg',
                                     'https://culturamania.com/wp-content/uploads/2017/07/Aerosmith-Aerosmith-Frontal.jpg',
                                     'https://arteint.com/wp-content/uploads/2018/12/back.jpg',
                                     'https://image.europafm.com/clipping/cmsimages02/2022/02/04/53E2A463-8226-40AD-AE5E-3D642F7A83E8/rihanna-desnuda-unapologetic_98.jpg?crop=1000,563,x0,y0&width=1900&height=1069&optimize=high&format=webply'
                                      ];
final List<String> url2 = <String>['https://fondosmil.com/fondo/13618.jpg',
                                    'https://s1.1zoom.me/big0/264/418716-indiana111.jpg',
                                    'https://cdn.pixabay.com/photo/2019/09/01/23/24/nature-4446215_960_720.jpg',
                                    'https://p4.wallpaperbetter.com/wallpaper/540/868/1004/nature-rain-summer-season-1920x1080-nature-seasons-hd-art-wallpaper-preview.jpg',
                                    'https://www.semana.com/resizer/lzrRWP9O5qDeRxxRftzy5Hgo570=/1200x675/filters:format(jpg):quality(50)//cloudfront-us-east-1.images.arcpublishing.com/semana/MOPJ3ARCRNFQPK3MOVO5BWJD3A.jpg'
                                    ];                                      
class Music extends StatelessWidget {
  
 const Music({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text('Configuración de Música'),
        ),
        body: Column(
          children:   [
          const Divider(
            height: 20,
          ),
          const Text(
            'Recientes',
            textAlign: TextAlign.end,
            textScaleFactor: 1.2,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),            
            Container(
            padding: const EdgeInsets.all(10),
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
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
              
            Container(
              height: 120,
              padding: const EdgeInsets.all(1),
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 30),
                scrollDirection: Axis.horizontal,
                itemCount: url.length,
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    padding: const EdgeInsets.all(5),
                    child: FadeInImage(
                      
                      image:  NetworkImage(url[index]),
                      placeholder:
                            const AssetImage('assets/images/jar-loading.gif'),
                    ),
                  );

                },
           

              ),
            ), 
            const Divider(
              height: 30,
            ),
            const Text(
              'Naturaleza',
              textAlign: TextAlign.end,
              textScaleFactor: 1.2,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),            
            
              Container(
              height: 120,
              padding: const EdgeInsets.all(1),
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 30),
                scrollDirection: Axis.horizontal,
                itemCount: url2.length,
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    padding: const EdgeInsets.all(5),
                    child: FadeInImage(
                      image:  NetworkImage(url2[index]),
                      placeholder:
                            const AssetImage('assets/images/jar-loading.gif'),
                    ),
                  );

                },
           

              ),
            ),             
          ],
        )
    );
  }
}


/*                   Image(image: NetworkImage('https://arteint.com/wp-content/uploads/2018/12/back.jpg')),
                Container(width: 10),
                Image(image: NetworkImage('https://arteint.com/wp-content/uploads/2018/12/back.jpg')),
                Container(width: 10),
                Image(image: NetworkImage('https://arteint.com/wp-content/uploads/2018/12/back.jpg')),
                Container(width: 10),
                Image(image: NetworkImage('https://arteint.com/wp-content/uploads/2018/12/back.jpg')),
                Container(width: 10),
                Image(image: NetworkImage('https://arteint.com/wp-content/uploads/2018/12/back.jpg')),
                Container(width: 10),
                Image(image: NetworkImage('https://arteint.com/wp-content/uploads/2018/12/back.jpg'))
 */