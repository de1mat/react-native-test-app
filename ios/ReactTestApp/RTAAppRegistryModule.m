//
// Copyright (c) Microsoft Corporation
//
// This source code is licensed under the MIT license found in the
// LICENSE file in the root directory of this source tree.
//

#import "RTAAppRegistryModule.h"

NSNotificationName const ReactTestAppDidRegisterAppsNotification =
    @"ReactTestAppDidRegisterAppsNotification";

@implementation RTAAppRegistryModule

RCT_EXPORT_MODULE(ReactTestAppAppRegistryModule);

// clang-format off
RCT_EXPORT_METHOD(registeredApps:(NSArray<NSString *> *)modules)
// clang-format on
{
    [NSNotificationCenter.defaultCenter postNotificationName:ReactTestAppDidRegisterAppsNotification
                                                      object:self
                                                    userInfo:@{@"apps": modules}];
}

@end
