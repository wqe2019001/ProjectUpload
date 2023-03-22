package com.android.androidapp_frontend;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ImageView;

import androidx.appcompat.app.AppCompatActivity;

public class GoodsInfoActivity extends AppCompatActivity {

    Button btnGoMain, btnHome, toolbar2,toolbar3, toolbar4;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_goods_info);

        final GridView gv = (GridView) findViewById(R.id.gridview1);
        MyGridAdapter gAdapter = new MyGridAdapter(this);
        gv.setAdapter(gAdapter);

        btnGoMain = (Button) findViewById(R.id.btnGoMain);
        btnHome = (Button) findViewById(R.id.btnHome);


        toolbar2 = (Button) findViewById(R.id.toolbar2);
        toolbar3 = (Button) findViewById(R.id.toolbar3);
        toolbar4 = (Button) findViewById(R.id.toolbar4);

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


        btnGoMain.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getApplicationContext(), SignUpSuccess.class);
                startActivity(intent);
            }
        });

        btnHome.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getApplicationContext(), MainActivity.class);
                startActivity(intent);
            }
        });
    }

    public class MyGridAdapter extends BaseAdapter {
        Context context;

        public MyGridAdapter(Context c){
            context = c;
        }

        @Override
        public int getCount() {
            return posterID.length;
        }

        Integer[] posterID = {R.drawable.e1, R.drawable.e1_over,
                R.drawable.e2, R.drawable.e2_over, R.drawable.e3,
                R.drawable.e3_over, R.drawable.e4, R.drawable.e4_over,
                R.drawable.l1, R.drawable.l1_over, R.drawable.l2,
                R.drawable.l2_over,
                R.drawable.l3, R.drawable.l3_over,
                R.drawable.l5, R.drawable.l5_over, R.drawable.l7,
                R.drawable.l7_over, R.drawable.f1, R.drawable.f1_over,
                R.drawable.f4, R.drawable.f4_over, R.drawable.f5,
                R.drawable.f5_over};

        @Override
        public Object getItem(int i) {
            return null;
        }

        @Override
        public long getItemId(int i) {
            return 0;
        }

        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            ImageView imageView = new ImageView(context);
            imageView.setLayoutParams(new GridView.LayoutParams(445, 445));
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageView.setPadding(10,15,10,15);
            imageView.setImageResource(posterID[position]);

            final int pos = position;
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    View dialogView = (View) View.inflate(GoodsInfoActivity.this, R.layout.dialog1, null);
                    AlertDialog.Builder dlg = new AlertDialog.Builder(
                            GoodsInfoActivity.this);
                    ImageView ivPoster = (ImageView) dialogView.findViewById(R.id.ivPoster);
                    ivPoster.setImageResource(posterID[pos]);
                    dlg.setTitle("Glow up");
                    dlg.setView(dialogView);
                    dlg.setNegativeButton("Closed", null);
                    dlg.show();
                }
            });
            return imageView;
        }
    }
}
