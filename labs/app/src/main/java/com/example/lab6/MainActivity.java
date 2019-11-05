package com.example.lab6;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }



    public void newSubscriber(View view) {
        TextView nameText = findViewById(R.id.message);
        EditText name = findViewById(R.id.editText);
        String nameValue = name.getText().toString();
        nameText.setText("Thank you " + nameValue + " for subscribing!");
        ImageView logo = findViewById(R.id.imageView);
        logo.setImageResource(R.drawable.logo);
    }
}
