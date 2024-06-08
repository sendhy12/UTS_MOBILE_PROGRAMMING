import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sendhy Maula Ammarulloh',
      theme: ThemeData(
        primaryColor: Colors.green,
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.greenAccent,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedCategory = 'Reptil';
  List<String> reptilNames = ['Ular', 'Kadal', 'Kura-kura'];
  List<String> mamaliaNames = ['Kucing', 'Anjing', 'Gajah'];
  List<String> burungNames = ['Burung-Gereja', 'Burung-Beo', 'Burung-Elang'];
  List<String> ikanNames = ['Ikan-Mas', 'Ikan-Badut', 'Ikan-Cupang'];
  Map<String, String> animalDescriptions = {
    'Ular':
        'Ular adalah hewan yang mempunyai tubuh yang panjang dan ramping. Mereka tidak memiliki kaki, jadi mereka merayap menggunakan otot perut mereka. Ular bisa tinggal di berbagai tempat, mulai dari hutan hingga padang pasir. Beberapa ular bisa melompat, tapi banyak dari mereka lebih memilih merayap atau meluncur. Ular juga bisa sangat cepat, dan beberapa spesies dapat bergerak dengan kecepatan hingga 20 mil per jam!',
    'Kadal':
        'Kadal adalah hewan yang sering kali berukuran kecil dan mempunyai kulit bersisik. Mereka bisa hidup di darat atau di air, tergantung pada spesiesnya. Beberapa kadal bisa berubah warna kulitnya untuk menyesuaikan diri dengan lingkungan sekitarnya, sedangkan yang lain mempunyai lidah yang panjang untuk membantu mereka mencari makanan. Kadal juga bisa hidup di berbagai tempat, dari hutan hingga padang pasir, bahkan di rumah kita!',
    'Kura-kura':
        'Kura-kura adalah hewan yang mempunyai cangkang keras yang melindungi tubuh mereka. Mereka bisa hidup di darat atau di air, dan beberapa spesies bahkan bisa hidup di kedua tempat tersebut. Kura-kura biasanya lambat bergerak, tetapi mereka bisa hidup sangat lama. Beberapa spesies kura-kura bisa hidup hingga 100 tahun atau lebih! Kura-kura juga suka makan sayuran dan buah-buahan.',
    'Kucing':
        'Kucing adalah hewan yang sangat lucu dan menggemaskan. Mereka mempunyai bulu lembut dan ekor yang bisa digoyangkan. Kucing juga bisa melompat tinggi dan berlari dengan cepat. Mereka suka tidur sepanjang hari, tetapi juga sangat aktif saat malam hari. Kucing suka bermain dengan bola benang atau mainan lainnya. Mereka juga bisa menjadi teman yang baik dan setia bagi manusia.',
    'Anjing':
        'Anjing adalah hewan yang paling setia dan ramah kepada manusia. Mereka bisa datang dalam berbagai ukuran, mulai dari yang kecil seperti Chihuahua hingga yang besar seperti St. Bernard. Anjing biasanya suka bermain dan berlari, dan mereka juga bisa diajarkan banyak trik. Anjing juga bisa melindungi rumah dan keluarga mereka, membuat mereka menjadi hewan peliharaan yang sangat berharga.',
    'Gajah':
        'Gajah adalah hewan yang sangat besar dan kuat. Mereka mempunyai belalai yang panjang yang digunakan untuk makan, minum, dan berkomunikasi dengan sesama gajah. Gajah juga memiliki gigi yang besar yang disebut gading, yang digunakan untuk menggali makanan dari tanah. Mereka suka hidup di kawanan besar dan sangat protektif terhadap anggota kelompoknya. Gajah juga sangat cerdas dan bisa diajarkan banyak hal oleh manusia.',
    'Burung-Gereja':
        'Burung gereja adalah burung kecil yang sering kita lihat di sekitar rumah. Mereka biasanya berwarna coklat atau abu-abu dengan bercak putih di sayapnya. Burung gereja suka membuat sarang di tempat yang tinggi, seperti di atap rumah atau di pepohonan. Mereka juga suka menyanyikan lagu-lagu indah saat pagi hari. Burung gereja adalah bagian dari kehidupan sehari-hari kita dan sering kali menjadi teman yang menyenangkan.',
    'Burung-Beo':
        'Burung beo adalah burung cerdas yang bisa menirukan suara-suara yang mereka dengar. Mereka bisa menirukan suara manusia, suara burung lain, dan bahkan suara mesin. Burung beo juga bisa belajar berbicara dengan manusia dan mengikuti perintah sederhana. Mereka suka bermain dengan mainan dan suka diperhatikan oleh manusia. Burung beo adalah hewan yang lucu dan menyenangkan untuk dipelihara.',
    'Burung-Elang':
        'Elang adalah burung pemangsa yang kuat dan elegan. Mereka mempunyai sayap yang lebar dan kuat yang memungkinkan mereka terbang dengan cepat dan tinggi. Elang juga memiliki mata yang tajam yang memungkinkan mereka melihat mangsa dari jarak yang jauh. Mereka suka tinggal di daerah yang terbuka, seperti pegunungan atau padang rumput. Elang adalah simbol kebebasan dan kekuatan di banyak budaya.',
    'Ikan-Mas':
        'Ikan mas adalah ikan yang sering kita temui di kolam ikan atau akuarium. Mereka biasanya berwarna kuning atau oranye dengan bercak-bercak hitam di tubuhnya. Ikan mas suka makan makanan seperti pelet ikan atau sayuran. Mereka juga bisa hidup dalam kelompok besar dan suka berenang bersama teman-temannya. Ikan mas adalah hewan yang indah dan menenangkan untuk dilihat.',
    'Ikan-Badut':
        'Ikan badut adalah ikan kecil yang biasanya berwarna cerah dengan garis-garis atau bercak-bercak yang mencolok. Mereka suka hidup di terumbu karang di laut tropis. Ikan badut seringkali hidup dalam kelompok besar dan saling melindungi satu sama lain. Mereka juga suka berenang di antara tentakel-tentakel ubur-ubur atau tersembunyi di dalam lubang-lubang karang. Ikan badut adalah hewan yang indah dan menarik untuk diamati.',
    'Ikan-Cupang':
        'Ikan cupang adalah ikan air tawar yang indah dengan sirip yang panjang dan berwarna-warni. Mereka seringkali memiliki gerakan yang elegan saat berenang. Ikan cupang bisa hidup sendiri atau dalam kelompok kecil, tergantung pada spesiesnya. Beberapa ikan cupang memiliki perilaku yang agresif dan tidak cocok untuk dipelihara bersama dengan ikan lain. Namun, banyak pula yang tenang dan cocok untuk akuarium komunitas. Ikan cupang adalah hewan yang menarik dan menyenangkan untuk dipelihara.',
  };
  String selectedAnimal = '';
  String selectedAnimalDescription = '';

  void selectCategory(String category) {
    setState(() {
      selectedCategory = category;
      selectedAnimal = '';
      selectedAnimalDescription = '';
    });
  }

  void selectAnimal(String animal) {
    setState(() {
      selectedAnimal = animal;
      selectedAnimalDescription = animalDescriptions[animal] ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> currentAnimalList = [];

    if (selectedCategory == 'Reptil') {
      currentAnimalList = reptilNames;
    } else if (selectedCategory == 'Mamalia') {
      currentAnimalList = mamaliaNames;
    } else if (selectedCategory == 'Burung') {
      currentAnimalList = burungNames;
    } else if (selectedCategory == 'Ikan') {
      currentAnimalList = ikanNames;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sistem Media Interaktif'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Kategori Hewan:',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildCategoryButton('Reptil'),
              buildCategoryButton('Mamalia'),
              buildCategoryButton('Burung'),
              buildCategoryButton('Ikan'),
            ],
          ),
          const SizedBox(height: 20.0),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Hewan Terpilih:',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Expanded(
            child: selectedAnimal.isNotEmpty
                ? SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Card(
                        elevation: 2.0,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                selectedAnimal,
                                style: const TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10.0),
                              Text(
                                selectedAnimalDescription,
                                style: const TextStyle(fontSize: 16.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                : const Center(
                    child: Text(
                      'Tidak Ada Hewan Terpilih',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
          ),
          const SizedBox(height: 20.0),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Pilih Hewan:',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: currentAnimalList.length,
              itemBuilder: (context, index) {
                final animal = currentAnimalList[index];
                return GestureDetector(
                  onTap: () {
                    selectAnimal(animal);
                  },
                  child: Card(
                    elevation: selectedAnimal == animal ? 5.0 : 2.0,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          selectedAnimal == animal
                              ? BoxShadow(
                                  color: Colors.greenAccent.withOpacity(0.8),
                                  spreadRadius: 3,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                )
                              : const BoxShadow(
                                  color: Colors.transparent,
                                  spreadRadius: 0,
                                  blurRadius: 0,
                                  offset: Offset(0, 0),
                                ),
                        ],
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/$animal.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCategoryButton(String category) {
    return ElevatedButton(
      onPressed: () {
        selectCategory(category);
      },
      child: Text(category),
    );
  }
}
