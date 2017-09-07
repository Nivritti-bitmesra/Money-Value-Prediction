clc
clear 
%% Load Data
Data=(importdata('Data.txt'))';
TrData=Data(1:525); 
TeData=Data(526:750);
%%
w=rand(1,25);
itr=10;
%%
for i=1:520
%     b=TrDate(i:i+5);
%   for k=1:itr
  % expand TrData(i)
    a(1)=TrData(i);
    a(2)=sin(pi*TrData(i));
    a(3)=sin(2*pi*TrData(i));
    a(4)=cos(pi*TrData(i));
    a(5)=cos(2*pi*TrData(i));
  % expand TrData(i+1)
    a(6)=TrData(i+1);
    a(7)=sin(pi*TrData(i+1));
    a(8)=sin(2*pi*TrData(i+1));
    a(9)=cos(pi*TrData(i+1));
    a(10)=cos(2*pi*TrData(i+1));
  % expand TrData(i+2)
    a(11)=TrData(i+2);
    a(12)=sin(pi*TrData(i+2));
    a(13)=sin(2*pi*TrData(i+2));
    a(14)=cos(pi*TrData(i+2));
    a(15)=cos(2*pi*TrData(i+2));
  % expand TrData(i+3)
    a(16)=TrData(i+3);
    a(17)=sin(pi*TrData(i+3));
    a(18)=sin(2*pi*TrData(i+3));
    a(19)=cos(pi*TrData(i+3));
    a(20)=cos(2*pi*TrData(i+3));
  % expand TrData(i+4)
    a(21)=TrData(i+4);
    a(22)=sin(pi*TrData(i+4));
    a(23)=sin(2*pi*TrData(i+4));
    a(24)=cos(pi*TrData(i+4));
    a(25)=cos(2*pi*TrData(i+4));
  t=TrData(i+5);
  o(i)=max(a)*(logsig((a/max(a))*w'));
  e=t-o(i); 
  for k=1:10   
  for j=1:25
      w(j)=w(j)+2*0.1*e*a(j); 
   end
  end
end
%% Predict Now
for i=1:220
%     b=TrDate(i:i+5);
%   for k=1:itr
  % expand TrData(i)
    a(1)=TeData(i);
    a(2)=sin(pi*TeData(i));
    a(3)=sin(2*pi*TeData(i));
    a(4)=cos(pi*TeData(i));
    a(5)=cos(2*pi*TeData(i));
  % expand TrData(i+1)
    a(6)=TeData(i+1);
    a(7)=sin(pi*TeData(i+1));
    a(8)=sin(2*pi*TeData(i+1));
    a(9)=cos(pi*TeData(i+1));
    a(10)=cos(2*pi*TeData(i+1));
  % expand TrData(i+2)
    a(11)=TeData(i+2);
    a(12)=sin(pi*TeData(i+2));
    a(13)=sin(2*pi*TeData(i+2));
    a(14)=cos(pi*TeData(i+2));
    a(15)=cos(2*pi*TeData(i+2));
  % expand TrData(i+3)
    a(16)=TeData(i+3);
    a(17)=sin(pi*TeData(i+3));
    a(18)=sin(2*pi*TeData(i+3));
    a(19)=cos(pi*TeData(i+3));
    a(20)=cos(2*pi*TeData(i+3));
  % expand TrData(i+4)
    a(21)=TeData(i+4);
    a(22)=sin(pi*TeData(i+4));
    a(23)=sin(2*pi*TeData(i+4));
    a(24)=cos(pi*TeData(i+4));
    a(25)=cos(2*pi*TeData(i+4));
p(i)=max(a)*(logsig((a/max(a))*w'));
end
plot(TeData);
hold on
plot(p,'--r');
legend('Actual Data','Predicted Data')
title('Prediction of Higest Money Value in a week (Using FLANN)');



