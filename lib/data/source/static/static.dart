import 'package:ecommerce/core/constant/app_image_asset.dart';
import 'package:ecommerce/data/model/on_board_model.dart';

List<OnBoardModel> onBoardList = [
  OnBoardModel(
    shape: AppImageAsset.shape1,
    image: AppImageAsset.onBoard1,
    title: 'Purchase Online !!',
    body: 'Your one-stop shop for all your online\n shopping needs!',
  ),
  OnBoardModel(
    shape: AppImageAsset.shape2,
    image: AppImageAsset.onBoard2,
    title: ' Secure Transactions !!',
    body:
        'We use trusted payment gateways to\n protect your financial information.',
  ),
  OnBoardModel(
      shape: AppImageAsset.shape3,
      image: AppImageAsset.onBoard3,
      title: 'Get Your order !!',
      body:
          'Discover a vast array of products from your\n favorite brands, all at your fingertips.'),
];
