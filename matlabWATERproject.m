clear all;close all;
a=arduino('COM7','uno');
pumpPin='D2';
sensorPin='A1';
buzzerPin='D5';
DrySoil=3.3;

M=-0.48;
B=1.5;
h=animatedline;   
ax=gca;                                  
ax.XGrid='on';
ax.YLim=[-0.1 5];
title('Wetness value vs time'); 
ylabel('wetness'); 
xlabel('Time [HH:MM:SS]');
stop=false;
startTime=datetime('now');

while ~stop
    voltage=readVoltage(a,'A1'); 
    t=datetime('now')-startTime;
Y=M*voltage+B 
    addpoints(h,datenum(t),Y);
    ax.XLim=datenum([t-seconds(15) t]);
    datetick('x','keeplimits')
    drawnow
    stop=readDigitalPin(a,'D6');
    
    voltageValue=readVoltage(a,sensorPin);
    
    if(voltage >= DrySoil)
        writeDigitalPin(a, pumpPin,1);
        writePWMDutyCycle(a,buzzerPin,0.3);
        disp("Watering")
    else
        writeDigitalPin(a,pumpPin,0);
        writePWMDutyCycle(a,buzzerPin,0);
        disp("Soil is wet")
    end
    disp(voltageValue);
end
