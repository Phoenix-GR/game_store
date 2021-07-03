part of product_detail;

class _RatingsAndReview extends GetView<ProductDetailController> {
  const _RatingsAndReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: [
          _headerText(),
          Row(
            children: [
              Text(
                controller.product.rating.toString(),
                style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RatingIcon(rating: controller.product.rating, size: 20),
                  SizedBox(height: 10),
                  Text(
                    "${controller.product.totalReview} review",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _headerText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Ratings and Review",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        TextButton(
            style: TextButton.styleFrom(primary: Colors.grey),
            onPressed: () {},
            child: Text("View"))
      ],
    );
  }
}