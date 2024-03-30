import 'package:coindex/App%20Pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:google_fonts/google_fonts.dart';

class Landing_page extends StatefulWidget {
  const Landing_page({
    super.key,
  });

  @override
  State<Landing_page> createState() => _Landing_pageState();
}

class _Landing_pageState extends State<Landing_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Image(
              image: AssetImage("lib/assects/image.png"),
              height: 60,
              width: 60,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'CoinDex',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Home',
                style: TextStyle(color: Colors.white),
              )),
          TextButton(
              onPressed: () {},
              child: Text(
                'NFT Market',
                style: TextStyle(color: Colors.white),
              )),
          TextButton(
              onPressed: () {},
              child: Text(
                'About Us',
                style: TextStyle(color: Colors.white),
              )),
          ElevatedButton(
            onPressed: () {},
            child: Text('CoinDex', style: TextStyle(color: Colors.black)),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(2), // Set to zero for rectangle
              ),
            ),
          ),
          SizedBox(
            width: 5,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 1, 1, 3),
            Color.fromARGB(255, 14, 17, 46),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'Track all your assets\nfrom one place',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(color: Colors.white, fontSize: 40),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Ignite your cosmic trading journey.\nwhere decentralization meets Discover',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(color: Colors.white, fontSize: 12),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 190,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    return context.go('/home');
                  },
                  child: Text(
                    'Start Now',
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          2), // Adjust corner radius as desired
                    ),
                  ),
                ),
              ),
              Image(
                image: AssetImage(
                    "lib/assects/Screenshot_2024-01-19_002129-removebg-preview (1) 1ppj.png"),
                height: 400,
                width: 500,
              ),
              Text(
                'CoinDex makes your data worth its value',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(color: Colors.white, fontSize: 30),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'CoinDex token is embodiment of your data value and the link of the ecosystem\nconfirm it buying it stake it',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(color: Colors.white, fontSize: 12),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                'Secure & Private',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(color: Colors.white, fontSize: 30),
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '27/7 Delicated support team',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(color: Colors.white, fontSize: 12),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 230,
                    height: 250,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 8, 10, 26),
                            Color.fromARGB(255, 12, 15, 42),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 3),
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundImage: NetworkImage(
                              'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAALsAAACUCAMAAAD8tKi7AAABCFBMVEX////pIyTjICbmIiQ2tEncHybsJCTYHyUisknuLSQcrEoYnEger0obpkkYnkdLt0gXlkVZukYVkkQUjEPUHyZZn2z3ysnuNCf20NCu1rD70M7739/oAADn7+sAhjTS6NOYwqbrMzB9sYyjzq7H3s34pqTFAADh7OPWO0BVtzFPt1wEpzjz9vXoiYvsFRT88/NvvXcysz/4sLHaMTRzv02p1aZeuVRItFFpqn7aDBfXAADVWl5yvz7KDhklqCCHxpjlfYCBxGWTy4zH48U7rwBnuWZ8woO21cFCqWBrt350uInxYmJXsW+VyqTyhYDnRETyd3EAmTL8wL8xllMAjC5Hm1/XaWnXSk/JyPo5AAAF8ElEQVR4nO3Za3fSSByA8XALFEyktCDdcCmXGtukSVtU2rpaXVdD1YpQ6n7/b7JzyWVmAoV2TzOZs/McX+TQi78hyT8jKopMJpPJZDKZTCaTCZ1tdk3ehsfW/fT6E2/DY+u+/nObt+GxAftr3obHJu18knY+iT1ntqWdQ0LbtwW023tvYH8BOzp485m3aPP2/j5EATs+eNvlTVpR9/NnZqu7B9VkabXbJ9uHDE0c+5fDD8LaT7alnUPL7B+Escevd3Hsp9LOoaX25zCR7VEi2U/vt3e/fjlJxSdm0M7uZ9bZ3x4+52zfO0GN86df0MHXwBOzjxn70XPO9vb4FJfP+wdX/lfSbzfHebrQPjgNXsL0fNw+Tr/dL/320v/Dfirtj84cl0rC2o9KUSLbUavtQ+onob2dPJjoMXazCxsc5cceOuL17pv6SrsVXUj5EmE38xYKvIQPjjjhTf0ZEaBa0fvOLErz7cMPzAmxOG2Oob1cJvgxuxWzW8xosoYrf/3T2rUyLlyBb29PsPi6/c2K24nBlAK7vwLfbntaCZ6Eo4HtKtfWKrt/ZnjZ9TKtL0O7eaWh6+fHUDn7Prd/WPBe0Lpps1e0oMg+nFjwHGg3bfdnptUzzAnER++7f1unyO6v4EbZ18DFXy5VPKU5dbZeOD1jOCmBtfywCXs0mdJj1+rXFjoJ54p70Np6AXKmxrAClmNNbN9ODqZnPO06q4dNBkrzO6YD/C93qEP8tY3s0Y2N7DNe9okepoXLmF2bSqPXehHk/FS8GdBaVzZhD1bAzV7VKzqdNpsNwCYLXDAgbN8C+MEMXEnaja0MZ2WNmk0aRzsutM+qyILtAb91oNzM4CkZADs9mp5pnPYE7VqFTq/08TgJ7ZgP8H10OXmE3Y/XfqYKIuiLO8//CmmHqWf2N6jW+7zstrdP1a+S6Ytv4X6WtYNJaddn4V2t64nbvZ0OVbVWq0X0mmcbZyvsW70/wFSaUXe1nqS9fd7Z2dmpLa26uDOVOZgoq+2KeQvGEjuY9GTmjL0fveW1DkXvdPYV91fLOb7PjvDsYKomNCPNfn1F554yn7ZUwq6qasyuDGs6O5mSsoPLZkWKe5xxVMZO8rFd8arMaKokZ6dzz4IOvjtqZok99Pt2ZX9RpeuEdtOzE7QboxDoZEDL7cgf2GP4yO5VbxP8yMboZehW2tXQDm54PJiW2PXFIEl7Lpd7kL1x0O5TI4qwg/Us+kl9XIPtkO+vYAO7M0ePieV2+JjwlvxFT2nHC6Ds8PJfZm9Nm+07+IzD1Wr1c786XsvtfiK3LG0H0XaSH9mdnNu+jfAg5kHXOU/iujF62Wz2Xnvoj+wZx3HNOwq/Q5wG0OI8gXlj9HJZSr/UjvSRXVVbU3d424kVnoZ6Eo8r345j7OT4AXrSrrbAP7/7seo+PZlRY4wIO4y0U8OTtqvOT1ex2Twk7yT0dF1jJ/iMXXWmH4/9jOC3eeh6SWy+j7KF++3BAtRsI7DnVHT3toIakb2zk8x8xPYCaJl9fumgANxBwqkR2P2bNxifTrBZAPa7BPeU2F6IFnAR2BW8vTwGG545OgqEDXZ4RnbTS/K/bwg75kd2XLOnqvQrDWp4Zkh7stF2EGtv9DL32zOptmeYV9jBz9FeBBWKq+25uJ2cndztkI/9G9vDBaTA7i9gif2CeYUc/CCO9iLdJu87vfPMpNieLTCvtMKNG2/77u7uGnvsmiG2ncjeTM5Lhuyoh9uDFVxwt/v+B9uzKbEDfcyevVxjz/Kzv0eXSnjRsPZ4jctCIRV29/fuCAboI9x83Y9AO7Vv5mVXjAbqn+LLsyY8aLrrfsK3RwvgZse5796/3FRA2pFfKHuRxotlLxZFtpP7ZgHtIV9MO16AwPaiUHZy7yaWvXl5cQn+XED1JUocu3v8EfZ7VNz9jY4O1j6KnzT33cuN7eC7YY1Xxd0mOnpC10aaj+9ePfDMN4HdWP9tqUxs+3tp55Dg9pG0J5+080lw+ytR7W5zg89DZDKZTCaTyWQymUz2n/sXoFNa4SnTABIAAAAASUVORK5CYII='),
                        ),
                        Spacer(),
                        Text(
                          'Invest in Crypto',
                          style: GoogleFonts.inter(
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          'Invest in cryptocurrency anywhere with our safe secure and easy to use online platform',
                          style: GoogleFonts.inter(
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 10),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 30.0),
                        Text(
                          'Get Started',
                          style: GoogleFonts.inter(
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50.h,
                  ),
                  Container(
                    width: 230,
                    height: 250,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 8, 10, 26),
                            Color.fromARGB(255, 12, 15, 42),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 3),
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundImage: NetworkImage(
                              'data:image/png;base64,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'),
                        ),
                        Spacer(),
                        Text(
                          'Invest in Crypto',
                          style: GoogleFonts.inter(
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          'Invest in cryptocurrency anywhere with our safe secure and easy to use online platform',
                          style: GoogleFonts.inter(
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 10),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 30.0),
                        Text(
                          'Get Started',
                          style: GoogleFonts.inter(
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50.h,
                  ),
                  Container(
                    width: 230,
                    height: 250,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 8, 10, 26),
                            Color.fromARGB(255, 12, 15, 42),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 3),
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundImage: NetworkImage(
                              'data:image/png;base64,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'),
                        ),
                        Spacer(),
                        Text(
                          'Invest in Crypto',
                          style: GoogleFonts.inter(
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          'Invest in cryptocurrency anywhere with our safe secure and easy to use online platform',
                          style: GoogleFonts.inter(
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 10),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 30.0),
                        Text(
                          'Get Started',
                          style: GoogleFonts.inter(
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              SizedBox(
                child: Image(
                  image: AssetImage('lib/assects/Framermpp.png'),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              SizedBox(
                  height: 400,
                  width: 800,
                  child: Image(
                    image: AssetImage('lib/assects/image3cryptodama.png'),
                  )),
              Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: Text(
                  'Join our Monthly Newsletter',
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                  width: 800,
                  height: 100,
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      hintText: '  Write your email here...',
                      hintStyle: TextStyle(color: Colors.white),
                      suffix: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Subscribe',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      border: GradientOutlineInputBorder(
                        width: 2,
                        borderRadius: BorderRadius.circular(30.0),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.red, Colors.indigo],
                        ),
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Text(
                  'Join our Monthly Newsletter',
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                'About Us',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(color: Colors.white, fontSize: 16),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: 800,
                  child: Text(
                    'At CoinDEX, we believe that cryptocurrency has the potential to revolutionize traditional financial systems by providing secure, transparent, and efficient solutions for transactions and investments. Our mission is to simplify the complexities of the crypto space and make it accessible to everyone, regardless of their level of expertise.',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    textAlign: TextAlign.center,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
