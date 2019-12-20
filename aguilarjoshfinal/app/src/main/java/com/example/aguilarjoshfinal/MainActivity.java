package com.example.aguilarjoshfinal;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ToggleButton;

public class MainActivity extends AppCompatActivity {
    private TextView burritoSelection;
    private ToggleButton toggle;
    private Spinner location;
    private RadioGroup entree;
    private CheckBox cheeseCheck;
    private CheckBox creamCheck;
    private CheckBox salsaCheck;
    private CheckBox guacCheck;
    private Switch glutenSwitch;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        //get views
        burritoSelection = findViewById(R.id.message);
        toggle = findViewById(R.id.meatButton);
        location = findViewById(R.id.spinner);
        entree = findViewById(R.id.radioGroup);
        cheeseCheck = findViewById(R.id.checkCheese);
        creamCheck = findViewById(R.id.checkCream);
        salsaCheck = findViewById(R.id.checkSalsa);
        guacCheck = findViewById(R.id.checkGuac);
        glutenSwitch = findViewById(R.id.glutenSwitch);

        final RadioGroup group = findViewById(R.id.radioGroup);
        group.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(RadioGroup group, int checkedId) {

                TextView burritoSelection = findViewById(R.id.message);
                RadioGroup entree = findViewById(R.id.radioGroup);
                int btnID = entree.getCheckedRadioButtonId();

                switch (btnID) {
                    case R.id.burritoButton:
                    {
                        burritoSelection.setText(R.string.results);
                }break;
                    case R.id.tacoButton:
                    {
                        burritoSelection.setText(R.string.result);
                    }



            }

            }
        });


   /* --- public void buildBurrito(View view) {



        //toggle button
        boolean meat = toggle.isChecked();

        //spinner
        String store = String.valueOf(location.getSelectedItemId());

        //radio buttons
        int type = entree.getCheckedRadioButtonId();

        //check boxes
        Boolean cheese = cheeseCheck.isChecked();
        Boolean salsa = salsaCheck.isChecked();
        Boolean guac = guacCheck.isChecked();
        Boolean cream = creamCheck.isChecked();

        //build burrito
        String entreeChoice;
        String meatChoice;
        String locationChoice;
        String salsaChoice;

        //check radio buttons
        if (type == R.id.tacoButton) {
            entreeChoice = "taco";
        }
        else {
            if (cheese) {
                if (type == R.id.burritoButton) {
                    entreeChoice = "@string/results";
                }
                else {
                    entreeChoice = "taco";
                }


            }
        }
        if (cheese && salsa && guac && cream);{
            salsaChoice = "cheese, salsa, sour cream, and guacamole";
        }
        if (cheese && salsa && guac);{
            salsaChoice = "cheese, salsa, and guacamole";
        }
        if (cheese && salsa); {
            salsaChoice = "cheese, and salsa";
        }
        if (cheese); {
            salsaChoice = "cheese";
        }


            burritoSelection.setText(R.string.results);
        } ---*/

    }}



