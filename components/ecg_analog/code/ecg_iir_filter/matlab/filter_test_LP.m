
close all;
Fs=250;
Ts=1/Fs;
load('pulse.mat');
signal=pulse;
t=linspace(0,(length(signal)-1)*Ts,length(signal));
load('LP_coeff.mat');
filt_coeff= SOS;
filt_scale= G;
sections = length(filt_coeff(:,1));
v_n = zeros(1,sections);
v_n1 = zeros(1,sections);
v_n2 = zeros(1,sections);
signal_filt=linspace(0,0,length(signal));
buff= zeros(1,sections);
for i=1:length(signal) 
    buff = signal(i);
    for j=1:sections
        
        v_n(j)=filt_scale(j)*buff-filt_coeff(j,5)*v_n1(j)-filt_coeff(j,6)*v_n2(j);
        buff = filt_coeff(j,1)*v_n(j)+filt_coeff(j,2)*v_n1(j)+filt_coeff(j,3)*v_n2(j);
        v_n2(j)=v_n1(j);
        v_n1(j)=v_n(j);
    end
    signal_filt(i)=buff;
end

figure
plot(t,signal)
hold on
plot(t,signal_filt)



L=length(signal);
Y = fft(signal);
T=Ts;
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
figure
f = Fs*(0:(L/2))/L;
plot(f,P1)
hold on
L=length(signal_filt);
Y = fft(signal_filt);
T=Ts;
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(L/2))/L;
plot(f,P1)