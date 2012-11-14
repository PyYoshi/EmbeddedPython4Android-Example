package com.example.ep4a;

import android.os.Bundle;
import android.app.Activity;
import android.widget.TextView;

public class MainActivity extends Activity {

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        TextView tv = new TextView(this);
        tv.setText(stringFromJNI());
        setContentView(tv);
    }
    
    public native String stringFromJNI();
    
    static{
    	System.loadLibrary("LoadPython");
    }

}
