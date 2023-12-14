import 'package:flutter/material.dart';
import 'package:simplynews/model/news_model.dart';
// import '../../../aturan/pengaturan.dart';
// import '../../../widgets/spacer/spacer_custom.dart';
import '../../details/details_page.dart';

class GridViewWidget extends StatelessWidget {
  final int gridCount;
  final double fontSize;
  final onTap;

  const GridViewWidget(
      {Key? key,
      required this.gridCount,
      required this.fontSize,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: gridCount,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      children: contentNewsList.map((content) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailsPage(
                title: content.title,
                author: content.author,
                description: content.description,
                datePublish: content.datePublish,
                category: content.category,
                imageAsset: content.imageAsset,
              );
            }));
          },
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                          10.0), // Sesuaikan radius sesuai keinginan Anda
                      topRight: Radius.circular(10.0),
                    ),
                    child: Image.asset(
                      content.imageAsset,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 10.0, top: 4.0, bottom: 4.0),
                  child: Text(
                    content.title,
                    style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, bottom: 15.0, top: 8.0),
                  child: Text(content.datePublish,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      )),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
