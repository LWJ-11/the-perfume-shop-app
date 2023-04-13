import 'package:flutter_ui/consts/consts.dart';
import 'package:flutter_ui/consts/lists.dart';
import 'package:flutter_ui/home_screen/components/featured_button.dart';
import 'package:flutter_ui/widgets_common/home_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 100,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchanything,
                  hintStyle: TextStyle(color: textfieldGrey)
                ),
              ),
            ),
            10.heightBox,
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                      //Slider Top tự chuyển
              VxSwiper.builder(
                aspectRatio: 16/9,
                autoPlay: true,
                //time nhảy slide
                autoPlayInterval: 10.seconds,
                height: 150,
                enlargeCenterPage: true,
                itemCount: sliderTopSlist.length, 
                itemBuilder: ((context, index) {
                  return Image.asset(
                      sliderTopSlist[index],
                      fit: BoxFit.fill,                  
                  ).box.rounded
                  .clip(Clip.antiAlias)
                  .margin(const EdgeInsets.symmetric(horizontal: 8))
                  .make();
                })),
                10.heightBox,
                //top button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:  List.generate(2, (index) => homeButtons(
                    height: context.screenWidth *0.15,
                    width: context.screenHeight / 5,
                    icon: index == 0? icTodaysDeal : icFlashDeal,
                    title: index == 0? todayDeal : flashsale
                  )),
                ),
                10.heightBox,
                //Slider Center tự chuyển
              VxSwiper.builder(
                aspectRatio: 16/9,
                autoPlay: true,
                height: 150,
                enlargeCenterPage: true,
                itemCount: sliderBotSlist.length, 
                itemBuilder: ((context, index) {
                  return Image.asset(
                      sliderBotSlist[index],
                      fit: BoxFit.fill,                  
                  ).box.rounded
                  .clip(Clip.antiAlias)
                  .margin(const EdgeInsets.symmetric(horizontal: 8))
                  .make();
                })),
                //loại button
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    3, (index) => homeButtons(
                      height: context.screenHeight*0.15,
                      width: context.screenWidth/3.5,
                      icon: 
                        index ==0? icTopCategories: 
                        index==1? icBrands : icTopSeller,
                      title: 
                        index==0? topcategories : 
                        index==1? brand : topSellers,
                       
                    )),
                ),
                //loại sp đặc sắc
                20.heightBox,
                Align(
                  alignment: Alignment.centerLeft,
                  child: featuredCategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make()
                ),
                20.heightBox,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      3, (index) => 
                      Column(
                        children: [
                          featuredButton(icon: featuredImg1[index],title: featureTittle1[index]),
                          10.heightBox,
                          featuredButton(icon: featuredImg2[index],title: featureTittle2[index]),
                        ],
                      )),
                  ),
                ),
                //sản phẩm nổi bật  
                20.heightBox,
                Container(
             
                  padding: const EdgeInsets.all(12),
                  width: double.infinity,
                  decoration: const BoxDecoration(color: redColor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      featureProduct.text.white.fontFamily(bold).size(18).make(),
                      10.heightBox,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            6, (index) => Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                Image.asset(imgP1,width: 150,fit: BoxFit.cover,),
                                10.heightBox,
                                "Laptop 4GB/64GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                                10.heightBox,
                                "\$600".text.color(redColor).fontFamily(bold).size(16).make(),
                               ],
                            ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(const EdgeInsets.all(8)).make()),
                        ),
                      ),
                    ],
                  )
                ),
                //slider Bot
                20.heightBox,
                 VxSwiper.builder(
                aspectRatio: 16/9,
                autoPlay: true,
                height: 150,
                enlargeCenterPage: true,
                itemCount: sliderBotSlist.length, 
                itemBuilder: ((context, index) {
                  return Image.asset(
                      sliderBotSlist[index],
                      fit: BoxFit.fill,                  
                  ).box.rounded
                  .clip(Clip.antiAlias)
                  .margin(const EdgeInsets.symmetric(horizontal: 8))
                  .make();
                })),
                //tất cả sản phẩm
                20.heightBox,
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 8,crossAxisSpacing: 8,mainAxisExtent: 300), 
                  itemBuilder:(context,index){
                    return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                Image.asset(imgP5,width: 200,height: 200,fit: BoxFit.cover,),
                                const Spacer(),
                                10.heightBox,
                                "Laptop 4GB/64GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                                10.heightBox,
                                "\$600".text.color(redColor).fontFamily(bold).size(16).make(),
                               ],
                            ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(const EdgeInsets.all(12)).make();
                })
                ]),
              ),
            )
          ],
        )
      ),
    );
  }
}