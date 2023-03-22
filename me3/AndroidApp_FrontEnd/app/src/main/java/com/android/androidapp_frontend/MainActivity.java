package com.android.androidapp_frontend;

import androidx.appcompat.app.AppCompatActivity;
import androidx.drawerlayout.widget.DrawerLayout;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;
import android.widget.Toolbar;

import com.android.androidapp_frontend.retrofit.User;
import com.android.androidapp_frontend.retrofit.UserApi;
import com.squareup.moshi.Moshi;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.moshi.MoshiConverterFactory;

public class MainActivity extends AppCompatActivity {

    private final String TAG = getClass().getSimpleName();

    Button btnSignIn,btnHome, toolbar2,toolbar3, toolbar4;
    EditText signInId, signInPw;



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        signInId = (EditText) findViewById(R.id.signInId);
        signInPw = (EditText) findViewById(R.id.signInPw);

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

        btnSignIn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String id = signInId.getText().toString();
                String pw = signInPw.getText().toString();

                User loginInfo = new User();
                loginInfo.setUserId(id);
                loginInfo.setUserPassword(pw);

                Moshi moshi = new Moshi.Builder().build();

                // Retrofit 객체 생성 및 MoshiConverter 추가
                Retrofit retrofit = new Retrofit.Builder()
                        .baseUrl("http://192.168.0.105:9009/")
                        .addConverterFactory(MoshiConverterFactory.create(moshi)).build();

                UserApi api = retrofit.create(UserApi.class);

                Call<Boolean> call = api.postUser(loginInfo);
                call.enqueue(new Callback<Boolean>() {
                    // Controller에서 response.isSuccessful 응답 성공(또는 실패) 시 처리할 프로세스 정의
                    @Override
                    public void onResponse(Call<Boolean> call, Response<Boolean> response) {
                        if(response.isSuccessful()){
                            boolean userExists = response.body();

                            if (userExists){
                                Intent intent = new Intent(getApplicationContext(), SignUpSuccess.class);
                                startActivity(intent);
                            } else {
                                Toast.makeText(getApplicationContext(), "아이디 혹은 비밀번호가 일치하지 않습니다", Toast.LENGTH_SHORT).show();
                            }
                        } else {
                            Log.d(TAG, "Status Code : " + response.code());
                        }
                    }
                    @Override
                    public void onFailure(Call<Boolean> call, Throwable t) {
                        Log.d(TAG, "Fail msg : " + t.getMessage());
                    }
                });
            }
        });
    }

    private void setSupportActionBar(Toolbar toolbar) {
    }
}