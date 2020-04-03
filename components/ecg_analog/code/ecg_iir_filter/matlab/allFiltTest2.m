close all;
Fs=250;
Ts=1/Fs;
val = load('rec_13m.mat'); %t´500Hz original Fs
val_filt = load('rec_13m_filt.mat');
signal_orig_filt=resample(val_filt.val*10^-3*1000,1,2);
signal = val.val*10^-3;
signal = resample(signal,1,2); %resampled at 250Hz
signal = signal*1000;
t=linspace(0,(length(signal)-1)*Ts,length(signal));
filt_coeff_50notch= [1 -0.6188 1  1 -.6066 0.9607];
filt_scale_50notch=[0.9803 1];
filt_coeff_60notch= [1 -0.1257 1 1 -0.1234 0.9625];
filt_scale_60notch=[0.9813 1];
filt_coeff_HP=[1.0000   -2.0000    1.0000    1.0000   -1.9881    0.9886;
    1.0000   -2.0000    1.0000    1.0000   -1.9687    0.9692;
    1.0000   -2.0000         1    1.0000   -1.9577         0.9582];
filt_scale_HP=[0.9942
    0.9845
    0.9790
    1.0000];
filt_coeff_LP=[1.0000   2.0000    1.0000    1.0000   0.6588    0.4897;
    1.0000   2.0000    1.0000    1.0000   0.4866    0.0946];
filt_scale_LP=[0.5384
    0.3956
    1.0000];
v_n_50Hz = 0;
v_n1_50Hz = 0;
v_n2_50Hz = 0;
v_n_60Hz = 0;
v_n1_60Hz = 0;
v_n2_60Hz = 0;
v1_n_HP = 0;
v1_n1_HP  = 0;
v1_n2_HP  = 0;
v2_n_HP  = 0;
v2_n1_HP  = 0;
v2_n2_HP  = 0;
v3_n_HP  = 0;
v3_n1_HP  = 0;
v3_n2_HP  = 0;
v1_n_LP = 0;
v1_n1_LP  = 0;
v1_n2_LP  = 0;
v2_n_LP  = 0;
v2_n1_LP  = 0;
v2_n2_LP  = 0;
signal_filt=linspace(0,0,length(signal));
tic;
for i=1:length(signal)  
    v_n_50Hz=filt_scale_50notch(1)*signal(i)-filt_coeff_50notch(5)*v_n1_50Hz-filt_coeff_50notch(6)*v_n2_50Hz;
    buff = filt_coeff_50notch(1)*v_n_50Hz+filt_coeff_50notch(2)*v_n1_50Hz+filt_coeff_50notch(3)*v_n2_50Hz;
    v_n2_50Hz=v_n1_50Hz;
    v_n1_50Hz=v_n_50Hz;
    v_n_60Hz=filt_scale_60notch(1)*buff-filt_coeff_60notch(5)*v_n1_60Hz-filt_coeff_60notch(6)*v_n2_60Hz;
    buff = filt_coeff_60notch(1)*v_n_60Hz+filt_coeff_60notch(2)*v_n1_60Hz+filt_coeff_60notch(3)*v_n2_60Hz;
    v_n2_60Hz=v_n1_60Hz;
    v_n1_60Hz=v_n_60Hz;
    v1_n_HP=filt_scale_HP(1)*buff-filt_coeff_HP(1,5)*v1_n1_HP-filt_coeff_HP(1,6)*v1_n2_HP;
    buff= filt_coeff_HP(1,1)*v1_n_HP+filt_coeff_HP(1,2)*v1_n1_HP+filt_coeff_HP(1,3)*v1_n2_HP;
    v1_n2_HP=v1_n1_HP;
    v1_n1_HP=v1_n_HP;
    v2_n_HP=filt_scale_HP(2)*buff-filt_coeff_HP(2,5)*v2_n1_HP-filt_coeff_HP(2,6)*v2_n2_HP;
    buff = filt_coeff_HP(2,1)*v2_n_HP+filt_coeff_HP(2,2)*v2_n1_HP+filt_coeff_HP(2,3)*v2_n2_HP;
    v2_n2_HP=v2_n1_HP;
    v2_n1_HP=v2_n_HP;
    v3_n_HP=filt_scale_HP(3)*buff-filt_coeff_HP(3,5)*v3_n1_HP-filt_coeff_HP(3,6)*v3_n2_HP;
    buff = filt_coeff_HP(3,1)*v3_n_HP+filt_coeff_HP(3,2)*v3_n1_HP+filt_coeff_HP(3,3)*v3_n2_HP;
    v3_n2_HP=v3_n1_HP;
    v3_n1_HP=v3_n_HP;
    v1_n_LP=filt_scale_LP(1)*buff-filt_coeff_LP(1,5)*v1_n1_LP-filt_coeff_LP(1,6)*v1_n2_LP;
    signal_filt(i)= filt_coeff_LP(1,1)*v1_n_LP+filt_coeff_LP(1,2)*v1_n1_LP+filt_coeff_LP(1,3)*v1_n2_LP;
    v1_n2_LP=v1_n1_LP;
    v1_n1_LP=v1_n_LP;
    v2_n_LP=filt_scale_LP(2)*buff-filt_coeff_LP(2,5)*v2_n1_LP-filt_coeff_LP(2,6)*v2_n2_LP;
    %signal_filt(i) = filt_coeff_LP(2,1)*v2_n_LP+filt_coeff_LP(2,2)*v2_n1_LP+filt_coeff_LP(2,3)*v2_n2_LP;
    v2_n2_LP=v2_n1_LP;
    v2_n1_LP=v2_n_LP;
    
end
time_elapsed= toc;
time_elapsed=time_elapsed/length(signal)
plot(t,signal)
figure
plot(t,signal_filt)
figure
plot(t,signal)
hold on
plot(t,signal_filt)
figure
plot(signal_orig_filt)