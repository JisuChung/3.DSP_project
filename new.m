clear all;
close all; clc;
fs = 8000;

n = 0 : 1/fs : 0.3;
t = [ 277 311 369 415 466 554 622 ]; %¼¥

for y = 1:7
    snd = cos(2 * pi * y(t)* n);
    sound(snd, fs);
    pause (0.5);
end