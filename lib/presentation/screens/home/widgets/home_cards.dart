import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../common/routes/app_router.gr.dart';

class HomeCards extends StatelessWidget {
  const HomeCards({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16.0) + const EdgeInsets.only(bottom: 16.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 16 / 9,
        crossAxisSpacing: 12.0,
      ),
      children: [
        _buildCard(
          context,
          Icons.inventory_rounded,
          'Products',
          () => context.router.push(ProductsScreenRoute(shouldReturnProduct: false)),
        ),
        _buildCard(
          context,
          Icons.groups_rounded,
          'Clients',
          () => context.router.push(const ClientsScreenRoute()),
        ),
      ],
    );
  }

  Widget _buildCard(BuildContext context, IconData iconData, String label, [Function()? onTap]) => Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(24.0),
          border: Border.all(
            width: 2.0,
            color: Theme.of(context).colorScheme.primary.withOpacity(.4),
          ),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(24.0),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: FittedBox(
                      child: Icon(
                        iconData,
                        color: Theme.of(context).colorScheme.primary.withOpacity(.2),
                      ),
                    ),
                  ),
                ),
                Text(
                  label,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      );
}
