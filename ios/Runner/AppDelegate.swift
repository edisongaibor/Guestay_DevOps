import UIKit
import Braintree

import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    BTAppContextSwitcher.setReturnURLScheme("GUESTAY.APP.braintree")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
