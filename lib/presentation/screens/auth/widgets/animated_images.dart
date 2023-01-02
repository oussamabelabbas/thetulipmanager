import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class AnimatedImages extends StatefulWidget {
  const AnimatedImages({super.key});

  @override
  State<AnimatedImages> createState() => _AnimatedImagesState();
}

class _AnimatedImagesState extends State<AnimatedImages> with SingleTickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();

  final List<Image> images = [
    Image.asset('assets/images/pexels-antoni-shkraba-4348403.jpg'),
    Image.asset('assets/images/pexels-bidvine-1249611.jpg'),
    Image.asset('assets/images/pexels-cottonbro-studio-3738077.jpg'),
    Image.asset('assets/images/pexels-ivan-samkov-4491846.jpg'),
    Image.asset('assets/images/pexels-jonas-kakaroto-783590.jpg'),
    Image.asset('assets/images/pexels-julie-aagaard-2766334.jpg'),
    Image.asset('assets/images/pexels-raman-deep-1102292.jpg'),
    Image.asset('assets/images/pexels-rfstudio-3817533.jpg'),
    Image.asset('assets/images/pexels-surene-palvie-2767689.jpg'),
    Image.asset('assets/images/pexels-thiều-hoàng-phước-3690657.jpg'),
    Image.asset('assets/images/pexels-karolina-grabowska-4219651.jpg'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return MasonryGridView.count(
          controller: _scrollController,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(8.0),
          crossAxisCount: 2,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4.0,
              margin: EdgeInsets.zero,
              clipBehavior: Clip.antiAlias,
              color: Theme.of(context).colorScheme.background,
              surfaceTintColor: Theme.of(context).colorScheme.background,
              child: images[index],
            );
          },
        );
      },
    );
  }
}
