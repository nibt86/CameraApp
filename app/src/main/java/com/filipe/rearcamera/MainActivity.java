package com.filipe.rearcamera;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

public class MainActivity extends Activity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent intent = new Intent("com.nwd.mycar.SHOW_BACKCAR");
        sendBroadcast(intent);
        finish();
    }
}
