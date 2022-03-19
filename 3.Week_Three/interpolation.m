%% Interpolation
clc;
clear all;
close all;

rng(0);
t = [0:10];
y = randn(1, length(t));

t_interp = [0:1/100:10];
y_linear = interp1(t, y, t_interp, 'linear');
y_nearest = interp1(t, y, t_interp, 'nearest');
y_cubic = interp1(t, y, t_interp, 'cubic');
y_makima = interp1(t, y, t_interp, 'makima');
y_pchip = interp1(t, y, t_interp, 'pchip');
y_spline = interp1(t, y, t_interp, 'spline');

figure(1)
subplot(2,3,1)
stem(t,y,'o')
title('linear interpolation')
hold on;
stem(t_interp,y_linear)

subplot(2,3,2)
plot(t,y,'o')
title('nearest interpolation')
hold on;
plot(t_interp,y_nearest)

subplot(2,3,3)
plot(t,y,'o')
title('cubic interpolation')
hold on;
plot(t_interp,y_cubic)

subplot(2,3,4)
plot(t,y,'o')
title('makima interpolation')
hold on;
plot(t_interp,y_makima)

subplot(2,3,5)
plot(t,y,'o')
title('pchip interpolation')
hold on;
plot(t_interp,y_pchip)

subplot(2,3,6)
plot(t,y,'o')
title('spline interpolation')
hold on;
plot(t_interp,y_spline)


Fs = 1000;
t = [1:0.001:2];
f1 = 10;
f2 = 4;
sine_wave = cos(2*pi*f1*t) + cos(2*pi*f2*t);
[sorted_values, idx] = sort(rand(1, length(sine_wave)));
idx = idx(1:floor(0.1*length(sine_wave)));

figure(2)
plot(t, sine_wave)
hold on
plot(t(idx), sine_wave(idx), 'o')
sine_interp = interp1(t(idx), sine_wave(idx), t, 'spline');
plot(t, sine_interp, '--g')
legend('real signal', 'samples', 'interpolated approximation')

%% change frequency to become audible
%sound(sine_wave, Fs)
%sound(sine_interp, Fs)

