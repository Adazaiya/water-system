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

<img width="118" alt="Screen Shot 2023-12-29 at 11 42 26 PM" src="https://github.com/Adazaiya/water-system/assets/120755280/d1aa44b8-2149-41b7-aa06-f13c80b02f75">


I have dipped the pump into water. 


## Flowchart
<img width="210" alt="Screen Shot 2023-12-29 at 11 44 11 PM" src="https://github.com/Adazaiya/water-system/assets/120755280/8e9f727d-2710-46bd-bda3-653794c679fa">


## Graph of Soil Moisture:
<img width="424" alt="Screen Shot 2023-12-29 at 11 45 42 PM" src="https://github.com/Adazaiya/water-system/assets/120755280/81c786e7-fd5b-4e9b-983c-4451b28a141c">

We can see that the line raises when the soil is getting moistured. This is a live graph which indicates the
state of our soil when it gets to its very wet state from dry state, to have a better understanding what is
happening inside. We represented it in linear graph formula where the code will run with the basis of
the following function call:


function(y)=wetnessvalue[voltage]


M=-0.48


B=1.5


y(voltage)=M*voltage+B




where M includes the slope when,


in very dry state=0 and M=(0-1)/dry-wet = -0.48


in very wet state=1 
