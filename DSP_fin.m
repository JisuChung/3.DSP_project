clear
close all

cam=webcam(2);  %ķ�ڴ� Ű��
figure;
note_num = 5;   %���� �ǹ� ���� 
size = 4 + (4*note_num);    %�Ǻ�����

x = zeros(1,note_num);
y = zeros(1,note_num);

%https://itnhappy.tistory.com/138
fs = 8000;
tt = 0 : 1/fs : 0.3;
f = [ 260 294 330 349 392 440 495 524 587 659 ]; %�Ϲ�
f1 = [ 277 311 369 415 466 554 622]; %��
% sound = cos(2 * pi * f(1)* tt);
snd = zeros(1,10);
snds = zeros(1,7);

for w = 1:10
    snd(w) = cos(2 * pi * f(w)* tt);
end
for s = 1:7
    snds(s) = cos(2 * pi * f1(s)* tt);
end
tt = 0 : 1/fs : 0.5; 
% 
% sound = cos(2 * pi * f1(i)* tt);
% sound(sound, fs);



for t=1:note_num    %���س��� Ƚ����ŭ �հ��� ��ġ ���
    figure;
    %preview(cam)
    img_rgb=snapshot(cam);
    red = img_rgb(:,:,1); green = img_rgb(:,:,2); blue = img_rgb(:,:,3);
    
    %selectPixel = impixel(img_rgb); % rgb ���� Ȯ�������� ��ǥ�� �� ����
    out = red>150 & red<200 & green>100 & green<135 & blue>70 & blue<110;
    %out= red>100 & red<135 & green>100 & green<140 & blue>175 & blue<195;
    %out = red>90 & red<120 & green>50 & green<90 & blue>40 & blue<80; % ������� �� ��ġ��
    out = imfill(out,'holes');
    out = bwmorph(out,'dilate',1);
    imshow(out);
    hold on;
    
    stats = regionprops(out,'BoundingBox');  %boundingbox : [left, top, width, height]
    center = regionprops(out, 'centroid');
    Bounds=cat(1,stats.BoundingBox);
    centroids = cat(1,center.Centroid);
    x(t)=median(centroids(:,1));
    y(t)=min(Bounds(:,2));
    plot(x(t),y(t),'r*'); % �ճ��� ����Ű�� ����Ʈ
    pause(2); 
%     holdoff;

end


%�������ڸ�ǥ
figure;
gclef = imread('GClef.png');
image('CData',gclef,'XData',[0 2],'YData',[2.3 -2.3]);
hold on;

%������ �� x640, y480 & ���� �� 1,1
% ��ǥ 0
% �� 1/���� 11/�� 2/���� 22/�� 3/�� 4/�ļ� 44/�� 5/�ּ� 55/
% �� 6/�� 66/�� 7/�� 8/���� 88/�� 9/���� 99/�� 100--�ϳ��� 35

inputnote = zeros(1, note_num);  %��ǥ ����

for t = 1 : note_num        %�ǹ� ��ġ
    if y(t) < 446 && y(t) > 299     %netural
        if x(t) < 75
            %             inputnote(t) = 1;   %��
            
            do = imread('note_do.jpg');
            image('CData',do,'XData',[4*t 4*t+2],'YData',[0.7 -3.3]);
%             sound = cos(2 * pi * f(1)* tt);
            sound(snd(1), fs);
        elseif x(t) < 138
            %             inputnote(t) = 2;   %��
            
            not = imread('note_1.jpg');
            image('CData',not,'XData',[4*t 4*t+2],'YData',[1 -3]);
%             sound = cos(2 * pi * f(2)* tt);
            sound(snd(2), fs);
        elseif x(t) < 198
            %             inputnote(t) = 3;   %��
            
            not = imread('note_1.jpg');
            image('CData',not,'XData',[4*t 4*t+2],'YData',[1.5 -2.5]);
%             sound = cos(2 * pi * f(3)* tt);
            sound(snd(3), fs);
        elseif x(t) < 259
            %             inputnote(t) = 4;   %��
            
            not = imread('note_1.jpg');
            image('CData',not,'XData',[4*t 4*t+2],'YData',[2 -2]);
%             sound = cos(2 * pi * f(4)* tt);
            sound(snd(4), fs);
        elseif x(t) < 320
            %             inputnote(t) = 5;   %��
            
            not = imread('note_1.jpg');
            image('CData',not,'XData',[4*t 4*t+2],'YData',[2.5 -1.5]);
%             sound = cos(2 * pi * f(5)* tt);
            sound(snd(5), fs);
        elseif x(t) < 380
            %             inputnote(t) = 6;   %��
            
            not = imread('note_1.jpg');
            image('CData',not,'XData',[4*t 4*t+2],'YData',[3 -1]);
