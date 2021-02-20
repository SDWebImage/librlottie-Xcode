#ifndef CONFIG_H
#define CONFIG_H

#import <TargetConditionals.h>

// disable JSON assert
#define RAPIDJSON_ASSERT

// enable threading
#if TARGET_OS_SIMULATOR
// Apple Platform iOS 9/watchOS 2 simulator does not have Thread Local support
  #if TARGET_OS_IOS && (__IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_10_0)
  #elif TARGET_OS_WATCH && (__WATCH_OS_VERSION_MIN_REQUIRED < __WATCHOS_3_0)
  #else
    #define LOTTIE_THREAD_SUPPORT
  #endif
#else
  #define LOTTIE_THREAD_SUPPORT
#endif

// enable logging
//#define LOTTIE_LOGGING_SUPPORT

// enable module building of image loader
//#define LOTTIE_IMAGE_MODULE_SUPPORT

// enable lottie model caching
//#define LOTTIE_CACHE_SUPPORT

#endif  // CONFIG_H
