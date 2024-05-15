import 'package:flutter/material.dart';
import 'package:funz/presentations/Request/get_paid_via_link.dart';
import 'package:funz/presentations/Request/request_from_a_friend.dart';
import 'package:funz/presentations/Request/request_money.dart';
import 'package:funz/presentations/Request/request_money2.dart';
import 'package:funz/presentations/home_screen/dashboard.dart';
import 'package:funz/presentations/home_screen/swap.dart';
import 'package:funz/presentations/send/find_beneficiary.dart';
import 'package:funz/presentations/send/search_for_friends.dart';
import 'package:funz/presentations/send/send.dart';
import 'package:funz/presentations/send/send_money_internationally.dart';
import 'package:funz/presentations/send/share_receipt.dart';
import 'package:funz/presentations/splash_screen.dart';

class RoutesManager {
  static const String splashRoute = "/";
  static const String appUpdateView = "/appUpdateView";
  static const String introRoute = "/introRoute";
  static const String loginRoute = "/loginRoute";
  static const String twoFARoute = "/twoFARoute";

  static const String signupRoute = "/signupRoute";
  static const String otpVerificationRoute = "/otpVerificationRoute";
  static const String passwordReset1Route = "/passwordReset1Route";
  static const String passwordReset2Route = "/passwordReset2Route";
  static const String passwordReset3Route = "/passwordReset3Route";
  static const String passwordResetStatusRoute = "/passwordResetStatusRoute";

  //
  static const String dashboardRoute = "/dashboardRoute";
  static const String notificationRoute = "/notificationRoute";

  //Home
  static const String swapMoney = "/swapmoney";
  static const String requestMoney = "/requestMoney";
  static const String requestViaLink = "/requesViaLink";
  static const String requestFromAFriend = "/requesFromAFriend";
  static const String RequestMoney2 = "/requesMoney2";
  

  //send money
  static const String sendMoney = "/sendMoney";
  static const String findBenefiary = "/findBenefiary";
  static const String shareReceipt = "/shareReceipt";
  static const String sendMoneyInternationally = "/sendMoneyInternationally";
  static const String searchForFriends = "/searchForFriends";

  // SETTINGS
  static const String accountInfoRoute = "/accountInfoRoute";
  static const String bankInformationRoute = "/bankInformationRoute";
  static const String addBankRoute = "/addBankRoute";
  static const String supportRoute = "/supportRoute";
  static const String removeBankRoute = "/removeBankRoute";
  static const String securityRoute = "/securityRoute";
  static const String changePasswordRoute = "/changePasswordRoute";

  // static const String setupTransactionPinView = "/setupTransactionPinView";
  static const String changeTransactionPinView = "/changeTransactionPinView";
  static const String recoverTransactionPinView = "/recoverTransactionPinView";

  // WALLET
  static const String withdrawFundRoute = "/withdrawFundRoute";
  static const String walletTxnHistoryDetails = "/walletTxnHistoryDetails";
  static const String walletTxnHistoryView = "/walletTxnHistoryView";

  // ALL TRANSACTION
  static const String allTxnHistoryView = "/allTxnHistoryView";
  static const String bannerView = "/bannerView";

  // Referrals
  static const String referralsView = "/referralsView";
  static const String referralHistoryView = "/referralHistoryView";

  //Transaction Pin
  static const String transactionPin = "/transactionPin";
  static const String transactionPin2 = "/transactionPin2";

  static const String transactionStatus = "/transactionStatus";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesManager.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case RoutesManager.dashboardRoute:
        return MaterialPageRoute(builder: (_) => const DashBoard());
      case RoutesManager.swapMoney:
        return MaterialPageRoute(builder: (_) => const SwapMoney());
      case RoutesManager.requestMoney:
        return MaterialPageRoute(builder: (_) => const RequestMoney());
      case RoutesManager.requestViaLink:
        return MaterialPageRoute(builder: (_) => const GetPaidViaLink());
      case RoutesManager.requestFromAFriend:
        return MaterialPageRoute(builder: (_) => const RequestFromAFriend());
      case RoutesManager.RequestMoney2:
        return MaterialPageRoute(builder: (_) => const RequestMoney2());
      case RoutesManager.sendMoney:
        return MaterialPageRoute(builder: (_) => const SendMoney());
      case RoutesManager.findBenefiary:
        return MaterialPageRoute(builder: (_) => const FindBeneficiary());
      case RoutesManager.shareReceipt:
        return MaterialPageRoute(builder: (_) => const ShareReceipt());
      case RoutesManager.sendMoneyInternationally:
        return MaterialPageRoute(builder: (_) => const SendMoneyInternationally());
      case RoutesManager.searchForFriends:
        return MaterialPageRoute(builder: (_) => const SearchForFriends());
      // case RoutesManager.introRoute:
      //   return MaterialPageRoute(builder: (_) => const IntroView());
      // case RoutesManager.loginRoute:
      //   return DirectionPageRoute(
      //       settings: settings,
      //       direction: AxisDirection.up,
      //       child: const LoginView());
      // case RoutesManager.twoFARoute:
      //   return MaterialPageRoute(
      //       builder: (_) => TwoFAView(param: settings.arguments as TwoFaArg));
      // case RoutesManager.signupRoute:
      //   return DirectionPageRoute(
      //       settings: settings,
      //       direction: AxisDirection.up,
      //       child: const SignUpView());

