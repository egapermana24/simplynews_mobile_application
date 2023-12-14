import 'package:simplynews/resource/resource.gen.dart';

class ContentNews {
  String title;
  String author;
  String description;
  String datePublish;
  String category;
  String imageAsset;

  ContentNews({
    required this.title,
    required this.author,
    required this.description,
    required this.datePublish,
    required this.category,
    required this.imageAsset,
  });
}

var contentNewsList = [
  ContentNews(
    title: 'Kaledonia Baru vs Inggris Jadi Laga Pertama Turnamen Resmi di JIS',
    author: 'Ega Permana',
    description:
        'Pertandingan babak penyisihan Grup C Piala Dunia U-17 2023 antara Kaledonia Baru U-17 vs Inggris U-17 menjadi momen bersejarah bagi Jakarta International Stadium (JIS). Inggris berhasil meraih kemenangan sejarah dengan skor 10-0 atas Kaledonia Baru. Ini membuat Young Lions menjadi tim pertama yang mencetak gol dua digit di Piala Dunia U-17 Indonesia. Pertandingan ini merupakan yang pertama kali digelar di JIS dalam turnamen resmi, menarik perhatian 6.684 penonton. Selain kegiatan olahraga, JIS juga digunakan untuk konser musik Dewa 19 dan sebagai lokasi salat Idul Fitri. Setelah perubahan kebijakan, Piala Dunia U-17 2023 menjadikan JIS sebagai tempat penyelenggaraan hampir semua pertandingan Grup C dan E, serta sebagian Grup D dan F.',
    datePublish: 'Sabtu, 11 Nov 2023',
    category: 'Olahraga',
    imageAsset: Assets.images.list1.path,
  ),
  ContentNews(
    title: 'Pertumbuhan Ekonomi Global Meningkat, Proyeksi Data 2023',
    author: 'Nama Penulis',
    description:
        'Data terkini menunjukkan adanya peningkatan signifikan dalam pertumbuhan ekonomi global untuk tahun 2023. Sektor-sektor penting seperti teknologi, kesehatan, dan keuangan terlihat mendominasi pertumbuhan. Meskipun terdapat tantangan-tantangan, proyeksi ini memberikan optimisme bagi pasar global. Faktor-faktor seperti kebijakan pemerintah, investasi, dan perubahan perilaku konsumen menjadi penentu dalam perkembangan ekonomi global ini. Diharapkan proyeksi ini dapat memberikan arah positif bagi upaya pemulihan ekonomi pasca pandemi.',
    datePublish: 'Sabtu, 11 Nov 2023',
    category: 'Ekonomi',
    imageAsset: Assets.images.list2.path,
  ),
  ContentNews(
    title: 'Transformasi Pendidikan: Teknologi dalam Pembelajaran Online',
    author: 'Penulis Artikel',
    description:
        'Teknologi dalam pendidikan membawa perubahan besar dalam metode pembelajaran online. Pandemi mempercepat adopsi teknologi untuk menjaga kelangsungan pendidikan. Dari penggunaan platform digital hingga pengembangan konten interaktif, inovasi-inovasi ini memungkinkan siswa dan pengajar untuk terhubung tanpa terhalang jarak. Hal ini memberikan dorongan dalam penyediaan akses pendidikan di mana pun, meski tantangan seperti kesenjangan aksesibilitas dan kesiapan infrastruktur masih perlu diatasi.',
    datePublish: 'Sabtu, 11 Nov 2023',
    category: 'Pendidikan',
    imageAsset: Assets.images.list3.path,
  ),
  ContentNews(
    title: 'Inovasi Teknologi Terkini: AI dan Masa Depan Bisnis',
    author: 'Nama Penulis',
    description:
        'Kemajuan terbaru dalam kecerdasan buatan (AI) membuka pintu baru bagi perusahaan dalam menghadapi masa depan bisnis. AI memungkinkan otomatisasi, analisis data yang canggih, serta prediksi yang mendalam, memungkinkan perusahaan untuk mengoptimalkan operasi mereka. Hal ini juga membuka peluang baru dalam pengalaman pelanggan, pengembangan produk, dan pengambilan keputusan berbasis data.',
    datePublish: 'Sabtu, 11 Nov 2023',
    category: 'Teknologi',
    imageAsset: Assets.images.list4.path,
  ),
  ContentNews(
    title: 'Perjuangan Pelaku Pendidikan dalam Kondisi Pandemi',
    author: 'Penulis Artikel',
    description:
        'Kondisi pandemi telah menjadi ujian besar bagi pelaku pendidikan dalam menghadirkan proses pembelajaran yang efektif. Dengan berbagai pembatasan dan perubahan kebijakan, guru, siswa, dan lembaga pendidikan berupaya untuk menyesuaikan dan tetap memberikan pengalaman belajar yang bermakna. Tantangan terbesar dalam pendidikan adalah memastikan kontinuitas pembelajaran, menyediakan sumber daya, dan menangani kesenjangan aksesibilitas. Meskipun sulit, berbagai inovasi terlihat dalam metode pembelajaran online, mulai dari penggunaan platform digital, kelas virtual, hingga pengembangan konten pendidikan yang lebih interaktif.',
    datePublish: 'Sabtu, 11 Nov 2023',
    category: 'Pendidikan',
    imageAsset: Assets.images.list5.path,
  ),
  ContentNews(
    title: 'Era Digital: Perkembangan Bisnis E-commerce di Pasar Global',
    author: 'Nama Penulis',
    description:
        'Perkembangan teknologi dan transformasi digital telah merubah lanskap bisnis global, terutama dalam sektor e-commerce. Kecepatan dan kenyamanan bertransaksi secara online telah meningkatkan popularitas e-commerce di pasar global. Hal ini juga membuka pintu bagi pelaku usaha kecil dan menengah untuk bersaing secara global.',
    datePublish: 'Sabtu, 11 Nov 2023',
    category: 'Ekonomi',
    imageAsset: Assets.images.list6.path,
  ),
  ContentNews(
    title: 'Perkembangan Terkini Teknologi Blockchain dalam Keuangan',
    author: 'Nama Penulis',
    description:
        'Teknologi blockchain kini menjadi fokus dalam inovasi keuangan, menjanjikan transparansi, keamanan, dan efisiensi. Dalam industri keuangan, blockchain digunakan untuk berbagai layanan seperti transfer uang, asuransi, dan manajemen keuangan dengan mengurangi keterlibatan perantara.',
    datePublish: 'Sabtu, 11 Nov 2023',
    category: 'Teknologi',
    imageAsset: Assets.images.list7.path,
  ),
  ContentNews(
    title: 'Kesehatan Mental di Era Digital: Tantangan dan Solusi',
    author: 'Penulis Artikel',
    description:
        'Era digital membawa perubahan besar dalam kehidupan sehari-hari, yang juga mempengaruhi kesehatan mental individu. Teknologi memainkan peran penting dalam menyebabkan stres, kecemasan, dan ketergantungan. Namun, teknologi juga memungkinkan layanan kesehatan mental yang lebih mudah diakses, seperti konseling online dan aplikasi kesehatan mental.',
    datePublish: 'Sabtu, 11 Nov 2023',
    category: 'Kesehatan',
    imageAsset: Assets.images.list8.path,
  ),
  ContentNews(
    title: 'Olahraga Elektronik (e-Sports) sebagai Fenomena Populer',
    author: 'Nama Penulis',
    description:
        'e-Sports telah berkembang pesat menjadi fenomena yang populer di kalangan pecinta game di seluruh dunia. Kompetisi game online ini telah memperoleh perhatian yang signifikan, bahkan diakui sebagai olahraga di beberapa negara.',
    datePublish: 'Sabtu, 11 Nov 2023',
    category: 'Olahraga',
    imageAsset: Assets.images.list9.path,
  ),
  ContentNews(
    title: 'Investasi Pendidikan: Kunci Kesejahteraan Masa Depan',
    author: 'Penulis Artikel',
    description:
        'Investasi dalam pendidikan dikenal sebagai salah satu kunci utama dalam meningkatkan kesejahteraan masa depan. Dengan akses pendidikan yang lebih baik, diharapkan masyarakat dapat meningkatkan kualitas hidup mereka.',
    datePublish: 'Sabtu, 11 Nov 2023',
    category: 'Pendidikan',
    imageAsset: Assets.images.list10.path,
  ),
  ContentNews(
    title: 'Penggunaan AI dalam Dunia Kesehatan: Tantangan dan Manfaat',
    author: 'Nama Penulis',
    description:
        'Pemanfaatan kecerdasan buatan (AI) telah membawa inovasi besar dalam bidang kesehatan dengan tantangan dan manfaatnya. Dari diagnosis cepat hingga manajemen data, AI membuka potensi besar dalam penyediaan layanan kesehatan yang lebih efisien.',
    datePublish: 'Sabtu, 11 Nov 2023',
    category: 'Kesehatan',
    imageAsset: Assets.images.list11.path,
  ),
  ContentNews(
    title: 'Perkembangan Terbaru Teknologi 5G dan Dampaknya',
    author: 'Penulis Artikel',
    description:
        'Teknologi 5G diharapkan membawa perubahan besar dalam konektivitas dan pengalaman pengguna di berbagai sektor. Dengan kecepatan dan keterhubungan yang lebih baik, teknologi ini dapat membuka potensi baru dalam berbagai industri.',
    datePublish: 'Sabtu, 11 Nov 2023',
    category: 'Teknologi',
    imageAsset: Assets.images.list12.path,
  ),
];
