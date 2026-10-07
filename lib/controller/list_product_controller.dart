import 'package:belajarflutter/models/product_model.dart';
import 'package:get/get.dart';

class ListProductController extends GetxController {
  List<ProductModel> listProduk = [
    ProductModel(
      namaProduk: "Charlotte Tilbury Pillow Talk Lipstick",
      harga: "Rp580.000",
      deskripsi: "Lipstik matte warna nude-pink ikonik dengan tekstur creamy dan tahan lama.",
      image: "https://i.pinimg.com/736x/47/1b/c1/471bc1b4704c6818bcf94e716f59c8a3.jpg",
      review: "Warnanya cocok di banyak skin tone dan nyaman dipakai seharian.",
      rating: "4.8",
      namaToko: "Sephora",
    ),
    ProductModel(
      namaProduk: "Dior Addict Lip Glow Oil",
      harga: "Rp680.000",
      deskripsi: "Lip oil berkilau yang melembapkan dan memberi warna natural di bibir.",
      image: "https://i.pinimg.com/1200x/04/c4/e9/04c4e9bbb30bae3fd906f157c70463c5.jpg",
      review: "Bibir terasa lembap, tidak lengket, dan wanginya enak.",
      rating: "4.7",
      namaToko: "Sephora",
    ),
    ProductModel(
      namaProduk: "La Mer Crème de la Mer",
      harga: "Rp4.500.000",
      deskripsi: "Krim pelembap mewah dengan Miracle Broth untuk kulit tampak halus dan kenyal.",
      image: "https://i.pinimg.com/736x/ab/44/be/ab44bee2c63eeeec4817c52adb5e962f.jpg",
      review: "Teksturnya kaya, kulit terasa lembut dan terhidrasi sepanjang hari.",
      rating: "4.6",
      namaToko: "Sephora",
    ),
    ProductModel(
      namaProduk: "Estée Lauder Advanced Night Repair Serum",
      harga: "Rp1.900.000",
      deskripsi: "Serum malam yang membantu memperbaiki dan menjaga kulit tampak lebih segar.",
      image: "https://i.pinimg.com/1200x/45/1e/a3/451ea38af721b401cff4691e73a57de1.jpg",
      review: "Kulit terlihat lebih cerah dan kenyal setelah pemakaian rutin.",
      rating: "4.8",
      namaToko: "Sephora",
    ),
    ProductModel(
      namaProduk: "Giorgio Armani Luminous Silk Foundation",
      harga: "Rp1.450.000",
      deskripsi: "Foundation ringan dengan hasil akhir glowy natural dan coverage medium.",
      image: "https://i.pinimg.com/736x/a5/19/1d/a5191d46374bdc6b324ff56fb922d38a.jpg",
      review: "Hasilnya seperti kulit sendiri tapi lebih rata dan bercahaya.",
      rating: "4.7",
      namaToko: "Sephora",
    ),
    ProductModel(
      namaProduk: "Hourglass Ambient Lighting Powder",
      harga: "Rp1.250.000",
      deskripsi: "Bedak finishing yang menyamarkan tampilan pori dan memberi efek soft-focus.",
      image: "https://i.pinimg.com/1200x/e8/e5/1e/e8e51ec514cc58f5baf82de80880bffe.jpg",
      review: "Wajah tampak halus dan glowing di foto maupun aslinya.",
      rating: "4.7",
      namaToko: "Sephora",
    ),
    ProductModel(
      namaProduk: "Chanel Les Beiges Healthy Glow Sheer Powder",
      harga: "Rp1.300.000",
      deskripsi: "Bedak tipis dengan hasil akhir sehat dan bercahaya alami.",
      image: "https://i.pinimg.com/1200x/6e/16/e2/6e16e2f7b483c5495a0287c29b3adbf2.jpg",
      review: "Ringan, tidak cakey, dan memberi kesan fresh.",
      rating: "4.6",
      namaToko: "Sephora",
    ),
    ProductModel(
      namaProduk: "Yves Saint Laurent Libre Eau de Parfum",
      harga: "Rp2.100.000",
      deskripsi: "Parfum floral-lavender dengan sentuhan vanila yang elegan dan berani.",
      image: "https://i.pinimg.com/1200x/b0/9f/c2/b09fc29cf290ab6845c5b32bcf2e38ca.jpg",
      review: "Wanginya mewah, tahan lama, dan banyak dapat pujian.",
      rating: "4.8",
      namaToko: "Sephora",
    ),
  ];
}