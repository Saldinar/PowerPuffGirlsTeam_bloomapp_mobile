import 'package:amamini_client/features/domain/entity/product/default_picture_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class ImagesCarouselWidget extends StatefulWidget {
  final List<DefaultPictureModelEntity> pictures;
  const ImagesCarouselWidget({
    required this.pictures,
    super.key,
  });

  @override
  State<ImagesCarouselWidget> createState() => _ImagesCarouselWidgetState();
}

class _ImagesCarouselWidgetState extends State<ImagesCarouselWidget> {
  int currentPage = 0;
  String get image => 'assets/images/image_placeholder.png';
  final _carouselController = CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.42;
    final theme = Theme.of(context);
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        _buildProductImagesCarousel(height),
        if (widget.pictures.length > 1) _buildDotsIndicator(height, theme),
      ],
    );
  }

  CarouselSlider _buildProductImagesCarousel(double height) {
    return CarouselSlider(
      carouselController: _carouselController,
      options: CarouselOptions(
        enlargeCenterPage: false,
        enableInfiniteScroll: widget.pictures.length > 1,
        scrollPhysics: widget.pictures.length > 1
            ? const BouncingScrollPhysics()
            : const NeverScrollableScrollPhysics(),
        onPageChanged: (index, reason) {
          setState(() {
            currentPage = index;
          });
        },
        height: height,
        viewportFraction: 1.0,
      ),
      items: widget.pictures
          .map(
            (item) => Center(
              child: Image.network(
                item.imageUrl,
                fit: BoxFit.cover,
                height: height,
                width: double.infinity,
              ),
            ),
          )
          .toList(),
    );
  }

  Positioned _buildDotsIndicator(double height, ThemeData theme) {
    return Positioned(
      bottom: height * .02,
      child: DotsIndicator(
        position: currentPage,
        dotsCount: widget.pictures.length,
        decorator: DotsDecorator(
          color: theme.indicatorColor,
          activeColor: theme.primaryColor,
        ),
        onTap: (position) {
          _carouselController.animateToPage(position);
          currentPage = position;
        },
      ),
    );
  }
}