%             sound = cos(2 * pi * f(6)* tt);
            sound(snd(6), fs);
        elseif x(t) < 444
            %             inputnote(t) = 7;   %��
            
            not = imread('note_3.jpg');
            image('CData',not,'XData',[4*t+0.4 4*t+1.6],'YData',[0.5 -3.5]);
%             sound = cos(2 * pi * f(7)* tt);
            sound(snd(7), fs);
        elseif x(t) <507
            %             inputnote(t) = 8;   %��2
            
            not = imread('note_3.jpg');
            image('CData',not,'XData',[4*t+0.4 4*t+1.6],'YData',[1 -3]);
%             sound = cos(2 * pi * f(8)* tt);
            sound(snd(8), fs);
        elseif x(t) < 566
            %             inputnote(t) = 9;   %��2
            
            not = imread('note_3.jpg');
            image('CData',not,'XData',[4*t+0.4 4*t+1.6],'YData',[1.5 -2.5]);
%             sound = cos(2 * pi * f(9)* tt);
            sound(snd(9), fs);
        elseif x(t) <627
            %             inputnote(t) = 100; %��2
            
            not = imread('note_3.jpg');
            image('CData',not,'XData',[4*t+0.4 4*t+1.6],'YData',[2 -2]);
%             sound = cos(2 * pi * f(10)* tt);
            sound(snd(10), fs);
        end
    elseif y(t) > 74 && y(t) < 299      %sharp
        if x(t) > 50 && x(t) < 100   %����58
            %             inputnote(t) = 11;
            
            do_sharp = imread('notedo.jpg');
            image('CData',do_sharp,'XData',[4*t-1 4*t+2],'YData',[0.8 -3.8]);
%             sound = cos(2 * pi * f1(1)* tt);
            sound(snds(1), fs);
        elseif x(t) > 111 && x(t) < 166  %����126
            %             inputnote(t) = 22;
            
            note_sharp = imread('note_2.jpg');
            image('CData',note_sharp,'XData',[4*t-1 4*t+2],'YData',[1 -3.5]);
%             sound = cos(2 * pi * f1(2)* tt);
%             sound(sound, fs);
            sound(snds(2), fs);
        elseif x(t) > 229 && x(t) < 280 %�ļ�260
            %             inputnote(t) = 44;
            
            note_sharp = imread('note_2.jpg');
            image('CData',note_sharp,'XData',[4*t-1 4*t+2],'YData',[2 -2.5]);
%             sound = cos(2 * pi * f1(3)* tt);
%             sound(sound, fs);
            sound(snds(3), fs);
        elseif x(t) > 294 && x(t) < 342 %�ּ�327
            %             inputnote(t) = 55;
            
            note_sharp = imread('note_2.jpg');
            image('CData',note_sharp,'XData',[4*t-1 4*t+2],'YData',[2.5 -2]);
%             sound = cos(2 * pi * f1(4)* tt);
%             sound(sound, fs);
            sound(snds(4), fs);
        elseif x(t) > 350 && x(t) < 402 %��395
            %             inputnote(t) = 66;
            
            note_sharp = imread('note_2.jpg');
            image('CData',note_sharp,'XData',[4*t-1 4*t+2],'YData',[3 -1.5]);
%             sound = cos(2 * pi * f1(5)* tt);
%             sound(sound, fs);
            sound(snds(5), fs);
        elseif x(t) > 477 && x(t) < 527 %����531
            %             inputnote(t) = 88;
            
            not = imread('note_4.jpg');
            image('CData',not,'XData',[4*t 4*t+2],'YData',[1.5 -3]);
%             sound = cos(2 * pi * f1(6)* tt);
%             sound(sound, fs);
            sound(snds(6), fs);
        elseif x(t) > 540 && x(t) < 588 %����600
            %             inputnote(t) = 99;
            
            not = imread('note_4.jpg');
            image('CData',not,'XData',[4*t 4*t+2],'YData',[2 -2.5]);
%             sound = cos(2 * pi * f1(7)* tt);
%             sound(sound, fs);
            sound(snds(7), fs);
        else
%             inputnote(t) = 0;   %��ǥ
            comma = imread('comma.jpg');
            image('CData',comma,'XData',[4*t+0.5 4*t+1.5],'YData',[1 -1]);
        end  
    else
%         inputnote(t) = 0;       %��ǥ
        comma = imread('comma.jpg');
        image('CData',comma,'XData',[4*t+0.5 4*t+1.5],'YData',[1 -1]);
    end 
    pause (0.5);
end


% ������
for i = 1:5
    y = i-3;
    back = line([0,size],[y,y]);
    back.Color='black';
end

% ��������
x1 = size-0.5;
back = line([x1,x1],[-2,2]);
back.Color='black';

x2 = size;
back = line([x2,x2],[-2.02,2.02]);
back.Color='black';
back.LineWidth=3;


% figure â ũ�� ����
set(gcf,'position',[300 350 1000 200]);

