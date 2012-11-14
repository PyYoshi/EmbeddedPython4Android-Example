#include <string.h>
#include <jni.h>
#include <android/log.h>

jstring
Java_com_example_ep4a_MainActivity_stringFromJNI(JNIEnv *env, jobject hoge)
{
	__android_log_write(ANDROID_LOG_DEBUG,"LoadPython","Hello Python!");
	return(*env) -> NewStringUTF(env, "Hello world! Hello Python!!");
}
