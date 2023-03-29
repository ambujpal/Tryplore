import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:tryplore_shop/common/common.dart';

class ShippingPage extends StatefulWidget {
  const ShippingPage({Key? key}) : super(key: key);

  @override
  State<ShippingPage> createState() => _ShippingPageState();
}

class _ShippingPageState extends State<ShippingPage> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName ='';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();



  int currentIndex = 0;

  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();

  List<Step> stepList() => [
     Step(
       state: currentIndex <= 0 ? StepState.editing : StepState.complete,
         isActive: currentIndex >= 0,
         title: Text('Step 1', style: AppTextStyle.subTitle1M(txtColor: AppColors.grey),),
         content:Column(
           children:  [
             TextField(
               controller: name,
               decoration: InputDecoration(labelText: 'Full Name'),
             ),
             TextField(
               controller: address,
               decoration: InputDecoration(labelText: 'Address'),
             ),
             DropdownButtonFormField(
               decoration:  InputDecoration(
                 labelText: 'City',
                 labelStyle: AppTextStyle.subTitle1M(txtColor: AppColors.grey)
               ),
               onChanged: (value) {  },
             items: const [
               DropdownMenuItem(value: 'Thane',child: Text('Thane'),),
               DropdownMenuItem(value: 'Goregao',child: Text('Goregao'),),
               DropdownMenuItem(value: 'Nalla Sopara',child: Text('Nall Sopara'),),
               DropdownMenuItem(value: 'Vasai',child: Text('Vasai'),),
               DropdownMenuItem(value: 'Malad',child: Text('Malad'),),
               DropdownMenuItem(value: 'Jogeshwari',child: Text('Jogeshwari'),)
             ],),
             TextField(
               controller: name,
               decoration: const InputDecoration(labelText: 'Zipcode'),
             ),
             // DropdownButtonFormField(
             //   decoration:  InputDecoration(
             //       labelText: 'Country',
             //       labelStyle: AppTextStyle.subTitle2M(txtColor: AppColors.grey)
             //   ),
             //   onChanged: (value) {  },
             //   items: const [
             //     DropdownMenuItem(value: 'India',child: Text('India'),),
             //     DropdownMenuItem(value: 'USA',child: Text('USA'),),
             //     DropdownMenuItem(value: 'Japan',child: Text('Japan'),),
             //     DropdownMenuItem(value: 'Australia',child: Text('Australia'),),
             //     DropdownMenuItem(value: 'Russia',child: Text('Russia'),),
             //     DropdownMenuItem(value: 'England',child: Text('England'),)
             //   ],),
             DropdownButtonFormField(
               decoration:  InputDecoration(
                   labelText: 'Shipping Method',
                   labelStyle: AppTextStyle.subTitle2M(txtColor: AppColors.grey)
               ),
               onChanged: (value) {  },
               items: const [
                 DropdownMenuItem(value: 'Same Day Delivery',child: Text('Same Day Delivery'),),
               ],),
           ],
         )),
    Step(
        state: currentIndex <= 1 ? StepState.editing : StepState.complete,
      isActive: currentIndex >= 1,
        title: Text('Step 2', style: AppTextStyle.subTitle1M(txtColor: AppColors.grey),),
        content:Column(
          children: [
            Text('Payment',style: AppTextStyle.subTitle1M(txtColor: AppColors.grey)),
            ElevatedButton(onPressed: (){
              if (formKey.currentState!.validate()){
                print('valid');
              }
              else{
                print('invalid');
              }
            },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)
                  ),
                ),
                
                child: Container(
                  margin: EdgeInsets.all(8.0),
                  child: Text('Validate', style: AppTextStyle.subTitle1M(txtColor: AppColors.greyDark),),
                )
            )
          ],
        )),
    Step(
        state: StepState.complete,
        isActive: currentIndex >= 2,
        title: Text('Step 3', style: AppTextStyle.subTitle1M(txtColor: AppColors.grey),),
        content:Column(
          children: [
           Image.asset('assets/icons/gift(1).svg'),
            SizedBox(height: 350,),
            Text('Congrats', style:  AppTextStyle.headline3M(),),
            Text('Your order placed successfully!  Your \n order will be shipped in 2-4 working days.', style:  AppTextStyle.subTitle2M(),textAlign: TextAlign.center,),
          ],
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColors.greyLightest,
        leading: const Icon(Icons.arrow_back_ios, size: 22, color: AppColors.grey,),
        title: Text('Shipping', style: AppTextStyle.subTitle1M(txtColor: AppColors.grey),),
      ),
      body:Stepper(
        type: StepperType.horizontal,
        currentStep: currentIndex,
        steps: stepList(),
        onStepContinue: (){
          if(currentIndex < (stepList().length - 1)){
            currentIndex += 1;
          }
          setState(() {

          });
        },
        onStepCancel: (){
          if(currentIndex == 0){
            return;
          }
          currentIndex -= 1;
          setState(() {

          });
        },
      )
    ));
  }
  void onCreditCardModalChange(CreditCardModel creditCardModel){
    cardNumber = creditCardModel.cardNumber;
    expiryDate = creditCardModel.expiryDate;
    cardHolderName = creditCardModel.cardHolderName;
    cvvCode = creditCardModel.cvvCode;
    isCvvFocused = creditCardModel.isCvvFocused;

  }
}
