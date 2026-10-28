import 'package:belajarflutter/models/product_model.dart';
import 'package:get/get.dart';

class ListProductController extends GetxController {
  List<ProductModel> listProduk = [
    ProductModel(
      namaProduk: "Charlotte Tilbury Pillow Talk Lipstick",
      harga: "Rp580.000",
      deskripsi: "An iconic matte lipstick in a universally flattering nude-pink shade, with a creamy and comfortable formula that delivers rich, long-lasting color without drying out the lips.",
      image: "https://i.pinimg.com/736x/47/1b/c1/471bc1b4704c6818bcf94e716f59c8a3.jpg",
      review: "The shade suits a wide range of skin tones and feels comfortable all day long.",
      rating: "4.8",
      namaToko: "Sephora",
    ),
    ProductModel(
      namaProduk: "Dior Addict Lip Glow Oil",
      harga: "Rp680.000",
      deskripsi: "A glossy lip oil that deeply hydrates while adding a natural, healthy-looking tint, leaving lips smooth and plump with a luminous, non-sticky shine and a delicate scent.",
      image: "https://i.pinimg.com/1200x/04/c4/e9/04c4e9bbb30bae3fd906f157c70463c5.jpg",
      review: "My lips feel moisturized and soft, it isn't sticky at all, and the scent is lovely.",
      rating: "4.7",
      namaToko: "Sephora",
    ),
    ProductModel(
      namaProduk: "La Mer Crème de la Mer",
      harga: "Rp4.500.000",
      deskripsi: "A luxurious moisturizing cream powered by the famous Miracle Broth, with a rich, velvety texture that helps skin look smoother, softer, and more radiant over time.",
      image: "https://i.pinimg.com/736x/ab/44/be/ab44bee2c63eeeec4817c52adb5e962f.jpg",
      review: "The texture is rich, and my skin feels soft and hydrated throughout the day.",
      rating: "4.6",
      namaToko: "Sephora",
    ),
    ProductModel(
      namaProduk: "Estée Lauder Advanced Night Repair Serum",
      harga: "Rp1.900.000",
      deskripsi: "A bestselling night serum with a lightweight, fast-absorbing formula that supports the skin's overnight renewal, boosts hydration, and helps you wake up to a fresher, smoother complexion.",
      image: "https://i.pinimg.com/1200x/45/1e/a3/451ea38af721b401cff4691e73a57de1.jpg",
      review: "My skin looks brighter and feels bouncier after using it regularly.",
      rating: "4.8",
      namaToko: "Sephora",
    ),
    ProductModel(
      namaProduk: "Giorgio Armani Luminous Silk Foundation",
      harga: "Rp1.450.000",
      deskripsi: "A lightweight liquid foundation with buildable medium coverage and a natural glowy finish that evens out the complexion without feeling heavy or mask-like.",
      image: "https://i.pinimg.com/736x/a5/19/1d/a5191d46374bdc6b324ff56fb922d38a.jpg",
      review: "It looks like my own skin, only more even and radiant.",
      rating: "4.7",
      namaToko: "Sephora",
    ),
    ProductModel(
      namaProduk: "Hourglass Ambient Lighting Powder",
      harga: "Rp1.250.000",
      deskripsi: "A finishing powder that softly blurs the look of pores and fine lines, creating a diffused soft-focus glow that brightens the complexion without looking powdery.",
      image: "https://i.pinimg.com/1200x/e8/e5/1e/e8e51ec514cc58f5baf82de80880bffe.jpg",
      review: "My face looks smooth and glowing, both in photos and in real life.",
      rating: "4.7",
      namaToko: "Sephora",
    ),
    ProductModel(
      namaProduk: "Chanel Les Beiges Healthy Glow Sheer Powder",
      harga: "Rp1.300.000",
      deskripsi: "A sheer, ultra-fine powder with a weightless texture that sets makeup without looking heavy, leaving a fresh, healthy, and naturally luminous finish.",
      image: "https://i.pinimg.com/1200x/6e/16/e2/6e16e2f7b483c5495a0287c29b3adbf2.jpg",
      review: "It's lightweight, doesn't look cakey, and gives my face a fresh look.",
      rating: "4.6",
      namaToko: "Sephora",
    ),
    ProductModel(
      namaProduk: "Yves Saint Laurent Libre Eau de Parfum",
      harga: "Rp2.100.000",
      deskripsi: "A bold yet elegant floral-lavender fragrance with a warm touch of vanilla, creating a confident, sophisticated scent that lasts long and leaves a memorable impression.",
      image: "https://i.pinimg.com/1200x/b0/9f/c2/b09fc29cf290ab6845c5b32bcf2e38ca.jpg",
      review: "The fragrance feels luxurious, lasts a long time, and I get lots of compliments.",
      rating: "4.8",
      namaToko: "Sephora",
    ),
  ].obs;
}