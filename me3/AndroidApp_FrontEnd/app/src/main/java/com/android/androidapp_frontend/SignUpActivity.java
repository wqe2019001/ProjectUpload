package com.android.androidapp_frontend;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import com.android.androidapp_frontend.retrofit.User;
import com.android.androidapp_frontend.retrofit.UserApi;
import com.squareup.moshi.Moshi;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.moshi.MoshiConverterFactory;

public class SignUpActivity extends AppCompatActivity {

    private final String TAG = getClass().getSimpleName();

    Button btnCancel, btnSignUp;
    EditText idInput, pwInput, nameInput, emailInput;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_sign_up);

        idInput = (EditText) findViewById(R.id.idInput);
        pwInput = (EditText) findViewById(R.id.pwInput);
        nameInput = (EditText) findViewById(R.id.nameInput);
        emailInput = (EditText) findViewById(R.id.emailInput);

        btnCancel = (Button) findViewById(R.id.btnCancel);
        btnSignUp = (Button) findViewById(R.id.btnSignUp);

        btnCancel.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getApplicationContext(), MainActivity.class);
                startActivity(intent);
            }
        });

        btnSignUp.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String id = idInput.getText().toString();
                String pw = pwInput.getText().toString();
                String name = nameInput.getText().toString();
                String email = emailInput.getText().toString();

                User singUpInfo = new User();
                singUpInfo.setUserId(id);
                singUpInfo.setUserPassword(pw);
                singUpInfo.setUserName(name);
                singUpInfo.setUserEmail(email);

                Moshi moshi = new Moshi.Builder().build();

                Retrofit retrofit = new Retrofit.Builder()
                        .baseUrl("http://192.168.0.106:9009/")
                        .addConverterFactory(MoshiConverterFactory.create(moshi))
                        .build();
                UserApi api = retrofit.create(UserApi.class);

                Call<Boolean> call = api.createUser(singUpInfo);
                call.enqueue(new Callback<Boolean>() {
                    @Override
                    public void onResponse(Call<Boolean> call, Response<Boolean> response) {
                        boolean signUpSuccess = response.body();

                        if (signUpSuccess) {
                            Intent intent = new Intent(getApplicationContext(), MainActivity.class);
                            startActivity(intent);
                        } else {
                            Toast.makeText(getApplicationContext(), "회원 가입에 실패하였습니다", Toast.LENGTH_SHORT).show();
                        }
                    }

                    @Override
                    public void onFailure(Call<Boolean> call, Throwable t) {
                        Log.d(TAG, "Fail msg : " + t.getMessage());
                        Toast.makeText(getApplicationContext(), "회원 가입에 실패하였습니다", Toast.LENGTH_SHORT).show();
                    }
                });
            }
        });
    }
}
