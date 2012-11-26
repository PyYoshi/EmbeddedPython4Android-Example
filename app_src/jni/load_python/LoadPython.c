#include <string.h>
#include <jni.h>
#include <stdio.h>
#include <android/log.h>

#include "Python.h"

#define LOGD(args...) __android_log_print(ANDROID_LOG_DEBUG,"PythonLoader", args)
#define LOGW(args...) __android_log_print(ANDROID_LOG_WARN,"PythonLoader", args)

jint
JNI_OnLoad(JavaVM *vm, void *reserved)
{
    return JNI_VERSION_1_6;
}

void
JNI_OnUnload(JavaVM *vm, void *reserved)
{}

jstring
Java_com_example_ep4a_MainActivity_stringFromJNI(JNIEnv *env, jobject hoge)
{
	LOGD("stringFromJNI: Hello Python!");
	return(*env) -> NewStringUTF(env, "Hello world! Hello Python!!");
}


jstring
Java_com_example_ep4a_MainActivity_executeSimpleCode(JNIEnv *env, jobject hoge)
{
	LOGD("executePython: executing...");

	Py_Initialize();
	PyRun_SimpleString("print u'毎日がeveryday!!'");
	Py_Finalize();

	return "";
}


void
Java_com_example_ep4a_MainActivity_runScript(JNIEnv *env, jstring filename)
{
    const jbyte *str = NULL;
    FILE *fp = NULL;

    setenv("PYTHONPATH", "/sdcard/python2.7/", 1);
    Py_Initialize();

    str = (*env)->GetStringUTFChars(env, filename, NULL);
    if(str == NULL){
        (*env)->ExceptionDescribe(env);
        goto done;
    }

    fp = fopen(str, "r");
    if(fp == NULL){
        LOGW("Failed to open Python script '%s'",str);
        goto done;
    }

    PyRun_SimpleFile(fp, str);
    Py_Finalize();
done:
    if(str){
        (*env)->ReleaseStringUTFChars(env, filename, str);
    }

    if(fp){
        fclose(fp);
    }
}
