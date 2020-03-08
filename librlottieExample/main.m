//
//  main.m
//  librlottieExample
//
//  Created by lizhuoli on 2020/3/8.
//  Copyright © 2020 Samsung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <librlottie/librlottie.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Lottie_Animation *animation = lottie_animation_from_file("/tmp/1.json");
        if (animation) {
            lottie_animation_destroy(animation);
        } else {
            printf("%s", "Lottie load failed");
        }
    }
    return 0;
}
