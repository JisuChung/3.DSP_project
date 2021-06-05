fs = 8000;

tt = 0 : 1/fs : 0.3;
f = [ 260 294 330 349 392 440 495 524 587 659 ]; %¿œπ›
f1 = [ 277 311 369 415 466 554 622]; %º•
for i = 1: 10
    xx = cos(2 * pi * f(i)* tt);
    sound(xx, fs);
    pause (0.5);
end

for t = 1:7
    snd = cos(2 * pi * f1(t)* tt);
    sound(snd, fs);
    pause (0.5);
end




