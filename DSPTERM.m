clear
close all

cam=webcam;%(2);  %ķ�ڴ� Ű��
figure;
note_num = 5;   %���� �ǹ� ���� 
size = 4 + (4*note_num);    %�Ǻ�����

x = zeros(1,note_num);
y = zeros(1,note_num);




for t=1:note_num    %���س��� Ƚ����ŭ �հ��� ��ġ ���
    figure;
    img_rgb=snapshot(cam);
    red = img_rgb(:,:,1); green = img_rgb(:,:,2); blue = img_rgb(:,:,3);
    %selectPixel = impixel(img_rgb); % rgb ���� Ȯ�������� ��ǥ�� �� ����
    out = red>150 & red<200 & green>100 & green<135 & blue>70 & blue<110;
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

end


%�������ڸ�ǥ
figure;
gclef = imread('GClef.png');
image('CData',gclef,'XData',[0 2],'YData',[2.3 -2.3]);
hold on;


inputnote = zeros(1, note_num);  %��ǥ ����

for t = 1 : note_num        %�ǹ� ��ġ
    if y(t) < 446 && y(t) > 299     %netural
        if x(t) < 75
            do = imread('note_do.jpg');
            image('CData',do,'XData',[4*t 4*t+2],'YData',[0.7 -3.3]);
        elseif x(t) < 138
            not = imread('note_1.jpg');
            image('CData',not,'XData',[4*t 4*t+2],'YData',[1 -3]);
        elseif x(t) < 198
            not = imread('note_1.jpg');
            image('CData',not,'XData',[4*t 4*t+2],'YData',[1.5 -2.5]);
        elseif x(t) < 259
            not = imread('note_1.jpg');
            image('CData',not,'XData',[4*t 4*t+2],'YData',[2 -2]);
        elseif x(t) < 320
            not = imread('note_1.jpg');
            image('CData',not,'XData',[4*t 4*t+2],'YData',[2.5 -1.5]);
        elseif x(t) < 380
            not = imread('note_1.jpg');
            image('CData',not,'XData',[4*t 4*t+2],'YData',[3 -1]);
        elseif x(t) < 444
            not = imread('note_3.jpg');
            image('CData',not,'XData',[4*t+0.4 4*t+1.6],'YData',[0.5 -3.5]);
        elseif x(t) <507
            not = imread('note_3.jpg');
            image('CData',not,'XData',[4*t+0.4 4*t+1.6],'YData',[1 -3]);
        elseif x(t) < 566
            not = imread('note_3.jpg');
            image('CData',not,'XData',[4*t+0.4 4*t+1.6],'YData',[1.5 -2.5]);
        elseif x(t) <627
            not = imread('note_3.jpg');
            image('CData',not,'XData',[4*t+0.4 4*t+1.6],'YData',[2 -2]);
        end
    elseif y(t) > 74 && y(t) < 299      %sharp
        if x(t) > 50 && x(t) < 100   %����58
            do_sharp = imread('notedo.jpg');
            image('CData',do_sharp,'XData',[4*t-1 4*t+2],'YData',[0.8 -3.8]);
        elseif x(t) > 111 && x(t) < 166  %����126
            note_sharp = imread('note_2.jpg');
            image('CData',note_sharp,'XData',[4*t-1 4*t+2],'YData',[1 -3.5]);
        elseif x(t) > 229 && x(t) < 280 %�ļ�260
            note_sharp = imread('note_2.jpg');
            image('CData',note_sharp,'XData',[4*t-1 4*t+2],'YData',[2 -2.5]);
        elseif x(t) > 294 && x(t) < 342 %�ּ�327
            note_sharp = imread('note_2.jpg');
            image('CData',note_sharp,'XData',[4*t-1 4*t+2],'YData',[2.5 -2]);
        elseif x(t) > 350 && x(t) < 402 %��395
            note_sharp = imread('note_2.jpg');
            image('CData',note_sharp,'XData',[4*t-1 4*t+2],'YData',[3 -1.5]);
        elseif x(t) > 477 && x(t) < 527 %����531
            not = imread('note_4.jpg');
            image('CData',not,'XData',[4*t 4*t+2],'YData',[1.5 -3]);
        elseif x(t) > 540 && x(t) < 588 %����600
            not = imread('note_4.jpg');
            image('CData',not,'XData',[4*t 4*t+2],'YData',[2 -2.5]);
        end
    end
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