      // case RoutesManager.otpVerificationRoute:
      //   return MaterialPageRoute(
      //       builder: (_) => OtpVerificationView(
      //           param: settings.arguments as OtpVerificationArg));
      // case RoutesManager.passwordReset1Route:
      //   return MaterialPageRoute(builder: (_) => const PasswordReset1View());
      // case RoutesManager.passwordReset2Route:
      //   return MaterialPageRoute(
      //       builder: (_) =>
      //           PasswordReset2View(email: settings.arguments as String));
      // case RoutesManager.passwordReset3Route:
      //   return MaterialPageRoute(
      //       builder: (_) => PasswordReset3View(
      //           param: settings.arguments as PasswordReset3Arg));
      // case RoutesManager.passwordResetStatusRoute:
      //   return MaterialPageRoute(
      //       builder: (_) => const PasswordResetStatusView());

      // //
      // case RoutesManager.dashboardRoute:
      //   return MaterialPageRoute(builder: (_) => const DashboardView());
      // case RoutesManager.notificationRoute:
      //   return MaterialPageRoute(builder: (_) => const NotificationView());

      // //

      // case RoutesManager.confirmCryptoPurchase:
      //   return MaterialPageRoute(builder: (_) {
      //     return ConfirmCryptoPurchase(
      //       name: "Confirm Your Purchase Details",
      //       arg: settings.arguments as FinalCryptoTransactionArg,
      //     );
      //   });

      // case RoutesManager.cryptoPaymentDetail:
      //   return MaterialPageRoute(
      //       builder: (_) => CryptoPaymentDetailsView(
      //           args: settings.arguments as FinalCryptoTransactionArg));

      // case RoutesManager.sellGiftcard1Route:
      //   return MaterialPageRoute(
      //       builder: (_) => SellGiftcard1View(
      //           params: settings.arguments as BuyAndSaleGiftCardViewParams));
      // case RoutesManager.buyGiftcardRoute:
      //   return MaterialPageRoute(builder: (_) => const BuyGiftcardView());
      // case RoutesManager.sellGiftcard2Route:
      //   return MaterialPageRoute(
      //       builder: (_) => SellGiftcard2View(
      //           param: settings.arguments as List<SellGiftCard2Arg>));
      // case RoutesManager.giftcardTxnHistoryView:
      //   return MaterialPageRoute(
      //       builder: (_) => const GiftcardTxnHistoryView());
      // case RoutesManager.giftcardTxnHistoryDetailsView:
      //   return MaterialPageRoute(
      //       builder: (_) => GiftcardTxnHistoryDetailsView(
      //           reference: settings.arguments as String));
      // case RoutesManager.giftcardUnitListView:
      //   return MaterialPageRoute(
      //       builder: (_) => GiftcardUnitListView(
      //           param: settings.arguments as GiftcardTxnHistory));

      // //
      // case RoutesManager.buyCryptoRoute:
      //   return MaterialPageRoute(builder: (_) => const BuyCryptoView());
      // case RoutesManager.sellCryptoView:
      //   return MaterialPageRoute(
      //       builder: (_) => SellCryptoView(
      //             isSales: settings.arguments as bool,
      //           ));
      // case RoutesManager.sellCryptoDetailsView:
      //   return MaterialPageRoute(
      //       builder: (_) => SellCryptoDetailsView(
      //           param: settings.arguments as FinalCryptoTransactionArg));
      // case RoutesManager.cryptoTxnHistoryView:
      //   return MaterialPageRoute(builder: (_) => const CryptoTxnHistoryView());
      // case RoutesManager.cryptoTxnHistoryDetails:
      //   return MaterialPageRoute(
      //       builder: (_) => CryptoTxnHistoryDetails(
      //           reference: settings.arguments as String));
      // case RoutesManager.confirmCryptoTxn:
      //   return MaterialPageRoute(
      //       builder: (_) => ConfirmCryptoTxn(
      //           param: settings.arguments as ConfirmCryptoTxnArg));

      // //SETTINGS
      // case RoutesManager.bankInformationRoute:
      //   return MaterialPageRoute(builder: (_) => const BankInformationView());
      // case RoutesManager.addBankRoute:
      //   return MaterialPageRoute(builder: (_) => const AddBankView());
      // case RoutesManager.removeBankRoute:
      //   return MaterialPageRoute(
      //       builder: (_) =>
      //           RemoveBankView(param: settings.arguments as SavedBank));
      // case RoutesManager.securityRoute:
      //   return MaterialPageRoute(builder: (_) => const SecurityView());
      // case RoutesManager.supportRoute:
      //   return MaterialPageRoute(builder: (_) => const SupportView());
      // case RoutesManager.changePasswordRoute:
      //   return MaterialPageRoute(builder: (_) => const ChangePasswordView());
      // case RoutesManager.accountInfoRoute:
      //   return MaterialPageRoute(builder: (_) => const AccountInfoView());
      // // case RoutesManager.setupTransactionPinView:
      // //   return MaterialPageRoute(
      // //       builder: (_) => const SetupTransactionPinView());
      // case RoutesManager.changeTransactionPinView:
      //   return MaterialPageRoute(
      //       builder: (_) => const ChangeTransactionPinView());
      // case RoutesManager.recoverTransactionPinView:
      //   return MaterialPageRoute(
      //       builder: (_) => const RecoverTransactionPinView());

