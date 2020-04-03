
close all;
Fs=250;
Ts=1/Fs;
load('pulse.mat');
signal=pulse;
t=linspace(0,(length(signal)-1)*Ts,length(signal));
load('LP_coeff.mat');
filt_coeff_LP= SOS;
filt_scale_LP= G;
load('HP_coeff.mat');
filt_coeff_HP= SOS;
filt_scale_HP= G;
load('notch50Hz_coeff.mat');
filt_coeff_50Hz= SOS;
filt_scale_50Hz= G;
sections_LP = length(filt_coeff_LP(:,1));
v_n_LP = zeros(1,sections_LP);
v_n1_LP = zeros(1,sections_LP);
v_n2_LP = zeros(1,sections_LP);
sections_HP = length(filt_coeff_HP(:,1));
v_n_HP = zeros(1,sections_HP);
v_n1_HP = zeros(1,sections_HP);
v_n2_HP = zeros(1,sections_HP);
sections_50Hz= length(filt_coeff_50Hz(:,1));
v_n_50Hz = zeros(1,sections_50Hz);
v_n1_50Hz = zeros(1,sections_50Hz);
v_n2_50Hz = zeros(1,sections_50Hz);
signal_filt=linspace(0,0,length(signal));

tic;
for i=1:length(signal) 
    buff = signal(i);
    for j=1:sections_LP
        v_n_LP(j)=filt_scale_LP(j)*buff-filt_coeff_LP(j,5)*v_n1_LP(j)-filt_coeff_LP(j,6)*v_n2_LP(j);
        buff = filt_coeff_LP(j,1)*v_n_LP(j)+filt_coeff_LP(j,2)*v_n1_LP(j)+filt_coeff_LP(j,3)*v_n2_LP(j);
        v_n2_LP(j)=v_n1_LP(j);
        v_n1_LP(j)=v_n_LP(j);
    end
    for j=1:sections_HP
        v_n_HP(j)=filt_scale_HP(j)*buff-filt_coeff_HP(j,5)*v_n1_HP(j)-filt_coeff_HP(j,6)*v_n2_HP(j);
        buff = filt_coeff_HP(j,1)*v_n_HP(j)+filt_coeff_HP(j,2)*v_n1_HP(j)+filt_coeff_HP(j,3)*v_n2_HP(j);
        v_n2_HP(j)=v_n1_HP(j);
        v_n1_HP(j)=v_n_HP(j);
    end
    for j=1:sections_50Hz
        v_n_50Hz(j)=filt_scale_50Hz(j)*buff-filt_coeff_50Hz(j,5)*v_n1_50Hz(j)-filt_coeff_50Hz(j,6)*v_n2_50Hz(j);
        buff = filt_coeff_50Hz(j,1)*v_n_50Hz(j)+filt_coeff_50Hz(j,2)*v_n1_50Hz(j)+filt_coeff_50Hz(j,3)*v_n2_50Hz(j);
        v_n2_50Hz(j)=v_n1_50Hz(j);
        v_n1_50Hz(j)=v_n_50Hz(j);
    end
    signal_filt(i)=buff;
end
timeDuration=toc/length(signal)*10^6;
fprintf("%d us", timeDuration)
figure
plot(t,signal)
hold on
plot(t,signal_filt)



L=length(signal);
Y = fft(signal);
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