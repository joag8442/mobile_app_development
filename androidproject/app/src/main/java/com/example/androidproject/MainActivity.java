package com.example.androidproject;

import androidx.annotation.StringRes;
import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity  {
    private RadioGroup radioGroupRoom;
    private RadioGroup radioGroupBath;
    private RadioGroup radioGroupCost;
    private RadioButton radioButtonRoom;
    private RadioButton radioButtonBath;
    private RadioButton radioButtonCost;
    private Button button;
    private TextView textView;
    private TextView textResults;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);






        radioGroupRoom = findViewById(R.id.radioGroupRoom);



        final RadioGroup group = findViewById(R.id.radioGroupRoom);
        group.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(RadioGroup group, int checkedId) {

                TextView textView = findViewById(R.id.textResults);
                RadioGroup radioGroupRoom = findViewById(R.id.radioGroupRoom);
                int btnID = radioGroupRoom.getCheckedRadioButtonId();






                switch (btnID) {
                    case R.id.radioRoomOne:
                        {
                            textView.setText(R.string.onebedonebathlow);}
                        break;
                    case R.id.radioRoomTwo:
                    {
                            textView.setText(R.string.twobedtwobathlow);
                    }
                        break;
                    case R.id.radioBathOne:
                       {
                            textView.setText(R.string.threebedthreebathlow );}
                        break;
                    case R.id.radioBathTwo:
                    {
                            textView.setText(R.string.fourbedfourbathlow);
                        break;
                    }






            }












                }


            })


















    ;


}



}




