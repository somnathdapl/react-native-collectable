/**
 * Copyright (c) 2015-present, Facebook, Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import "AppDelegate.h"

#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>

// ++ All the third-party library haeder imports will follow here
// For Firebase

//#import <Firebase.h>
//#import "RNFirebaseNotifications.h"
//#import "RNFirebaseMessaging.h"

// For Google Maps
#import <GoogleMaps/GoogleMaps.h>

// For Google SignIn
#import <RNGoogleSignin/RNGoogleSignin.h>

// For Facebook Login
#import <FBSDKCoreKit/FBSDKCoreKit.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  // Firebase Configuration

  //[FIRApp configure];
  //[FIRDatabase database].persistenceEnabled = YES;
  //[RNFirebaseNotifications configure];

  // Google Maps Configuration
  // Replace your own API key here
  [GMSServices provideAPIKey:@"AIzaSyBWyQKJQwSArlCZbXcfGCfPKUSJHm5gYWU"];

  // JS server bundle location
  NSURL *jsCodeLocation;

  jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];

  // app initialization
  RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                      moduleName:@"rnfnts"
                                               initialProperties:nil
                                                   launchOptions:launchOptions];
  rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];

  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  UIViewController *rootViewController = [UIViewController new];
  rootViewController.view = rootView;
  self.window.rootViewController = rootViewController;
  [self.window makeKeyAndVisible];
  return YES;
}

// For Firebase Notification
// - (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification {
//   [[RNFirebaseNotifications instance] didReceiveLocalNotification:notification];
// }

// - (void)application:(UIApplication *)application didReceiveRemoteNotification:(nonnull NSDictionary *)userInfo
//                                                        fetchCompletionHandler:(nonnull void (^)(UIBackgroundFetchResult))completionHandler{
//   [[RNFirebaseNotifications instance] didReceiveRemoteNotification:userInfo fetchCompletionHandler:completionHandler];
// }

// - (void)application:(UIApplication *)application didRegisterUserNotificationSettings:(UIUserNotificationSettings *)notificationSettings {
//   [[RNFirebaseMessaging instance] didRegisterUserNotificationSettings:notificationSettings];
// }

// For Google and Facebook Authentication flow
// ++ The below is for if you only use Google SignIn
//- (BOOL)application:(UIApplication *)application openURL:(nonnull NSURL *)url options:(nonnull NSDictionary<NSString *,id> *)options {
//  return [RNGoogleSignin application:application
//                             openURL:url
//                   sourceApplication:options[UIApplicationOpenURLOptionsSourceApplicationKey]
//                          annotation:options[UIApplicationOpenURLOptionsAnnotationKey]];
//}

// ++ The below is for tf you use both Google and Facebook SIgnIn flow
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options
{
  return [[FBSDKApplicationDelegate sharedInstance] application:application openURL:url sourceApplication:options[UIApplicationOpenURLOptionsSourceApplicationKey] annotation:options[UIApplicationOpenURLOptionsAnnotationKey]]
  || [RNGoogleSignin application:application openURL:url sourceApplication:options[UIApplicationOpenURLOptionsSourceApplicationKey] annotation:options[UIApplicationOpenURLOptionsAnnotationKey]];
}

@end
