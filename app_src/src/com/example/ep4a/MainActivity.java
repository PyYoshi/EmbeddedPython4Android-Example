package com.example.ep4a;

import android.os.Bundle;
import android.app.Activity;
import android.widget.TextView;

public class MainActivity extends Activity {
	
	static{
    	System.loadLibrary("python2.7");
    	System.loadLibrary("LoadPython");
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        TextView tv = new TextView(this);
        tv.setText(stringFromJNI());
        setContentView(tv);
        executeSimpleCode();
    }
    
    public native String stringFromJNI();
    public native String executeSimpleCode();
    

}
