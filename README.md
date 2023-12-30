I show an automated plant watering system connected to the Arduino board monitoring the soil moisture.

## Objective: 
In this project we execute a MATLAB program where our dry plant gets water when it needs it, a signal is sent to our program
measuring the moisture of the soil from the soil moisture and the MOFSET board switches on its pump
to deliver water to our plant. When the plant is watered enough, the pump is turned off. It would do the
same when the plan reaches back to its dry condition and thus it goes in a loop.

## Procedure: 
We program our code in such a way so that it is able to receive signal when it is in dry state and needs water. A
buzzer sound is attached to depict that the signal is received and plant is being watered. We also attach
a live wetness value vs time graph to have a better look through into the system. So when the dry
soil>=3.3 V(collected by the moisture sensor), the pump starts watering the plant for 15 seconds and it
stops and again goes back to a loop when the soil returns back to its very dry state. 

## Results:
When the plant is dry the program runs and makes the pump push water into the dry soil for fifteen seconds till it
automatically gets turned off and wait for the plant to reach the dry soil voltage again taken by the
moisture sensor and does the likewise. 
The MATLAB code is written in proper way where the dry soil value was calculated to be 3.3V and implemented through the linear function y=M*voltage
+B where M depicted the slope between the dry and wet value and B the intercept. The pump waters
the plant for fifteen seconds.

## Plant and hardware setup:
<img width="215" alt="Screen Shot 2023-12-29 at 11 36 41 PM" src="https://github.com/Adazaiya/water-system/assets/120755280/3857ce4f-6c5e-4493-9f99-e308ac3077d7">

The Arduino Board is connected to my laptop. The plant is put nearby and the moisture sensor is dipped
into the soil. Both the moisture sensor and the MOFSET board connected with the pumps are inserted
into the A0 and D2 pins of the board respectively. 