      // //Wallet
      // case RoutesManager.withdrawFundRoute:
      //   return MaterialPageRoute(builder: (_) => const WithdrawFundView());
      // case RoutesManager.walletTxnHistoryView:
      //   return MaterialPageRoute(builder: (_) => const WalletTxnHistoryView());
      // case RoutesManager.walletTxnHistoryDetails:
      //   return MaterialPageRoute(
      //       builder: (_) => WalletTxnHistoryDetails(
      //           param: settings.arguments as WalletTxnHistory));

      // case RoutesManager.allTxnHistoryView:
      //   return MaterialPageRoute(builder: (_) => const AllTxnHistoryView());

      // case RoutesManager.bannerView:
      //   return MaterialPageRoute(builder: (_) => const BannerView());

      // case RoutesManager.referralsView:
      //   return MaterialPageRoute(builder: (_) => const ReferralsView());
      // case RoutesManager.referralHistoryView:
      //   return MaterialPageRoute(builder: (_) => const ReferralHistoryView());
      // case RoutesManager.giftCardCategories:
      //   return MaterialPageRoute<GiftcardCategory?>(
      //       builder: (_) => SelectGiftcardCategory(
      //             current: settings.arguments as GiftcardCategory?,
      //             isSale: true,
      //           ));
      // case RoutesManager.cryptoAssets:
      //   return MaterialPageRoute<Asset?>(
      //       builder: (_) => SelectCryptoAsset(
      //             current: settings.arguments as Asset?,
      //             isSale: true,
      //           ));
      // case RoutesManager.giftCardProducts:
      //   return MaterialPageRoute<GiftcardProduct?>(builder: (_) {
      //     final SelectGiftCardProduct selectGiftCardProduct =
      //         settings.arguments as SelectGiftCardProduct;
      //     return SelectGiftcardProduct(
      //       current: selectGiftCardProduct.current,
      //       country: selectGiftCardProduct.country,
      //       giftcardCategory: selectGiftCardProduct.giftCardCategory,
      //     );
      //   });

      // case RoutesManager.selectBankAccount:
      //   return MaterialPageRoute(builder: (_) {
      //     return SelectSavedBank(
      //       arg: settings.arguments as List<SellGiftCard2Arg>?,
      //     );
      //   });
      // case RoutesManager.selectBankAccountForCrypto:
      //   return MaterialPageRoute(builder: (_) {
      //     return SelectSavedBankForCrypto(
      //       arg: settings.arguments as CryptoSaleArg,
      //     );
      //   });

      // case RoutesManager.confirmCardSale:
      //   return MaterialPageRoute(builder: (_) {
      //     return ConfirmGiftCardSell(
      //       name: "Confirm Your Sale Details",
      //       arg: settings.arguments as List<SellGiftCard2Arg>,
      //     );
      //   });
      // case RoutesManager.confirmCardPurchase:
      //   return MaterialPageRoute(builder: (_) {
      //     return ConfirmGiftCardPurchase(
      //       name: "Confirm Your Purchase Details",
      //       arg: settings.arguments as List<SellGiftCard2Arg>,
      //     );
      //   });

      // case RoutesManager.confirmCryptoSale:
      //   return MaterialPageRoute(builder: (_) {
      //     return ConfirmCryptoSell(
      //       param: settings.arguments as FinalCryptoTransactionArg,
      //     );
      //   });

      // case RoutesManager.confirmYourWithdrawalDetail:
      //   return MaterialPageRoute(builder: (_) {
      //     return ConfirmFundsWithdrawalDetails(
      //         name: 'Confirm your Withdrawal Details',
      //         params: settings.arguments as FundsWithdrawal
      //         // name: "Confirm Your Withdrawal Detail ",

      //         );
      //   });

      // case RoutesManager.transactionPin:
      //   return MaterialPageRoute<String>(builder: (_) {
      //     return EnterTransactionPin(
      //         params: settings.arguments as FinalCryptoTransactionArg);
      //   });

      // case RoutesManager.transactionPin2:
      //   return MaterialPageRoute<String>(builder: (_) {
      //     return EnterTransactionPin2(
      //         params: settings.arguments as SellGiftCard2Arg);
      //   });
      // case RoutesManager.transactionStatus:
      //   return MaterialPageRoute<String>(builder: (_) {
      //     final SuccessFailureArgs args =
      //         settings.arguments as SuccessFailureArgs;
      //     return SuccessFailedPopup(
      //       isSuccess: args.isSuccess,
      //       isCrypto: args.isCrypto,
      //       reference: args.reference,
      //     );
      //   });

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text("404")),
        body: const Center(
          child: Text("404 Page Not Found"),
        ),
      ),
    );
  }
}
