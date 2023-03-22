package com.android.androidapp_frontend;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class SignUpSuccess extends AppCompatActivity {

    Button btnSignIn,btnHome, toolbar2,toolbar3, toolbar4;




    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_sign_success);



        btnSignIn = (Button) findViewById(R.id.btnSignIn);

        btnHome = (Button) findViewById(R.id.btnHome);
        toolbar2 = (Button) findViewById(R.id.toolbar2);
        toolbar3 = (Button) findViewById(R.id.toolbar3);
        toolbar4 = (Button) findViewById(R.id.toolbar4);

        btnHome.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getApplicationContext(), MainActivity.class);
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


    }
}
