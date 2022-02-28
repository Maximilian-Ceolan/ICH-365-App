#import "AppbossCustomCode.h"

@implementation AppbossCustomCode

// Lifecycle methods (DO NOT DELETE)
// These methods will be called in the BuddyBoss app's AppDelegate.m
// You can hook into them to initiate your native libraries or run any custom side-effects

+ (void)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{}

// Here you can write your own custom native modules to use in your custom repo
// Below is an example of a simple method to multiply two numbers
// See https://reactnative.dev/docs/native-modules-ios for more information

RCT_EXPORT_MODULE()

// This example method can be deleted
RCT_REMAP_METHOD(multiply,
                 multiplyWithA:(nonnull NSNumber*)a withB:(nonnull NSNumber*)b
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)
{
  NSNumber *result = @([a floatValue] * [b floatValue]);
  resolve(result);
}

@end

