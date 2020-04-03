%50HZ notch filter IIR direct form II transposed
% y(n) = b_0*v(n)+b_1*v(n-1)+b_2*v(n-2)
% v(n) = x(n)-a_1*v(n-1)-a_2*v(n-2)
close all;
Fs=250;
Ts=1/Fs;
t=linspace(0,500*Ts,501);
signal = sin(2*pi*20*t)+sin(2*pi*60*t);
filt_coeff= [1 -0.1257 1 1 -0.1234 0.9625];
filt_scale=[0.9813 1]
v_n = 0;
v_n1 = 0;
v_n2 = 0;
signal_filt=linspace(0,0,501);
for i=1:length(signal)  
    v_n=filt_scale(1)*signal(i)-filt_coeff(5)*v_n1-filt_coeff(6)*v_n2;
    signal_filt(i) = filt_coeff(1)*v_n+filt_coeff(2)*v_n1+filt_coeff(3)*v_n2;
    v_n2=v_n1;
    v_n1=v_n;
end


plot(t,signal)
figure
plot(t,signal_filt)
hold on
plot(t,sin(2*pi*20*t))