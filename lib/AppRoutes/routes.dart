import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:x_app/View/Auth/change_password/change_password.dart';
import 'package:x_app/View/Auth/change_password/signup/signup.dart';
import 'package:x_app/View/Auth/login/login.dart';
import 'package:x_app/View/Auth/splash/splash.dart';
import 'package:x_app/View/cancel_subscription/cancel_subscription.dart';
import 'package:x_app/View/edit_job/edit_job.dart';
import 'package:x_app/View/edit_profile/edit_profile.dart';
import 'package:x_app/View/home_screen/home_screen.dart';
import 'package:x_app/View/job_info/job_info.dart';
import 'package:x_app/View/jobs/jobs.dart';
import 'package:x_app/View/liked/liked.dart';
import 'package:x_app/View/packages/packages.dart';
import 'package:x_app/View/payment_method/payment_methods.dart';
import 'package:x_app/View/profile/profile.dart';
import 'package:x_app/View/profile_view/profile_view.dart';
import 'package:x_app/View/search/search_detail.dart';
import 'package:x_app/View/search/search_now.dart';
import 'package:x_app/View/settings/settings.dart';
import 'package:x_app/Widgets/bottom_nav_bar.dart';
import 'package:x_app/message/message.dart';
import 'package:x_app/yousuf_web_games.dart';

class AppRoutes {
  static const String splash = "/";
  static const String login = "/login";
  static const String signup = "/signup";
  static const String packages = "/packages";
  static const String paymentmethods = "/paymentmethods";
  static const String homescreen = "/homescreen";
  static const String settings = "/settings";
  static const String changepass = "/changepass";
  static const String jobinfo = "/jobinfo";
  static const String jobs = "/jobs";
  static const String profile = "/profile";
  static const String searchnow = "/searchnow";
  static const String searchdetail = "/searchdetail";
  static const String bottomnav = "/bottomnav";
  static const String cancelsubscription = "/cancelsubscription";
  static const String editjob = "/editjob";
  static const String editprofile = "/editprofile";
  static const String message = "/message";
  static const String profileview = "/profileview";
  static const String liked = "/liked";
  static const String yosuf = "/yosuf";

  static List<GetPage> appRoutes = [
    GetPage(name: yosuf, page: () => const GameImplementation()),
    GetPage(name: liked, page: () => const Liked()),
    GetPage(name: profileview, page: () => const PeopleView()),
    GetPage(name: message, page: () => const Message()),
    GetPage(name: editprofile, page: () => const EditProfile()),
    GetPage(name: editjob, page: () => const EditJob()),
    GetPage(name: cancelsubscription, page: () => const CancelSubscription()),
    GetPage(name: bottomnav, page: () => Home()),
    GetPage(name: searchdetail, page: () => const SearchDetail()),
    GetPage(name: searchnow, page: () => const Searchnow()),
    GetPage(
        name: profile,
        page: () => const Profile(
              image: '',
            )),
    GetPage(name: jobs, page: () => const Jobs()),
    GetPage(name: jobinfo, page: () => const JobInfo()),
    GetPage(name: changepass, page: () => const ChangePass()),
    GetPage(name: settings, page: () => const Settings()),
    GetPage(name: splash, page: () => const SplashScreen()),
    GetPage(name: homescreen, page: () => const HomeScreen()),
    GetPage(name: login, page: () => const Login()),
    GetPage(name: signup, page: () => const Signup()),
    GetPage(name: packages, page: () => const Packages()),
    GetPage(name: paymentmethods, page: () => const PaymentMethods()),
  ];
}
