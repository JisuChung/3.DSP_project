clear
close all
% 
% cam=webcam(2);  %캠코더 키기
% figure;
note_num = 5;   %누를 건반 갯수 
size = 4 + (4*note_num);    %악보길이

x = zeros(1,note_num);
y = zeros(1,note_num);




%높은음자리표
figure;
gclef = imread('GClef.png');
image('CData',gclef,'XData',[0 2],'YData',[2.3 -2.3]);
hold on;

%오른쪽 밑 x640, y480 & 왼쪽 위 1,1
% 쉼표 0
% 도 1/도샵 11/레 2/레샵 22/미 3/파 4/파샵 44/솔 5/솔샵 55/
% 라 6/라샵 66/시 7/도 8/도샵 88/레 9/레샵 99/미 100--하나에 35

% 오선지
for i = 1:5
    y = i-3;
    back = line([0,size],[y,y]);
    back.Color='black';
end

% 끝세로줄
x1 = size-0.5;
back = line([x1,x1],[-2,2]);
back.Color='black';

x2 = size;
back = line([x2,x2],[-2.02,2.02]);
back.Color='black';
back.LineWidth=3;


% figure 창 크기 조절
set(gcf,'position',[300 350 1000 200]);

