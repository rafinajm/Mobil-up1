import 'package:flutter/material.dart';
import 'dart:async'; // برای استفاده از Timer

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' هرات',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(),
    );
  }
}

// صفحه اول - Splash Screen
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // بعد از 3 ثانیه به صفحه اصلی هدایت می‌شود
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("هرات باستان" ,style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
            SizedBox(height: 30,),
            // تصویر صفحه اول با گوشه‌های گرد
            ClipRRect(
              borderRadius: BorderRadius.circular(100), // گوشه‌های گرد

              child: Image.asset(
                'assets/images/herat.jpg', // تصویر صفحه اول
                width: 200,
                height: 200,

                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 40),
            // لودر شیک
            FancyLoader(),
            SizedBox(height: 40,),
            Text("By Rafi Najm"),

          ],
        ),
      ),
    );
  }
}

// لودر شیک
class FancyLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle, // دایره‌ای شکل
          border: Border.all(
            color: Colors.black,
            width: 5,
            style: BorderStyle.solid,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircularProgressIndicator(
            strokeWidth: 5,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
        ),
      ),
    );
  }
}

// کلاس برای ذخیره اطلاعات هر ولسوالی
class District {
  final String name;
  final String image;
  final String description;

  District({
    required this.name,
    required this.image,
    required this.description,
  });
}

