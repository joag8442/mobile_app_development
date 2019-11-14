package com.example.multipleinputs;

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
        EditText name = findViewById(R.id.contact);
        EditText email = findViewById(R.id.email);
        EditText phone = findViewById(R.id.phone);
        String nameValue = name.getText().toString();
        String emailValue = email.getText().toString();
        String phoneValue = phone.getText().toString();
        nameText.setText("Thanks " + nameValue + " for subscribing! You will recieve an email at " + emailValue + " and a text at " + phoneValue + "!");
        ImageView logo = findViewById(R.id.imageView);
        logo.setImageResource(R.drawable.logo);

    }
}
