package com.android.androidapp_frontend;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;

public class LocationActivity extends AppCompatActivity {

    Button btnGoMain, btnHome, toolbar2,toolbar3, toolbar4;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_location);

        btnGoMain = (Button) findViewById(R.id.btnLocationGoMain);
        btnHome = (Button) findViewById(R.id.btnLocationHome);

        toolbar2 = (Button) findViewById(R.id.toolbar2);
        toolbar3 = (Button) findViewById(R.id.toolbar3);
        toolbar4 = (Button) findViewById(R.id.toolbar4);

        btnGoMain.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getApplicationContext(), MainActivity.class);
                startActivity(intent);
            }
        });

        btnHome.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getApplicationContext(), SignUpSuccess.class);
                startActivity(intent);
            }
        });

        toolbar2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getApplicationContext(), LocationActivity.class);
                startActivity(intent);
            }
        });
        toolbar3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getApplicationContext(), GoodsPrActivity.class);
                startActivity(intent);
            }
        });
        toolbar4.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getApplicationContext(), GoodsInfoActivity.class);
                startActivity(intent);
            }
        });


        // Fragment﻿를 추가하는 소스를 코딩해 줍니다.
        if (savedInstanceState == null) {

            MainFragment mainFragment = new MainFragment();
            getSupportFragmentManager().beginTransaction()
                    .replace(R.id.mainFragment, mainFragment, "main")
                    .commit();
        }


    }
}