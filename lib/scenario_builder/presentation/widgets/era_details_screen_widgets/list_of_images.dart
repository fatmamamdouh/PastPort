import 'package:flutter/cupertino.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_images.dart';
import 'package:pastport/scenario_builder/presentation/widgets/era_details_screen_widgets/list_view_item.dart';

class ListOfImages extends StatelessWidget {
  const ListOfImages({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * .35,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: [
          ListViewItem(image: Assets.ancientEgyptDetails_1, width: context.width * .5, height: context.height * .35,),
          SizedBox(width: 8.0,),
          ListViewItem(image: Assets.ancientEgyptDetails_2, width: context.width * .5, height: context.height * .35,),
          SizedBox(width: 8.0,),
          ListViewItem(image: Assets.ancientEgyptDetails_1, width: context.width * .5, height: context.height * .35,),
          SizedBox(width: 8.0,),
        ],
      ),
    );
  }
}
