package com.example.super_app

import android.content.Intent
import dev.prateekthakur.subapp.SubAppMainActivity
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity(){
    override fun configureFlutterEngine(flutterEngine: FlutterEngine){
        super.configureFlutterEngine(flutterEngine)
        val channel = "flutter_channel"
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, channel)
            .setMethodCallHandler{ call, res ->
                when (call.method){
                    "sub_app" -> {
                        android.util.Log.d("SUBAPP", "configureFlutterEngine: SubApp")
                        val intent:Intent = Intent(this, SubAppMainActivity::class.java);
                        startActivity(intent)
                    };
                    else -> {
                        android.util.Log.d("SUBAPP", "configureFlutterEngine: Nothing")}
                }
            }
    }
}