#include <string.h>
#include <jni.h>
#include <android/log.h>

//#include <Python.h>

jstring
Java_com_example_ep4a_MainActivity_stringFromJNI(JNIEnv *env, jobject hoge)
{
	__android_log_write(ANDROID_LOG_DEBUG,"LoadPython","stringFromJNI: Hello Python!");
	return(*env) -> NewStringUTF(env, "Hello world! Hello Python!!");
}

/*
jstring
Java_com_example_ep4a_MainActivity_executeSimpleCode(JNIEnv *env, jobject hoge)
{
	__android_log_write(ANDROID_LOG_DEBUG,"LoadPython","executePython: executing...");

	Py_Initialize();
	PyRun_SimpleString("print u'毎日がeveryday!!'");
	Py_Finalize();

	return "";
}
*/
