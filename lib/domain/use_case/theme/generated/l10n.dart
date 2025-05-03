// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Amamini client app`
  String get appName {
    return Intl.message(
      'Amamini client app',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Featured products`
  String get featuredProducts {
    return Intl.message(
      'Featured products',
      name: 'featuredProducts',
      desc: '',
      args: [],
    );
  }

  /// `Popular categories`
  String get popularCategories {
    return Intl.message(
      'Popular categories',
      name: 'popularCategories',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Catalog`
  String get catalog {
    return Intl.message('Catalog', name: 'catalog', desc: '', args: []);
  }

  /// `Cart`
  String get cart {
    return Intl.message('Cart', name: 'cart', desc: '', args: []);
  }

  /// `Account`
  String get account {
    return Intl.message('Account', name: 'account', desc: '', args: []);
  }

  /// `Add to cart`
  String get addToCart {
    return Intl.message('Add to cart', name: 'addToCart', desc: '', args: []);
  }

  /// `Search in catalog`
  String get searchInCatalog {
    return Intl.message(
      'Search in catalog',
      name: 'searchInCatalog',
      desc: '',
      args: [],
    );
  }

  /// `{count} items`
  String countItems(Object count) {
    return Intl.message(
      '$count items',
      name: 'countItems',
      desc: '',
      args: [count],
    );
  }

  /// `Manufacturers`
  String get manufacturers {
    return Intl.message(
      'Manufacturers',
      name: 'manufacturers',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get categories {
    return Intl.message('Categories', name: 'categories', desc: '', args: []);
  }

  /// `{reviewsCount} reviews`
  String reviews(Object reviewsCount) {
    return Intl.message(
      '$reviewsCount reviews',
      name: 'reviews',
      desc: '',
      args: [reviewsCount],
    );
  }

  /// `My account`
  String get myAccount {
    return Intl.message('My account', name: 'myAccount', desc: '', args: []);
  }

  /// `Wishlist`
  String get wishlist {
    return Intl.message('Wishlist', name: 'wishlist', desc: '', args: []);
  }

  /// `Register`
  String get register {
    return Intl.message('Register', name: 'register', desc: '', args: []);
  }

  /// `Log in`
  String get logIn {
    return Intl.message('Log in', name: 'logIn', desc: '', args: []);
  }

  /// `Your personal details`
  String get yourPersonalDetails {
    return Intl.message(
      'Your personal details',
      name: 'yourPersonalDetails',
      desc: '',
      args: [],
    );
  }

  /// `First name*`
  String get firstName {
    return Intl.message('First name*', name: 'firstName', desc: '', args: []);
  }

  /// `Last name*`
  String get lastName {
    return Intl.message('Last name*', name: 'lastName', desc: '', args: []);
  }

  /// `Email*`
  String get email {
    return Intl.message('Email*', name: 'email', desc: '', args: []);
  }

  /// `Date of birth`
  String get dateOfBirth {
    return Intl.message(
      'Date of birth',
      name: 'dateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `Company details`
  String get companyDetails {
    return Intl.message(
      'Company details',
      name: 'companyDetails',
      desc: '',
      args: [],
    );
  }

  /// `Company`
  String get company {
    return Intl.message('Company', name: 'company', desc: '', args: []);
  }

  /// `Options`
  String get options {
    return Intl.message('Options', name: 'options', desc: '', args: []);
  }

  /// `Newsletter`
  String get newsletter {
    return Intl.message('Newsletter', name: 'newsletter', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Password*`
  String get passwordRequired {
    return Intl.message(
      'Password*',
      name: 'passwordRequired',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password*`
  String get confirmPassword {
    return Intl.message(
      'Confirm password*',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Customer info`
  String get customerInfo {
    return Intl.message(
      'Customer info',
      name: 'customerInfo',
      desc: '',
      args: [],
    );
  }

  /// `Addresses`
  String get addresses {
    return Intl.message('Addresses', name: 'addresses', desc: '', args: []);
  }

  /// `Orders`
  String get orders {
    return Intl.message('Orders', name: 'orders', desc: '', args: []);
  }

  /// `Return requests`
  String get returnRequests {
    return Intl.message(
      'Return requests',
      name: 'returnRequests',
      desc: '',
      args: [],
    );
  }

  /// `Reward points`
  String get rewardPoints {
    return Intl.message(
      'Reward points',
      name: 'rewardPoints',
      desc: '',
      args: [],
    );
  }

  /// `Change password`
  String get changePassword {
    return Intl.message(
      'Change password',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `My product reviews`
  String get myProductReviews {
    return Intl.message(
      'My product reviews',
      name: 'myProductReviews',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get logOut {
    return Intl.message('Log out', name: 'logOut', desc: '', args: []);
  }

  /// `Free shipping`
  String get freeShipping {
    return Intl.message(
      'Free shipping',
      name: 'freeShipping',
      desc: '',
      args: [],
    );
  }

  /// `Manufacturer`
  String get manufacturer {
    return Intl.message(
      'Manufacturer',
      name: 'manufacturer',
      desc: '',
      args: [],
    );
  }

  /// `Gift card info:`
  String get giftCardInfo {
    return Intl.message(
      'Gift card info:',
      name: 'giftCardInfo',
      desc: '',
      args: [],
    );
  }

  /// `Recipient's name*`
  String get recipientsName {
    return Intl.message(
      'Recipient\'s name*',
      name: 'recipientsName',
      desc: '',
      args: [],
    );
  }

  /// `Recipient's email*`
  String get recipientsEmail {
    return Intl.message(
      'Recipient\'s email*',
      name: 'recipientsEmail',
      desc: '',
      args: [],
    );
  }

  /// `Your name*`
  String get yourName {
    return Intl.message('Your name*', name: 'yourName', desc: '', args: []);
  }

  /// `Your email*`
  String get yourEmail {
    return Intl.message('Your email*', name: 'yourEmail', desc: '', args: []);
  }

  /// `Message`
  String get message {
    return Intl.message('Message', name: 'message', desc: '', args: []);
  }

  /// `Shopping cart`
  String get shoppingCart {
    return Intl.message(
      'Shopping cart',
      name: 'shoppingCart',
      desc: '',
      args: [],
    );
  }

  /// `Gift wrapping*`
  String get giftWrapping {
    return Intl.message(
      'Gift wrapping*',
      name: 'giftWrapping',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message('Apply', name: 'apply', desc: '', args: []);
  }

  /// `Enter your gift card code`
  String get enterYourGiftCardCode {
    return Intl.message(
      'Enter your gift card code',
      name: 'enterYourGiftCardCode',
      desc: '',
      args: [],
    );
  }

  /// `Enter your coupon code`
  String get enterYourCouponCode {
    return Intl.message(
      'Enter your coupon code',
      name: 'enterYourCouponCode',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message('Checkout', name: 'checkout', desc: '', args: []);
  }

  /// `My account info`
  String get myAccountInfo {
    return Intl.message(
      'My account info',
      name: 'myAccountInfo',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message('Gender', name: 'gender', desc: '', args: []);
  }

  /// `Male`
  String get male {
    return Intl.message('Male', name: 'male', desc: '', args: []);
  }

  /// `Success`
  String get success {
    return Intl.message('Success', name: 'success', desc: '', args: []);
  }

  /// `Sad request. try again later.`
  String get badRequestError {
    return Intl.message(
      'Sad request. try again later.',
      name: 'badRequestError',
      desc: '',
      args: [],
    );
  }

  /// `Success with not content.`
  String get noContent {
    return Intl.message(
      'Success with not content.',
      name: 'noContent',
      desc: '',
      args: [],
    );
  }

  /// `Forbidden request. try again later.`
  String get forbiddenError {
    return Intl.message(
      'Forbidden request. try again later.',
      name: 'forbiddenError',
      desc: '',
      args: [],
    );
  }

  /// `User unauthorized, try again later.`
  String get unauthorizedError {
    return Intl.message(
      'User unauthorized, try again later.',
      name: 'unauthorizedError',
      desc: '',
      args: [],
    );
  }

  /// `Url not found, try again later.`
  String get notFoundError {
    return Intl.message(
      'Url not found, try again later.',
      name: 'notFoundError',
      desc: '',
      args: [],
    );
  }

  /// `Conflict found, try again later.`
  String get conflictError {
    return Intl.message(
      'Conflict found, try again later.',
      name: 'conflictError',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong, try again later.`
  String get internalServerError {
    return Intl.message(
      'Something went wrong, try again later.',
      name: 'internalServerError',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong, try again later.`
  String get unknownError {
    return Intl.message(
      'Something went wrong, try again later.',
      name: 'unknownError',
      desc: '',
      args: [],
    );
  }

  /// `Timeout, try again later.`
  String get timeoutError {
    return Intl.message(
      'Timeout, try again later.',
      name: 'timeoutError',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong, try again later.`
  String get defaultError {
    return Intl.message(
      'Something went wrong, try again later.',
      name: 'defaultError',
      desc: '',
      args: [],
    );
  }

  /// `Cache error, try again later.`
  String get cacheError {
    return Intl.message(
      'Cache error, try again later.',
      name: 'cacheError',
      desc: '',
      args: [],
    );
  }

  /// `Please check your internet connection.`
  String get noiInternetError {
    return Intl.message(
      'Please check your internet connection.',
      name: 'noiInternetError',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message('Save', name: 'save', desc: '', args: []);
  }

  /// `My addresses`
  String get myAddresses {
    return Intl.message(
      'My addresses',
      name: 'myAddresses',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message('Phone', name: 'phone', desc: '', args: []);
  }

  /// `Delete`
  String get delete {
    return Intl.message('Delete', name: 'delete', desc: '', args: []);
  }

  /// `Edit`
  String get edit {
    return Intl.message('Edit', name: 'edit', desc: '', args: []);
  }

  /// `Add new address`
  String get addNewAddress {
    return Intl.message(
      'Add new address',
      name: 'addNewAddress',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message('City', name: 'city', desc: '', args: []);
  }

  /// `Address`
  String get address {
    return Intl.message('Address', name: 'address', desc: '', args: []);
  }

  /// `Zip postal code`
  String get zipPostalCode {
    return Intl.message(
      'Zip postal code',
      name: 'zipPostalCode',
      desc: '',
      args: [],
    );
  }

  /// `Fax`
  String get fax {
    return Intl.message('Fax', name: 'fax', desc: '', args: []);
  }

  /// `My orders`
  String get myOrders {
    return Intl.message('My orders', name: 'myOrders', desc: '', args: []);
  }

  /// `No orders`
  String get noOrders {
    return Intl.message('No orders', name: 'noOrders', desc: '', args: []);
  }

  /// `No return requests`
  String get noReturnRequests {
    return Intl.message(
      'No return requests',
      name: 'noReturnRequests',
      desc: '',
      args: [],
    );
  }

  /// `My reward points`
  String get myRewardPoints {
    return Intl.message(
      'My reward points',
      name: 'myRewardPoints',
      desc: '',
      args: [],
    );
  }

  /// `Reward points history`
  String get rewardPointsHistory {
    return Intl.message(
      'Reward points history',
      name: 'rewardPointsHistory',
      desc: '',
      args: [],
    );
  }

  /// `There is no balance history yet`
  String get noBalanceTitle {
    return Intl.message(
      'There is no balance history yet',
      name: 'noBalanceTitle',
      desc: '',
      args: [],
    );
  }

  /// `Points`
  String get points {
    return Intl.message('Points', name: 'points', desc: '', args: []);
  }

  /// `Money`
  String get money {
    return Intl.message('Money', name: 'money', desc: '', args: []);
  }

  /// `Old password`
  String get oldPassword {
    return Intl.message(
      'Old password',
      name: 'oldPassword',
      desc: '',
      args: [],
    );
  }

  /// `New password`
  String get newPassword {
    return Intl.message(
      'New password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `You haven't written any reviews yet`
  String get noReviews {
    return Intl.message(
      'You haven\'t written any reviews yet',
      name: 'noReviews',
      desc: '',
      args: [],
    );
  }

  /// `Select country`
  String get selectCountry {
    return Intl.message(
      'Select country',
      name: 'selectCountry',
      desc: '',
      args: [],
    );
  }

  /// `Select state`
  String get selectState {
    return Intl.message(
      'Select state',
      name: 'selectState',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure?`
  String get areYouSure {
    return Intl.message(
      'Are you sure?',
      name: 'areYouSure',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Female`
  String get female {
    return Intl.message('Female', name: 'female', desc: '', args: []);
  }

  /// `Registration was successful`
  String get registrationWasSuccessful {
    return Intl.message(
      'Registration was successful',
      name: 'registrationWasSuccessful',
      desc: '',
      args: [],
    );
  }

  /// `Personal details was updated!`
  String get personalDetailsWasUpdated {
    return Intl.message(
      'Personal details was updated!',
      name: 'personalDetailsWasUpdated',
      desc: '',
      args: [],
    );
  }

  /// `No addresses`
  String get noAddresses {
    return Intl.message(
      'No addresses',
      name: 'noAddresses',
      desc: '',
      args: [],
    );
  }

  /// `Delete address`
  String get deleteAddress {
    return Intl.message(
      'Delete address',
      name: 'deleteAddress',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this address?`
  String get deleteAddressMessage {
    return Intl.message(
      'Are you sure you want to delete this address?',
      name: 'deleteAddressMessage',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email1 {
    return Intl.message('Email', name: 'email1', desc: '', args: []);
  }

  /// `Edit address`
  String get editAddress {
    return Intl.message(
      'Edit address',
      name: 'editAddress',
      desc: '',
      args: [],
    );
  }

  /// `Password was successfully changed.`
  String get passwordSuccess {
    return Intl.message(
      'Password was successfully changed.',
      name: 'passwordSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email address below. You will receive a ling to reset your password`
  String get recoveryPasswordMessage {
    return Intl.message(
      'Please enter your email address below. You will receive a ling to reset your password',
      name: 'recoveryPasswordMessage',
      desc: '',
      args: [],
    );
  }

  /// `Password recovery`
  String get passwordRecovery {
    return Intl.message(
      'Password recovery',
      name: 'passwordRecovery',
      desc: '',
      args: [],
    );
  }

  /// `Recover`
  String get recover {
    return Intl.message('Recover', name: 'recover', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'en')];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
