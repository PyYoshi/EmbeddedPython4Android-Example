export PYVERSION="2.7.2"

export NDK="/home/renax/Android/android-ndk-r8b"
export SDK="/home/renax/Android/android-sdk-linux"
export NDKPLATFORM="$NDK/platforms/android-9/arch-arm"
export PATH="$NDK/toolchains/arm-linux-androideabi-4.4.3/prebuilt/linux-x86/bin/:$NDK:$SDK/tools:$PATH"

export ANDROID_PLATFORM="android-9"

export ARCH="armeabi"
#export ARCH="armeabi-v7a"

export MAKE_JOB_WORKERS=8