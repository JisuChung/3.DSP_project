clear
close all
% 
% cam=webcam(2);  %ķ�ڴ� Ű��
% figure;
note_num = 5;   %���� �ǹ� ���� 
size = 4 + (4*note_num);    %�Ǻ�����

x = zeros(1,note_num);
y = zeros(1,note_num);




%�������ڸ�ǥ
figure;
gclef = imread('GClef.png');
image('CData',gclef,'XData',[0 2],'YData',[2.3 -2.3]);
hold on;

%������ �� x640, y480 & ���� �� 1,1
% ��ǥ 0
% �� 1/���� 11/�� 2/���� 22/�� 3/�� 4/�ļ� 44/�� 5/�ּ� 55/
% �� 6/�� 66/�� 7/�� 8/���� 88/�� 9/���� 99/�� 100--�ϳ��� 35

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

