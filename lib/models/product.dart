class Product {
  final int id, price;
  final String title, subTitle, description, image;

  Product(
      {required this.id,
      required this.price,
      required this.title,
      required this.subTitle,
      required this.description,
      required this.image});
}
List<Product>products = [
  Product(
    id: 1,
    price: 59,
    title: "الارض بعد طوفان نوح",
    subTitle: "شريف سامي",
    image: "images/a.jpg",
    description: "يعرض الكاتب بعد بحثٍ شامل حقيقة ما حدث من جميع وجهات النظر المختلفة، ومن منظور جميع الديانات والمعتقدات، كما ينقل لنا ما قيل عن الطوفان في التاريخ ...",
  ),
  Product(
      id: 2,
      price: 75,
      title: "الحضارات السامية المبكرة",
      subTitle: "الدكتور خزعل الماجدي",
      image: "images/b2.jpg",
      description:"يشرح هذا الكتاب، من خلال علم الساميات، تاريخ الشعوب السامية وأصولها الحضارية ومناقشة المشكلة السامية وأصل مصطلح السامية، ثم التعريف باللغات السامية وأنواعها ...",
  ),
  Product(
    id: 3,
    price: 54,
    title: "المراة الكاملة",
    subTitle: "سلطان موسى الموسى",
    image: "images/b3.jpg",
    description:"هي روايه خياليه بُنيت على أحداث واقعية كما ذكر الكاتب في بداية الكتاب تتحدث عن مصر القديمة ما قبل الميلاد و المرأة الكاملة هي ( الملكة نفرتيتي) ...",
  ),
  Product(
    id: 4,
    price: 68,
    title: "اوراق شمعون المصري",
    subTitle: "اسامه عبد الرءوف",
    image: "images/b4.jpg",
    description:"وبعد… فهذا خِتامُ ما كتبَه(شمعون بن زخاري)، والملقب بشَمْعون المَصْري، عن أخبارِ بني إسرائيل في برية سين، وما كان من أمرِهم منذ عبور البحر وحتى وفاة موسى بن عمران.",
  ),
];