// صفحه اصلی - Home Page
class HomePage extends StatelessWidget {
  // لیست از ولسوالی‌ها با اطلاعات
  final List<District> districts = [
    District(
      name: 'شهر هرات',
      image: 'assets/images/herat2.jpg',
      description: 'هرات یکی از قدیم ترین ولایات افغانستان بوده که به هرات بولایت  مشهور شده است. هرات بولایت  نقش بزرگی را در تجارت میان شبه قاره هند ،شرق میانه ،آسیای مرکزی و اروبا بازی میکرده است که فعلا هم این نقش را کما کان به عهده گرفته است .هرات یکی از گهواره های تمدن تاریخ بر کشور مان میباشد که سابقه چندین هزار ساله دارد . در هر قدیمی که بر خاک هرات بولایت  بردارید  بیک شاعر، نویسنده ، نقاش ، مساجد ،مدارس، آرامگاه های اشخاص نامدار ،گنبد های قشنگ ، باغ های بسیار زیبا ، نهر های دلفریب و تفریحگاه های عمومی و بنا های مدرن و تاریخی بر میخورید.',
    ),
    District(
      name: 'انجیل',
      image: 'assets/images/images (1).jpg',
      description: 'انجیل یکی از ولسوالی‌های ولایت هرات در شمال باختری افغانستان است. جمعیت آن ۲۲۲،۶۰۷ نفر اعلام شده‌است. باشندگان این ولسوالی اقوام تاجیک، پشتون و هزاره‌ هستند. شهر هرات که مرکز ولایت هرات است بخشی از این ولسوالی می‌باشد.',
    ),
    District(
      name: 'گذره',
      image: 'assets/images/download.jpg',
      description: 'گذره یکی از ولسوالی‌های زیبای ولایت هرات در جنوب باختری افغانستان است. جمعیت آن در سال ۲۰۰۶ میلادی، ۱۳۵٬۱۸۷ نفر اعلام شده‌است. ۹۰ درصد باشندگان این ولسوالی فارسی‌زبانان هستند. مردم این منطقه در مبارزه علیه روس‌ها و اشغال آمریکا نقش عمده‌ای داشتند.',
    ),
    District(
      name: 'اوبه',
      image: 'assets/images/obih.jpg',
      description: 'وُلُسوالی اوبه یکی از ولسوالی‌های سرسبز و زراعتی ولایت هرات است. ولسوالی اوبه در ۱۰۰ کیلومتری شهر هرات موقعیت دارد. در ولسوالی اوبه چشمهٔ آب گرم و تفریحگاه‌های دیگری وجود دارد. در بهار بسیاری از مردم هرات برای تفریح و دیدن مناظر طبیعی به ولسوالی اوبه می‌روند. اوبه انگور بسیار خوبی دارد.',
    ),
    District(
      name: 'کشک رباط سنگی',
      image: 'assets/images/koshk.jpg',
      description: 'یکی از ولسوالی‌های ولایت هرات، ولسوالی رباط سنگی است و مرکز این ولسوالی کُشک می‌باشد. منطقة کشک در روزگاران قدیم در قلمرو بادغیسات هری قرار داشت و بادغیس پارة تن هرات باستان بود. خطة کشک قدیم (کوشک) در حال حاضر به کشک رباط سنگی و کشک کهنه تقسیم شده و هر دو شهرستان (ولسوالی) می‌باشد. این دو شهرستان در واقع در یک حوزة تاریخی و فرهنگی قرار داشته و با بادغیس و هرات پیوند دیرینه دارند.',
    ),
    District(
      name: 'پشتون زرغون',
      image: 'assets/images/pashton.jpg',
      description: 'شافلان از ولسوالی‌های ولایت هرات افغانستان است که به‌ تازگی به نام پشتون زرغون شناخته می‌شود. .جمعیت این ولسوالی ۹۰،۸۱۷ نفر اعلام گردیده است. بیشتر باشندگان این ولسوالی تاجیک‌ها و اقلیتی هم از پشتون‌ها در این ولسوالی زندگی میکنن',
    ),
    District(
      name: 'زنده جان',
      image: 'assets/images/zndah.jpg',
      description: 'ولسوالی زنده‌جان یا پوشنگ یکی از ولسوالی‌های ولایت هرات افغانستان است. این ولسوالی پیشتر به عنوان یک علاقه‌داری شناخته می‌شد. مرکز این ولسوالی زنده‌جان می باشد.',
    ),
    District(
      name: 'شندند',
      image: 'assets/images/shendand.jpg',
      description: 'وُلُسوالی سبزوار با نام نسبتاً جدید پشتو (شیندَند) که در اصل سبزوار نام دارد، یکی ولسوالی‌های ولایت هرات در غرب افغانستان است که مرکز آن شهر سبزوار است.',
    ),
    District(
      name: 'ادرسکن',
      image: 'assets/images/adrascan.jpg',
      description: 'ادرسکن دارای بیش از ۶۰۰ قریه کوچک و بزرگ است اکثر مردم در این ولسوالی مشغول دام پروری و کشاورزی به صورت سنتی هستند. هاروت رود که به نام رود ادرسکن نیز یاد ... ',
    ),
    District(
      name: 'کروخ',
      image: 'assets/images/karkh.jpg',
      description: 'ولسوالی کَرُخ در ۳۵ کیلومتری شهر هرات موقعیت داشته که حدود اربعهٔ آن، از جانب شمال با ولسوالی‌های کُشک کهنه و کشک رباط سنگی، سمت جنوب ولسوالی پشت زیرغان و ولسوالی اوبه، شرق آن را ولایت بادغیس و غرب آن را ولسوالی انجیل محدود کرده‌است. این ولسوالی دارای حدود ۱۲۰٬۰۰۰ نفوس بوده و مساحت آن حدود ۲٬۰۱۰ کیلومتر مربع تخمین گردیده و دارای ۱',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' هرات' ,style: TextStyle(fontSize: 30),),
        backgroundColor: Colors.brown,
        shadowColor: Colors.brown,
        actions: [
          PopupMenuButton<String>(
            color: Colors.white60,
            onSelected: (value) {
              if (value == 'exit') {
                Navigator.pop(context); // برای خروج
              } else if (value == 'share') {
                // کد اشتراک را اینجا وارد کنید
              } else if (value == 'about') {
                // کد درباره را اینجا وارد کنید
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem<String>(value: 'share', child: Text('شریک ساختن')),
                PopupMenuItem<String>(value: 'about', child: Text('درباره ما')),
                PopupMenuItem<String>(value: 'exit', child: Text('خروج')),
              ];
            },
          ),
        ],
      ),
      body: ListView(
        children: districts.map((district) {
          return Padding(
            padding: const EdgeInsets.all(8.0), // فاصله میان آیتم‌ها
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white38,
                border: Border.all(color: Colors.grey), // مرز خاکستری رنگ
                borderRadius: BorderRadius.circular(12), // گوشه‌های گرد
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.1),
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ], // سایه اطراف آیتم
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(12),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(12), // گرد کردن گوشه‌های تصویر
                  child: Image.asset(
                    district.image,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover, // استفاده از BoxFit.cover برای نمایش صحیح تصویر
                  ),
                ),
                title: Text(district.name),
                onTap: () {
                  // رفتن به صفحه جزئیات ولسوالی
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DistrictDetailPage(district: district),
                    ),
                  );
                },
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

// صفحه جزئیات ولسوالی
class DistrictDetailPage extends StatelessWidget {
  final District district;

  DistrictDetailPage({required this.district});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('صفحه جزییات')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(district.image), // تصویر بزرگتر
            SizedBox(height: 20),
            Text(
              district.name, // نام ولسوالی
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              district.description, // توضیحات مربوط به ولسوالی
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),

            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // اینجا می‌توانید کد برای نمایش اطلاعات بیشتر را وارد کنید
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('اطلاعات بیشتر'),
                      content: Text('اطلاعات بیشتر درباره ${district.name}'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('بستن'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('اطلاعات بیشتر'),
            ),
          ],
        ),
      ),
    );
  }
}
