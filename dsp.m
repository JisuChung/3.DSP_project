clear all; close all; clc;
note_num = 10;
size = 4 + (4*note_num);
% ������ 2 
% ���� 2 +2
% �� 1+3
% ��ǥ 2+1


% size = 10;
%�������ڸ�ǥ
gclef = imread('GClef.png');
image('CData',gclef,'XData',[0 2],'YData',[2.3 -2.3]);
hold on;

%��
do = imread('note_do.jpg');
image('CData',do,'XData',[4 6],'YData',[0.7 -3.3]);

%�� - �������� 0.5�� �ö󰡸� �ȴ�
note = imread('note_1.jpg');
image('CData',note,'XData',[8 10],'YData',[1 -3]);

%��#
do_sharp = imread('notedo.jpg');
image('CData',do_sharp,'XData',[11 14],'YData',[0.8 -3.8]);

%��#
note_sharp = imread('note_2.jpg');
image('CData',note_sharp,'XData',[15 18],'YData',[1 -3.5]);


%��ǥ
comma = imread('comma.jpg');
image('CData',comma,'XData',[20 22],'YData',[1 -1]);

%�� - �������� 0.5�� �ö󰡸� �ȴ�
note = imread('note_1.jpg');
image('CData',note,'XData',[24 26],'YData',[1.5 -2.5]);

%�� - �������� 0.5�� �ö󰡸� �ȴ�
note = imread('note_1.jpg');
image('CData',note,'XData',[28 30],'YData',[2 -2]);


%�� - �������� 0.5�� �ö󰡸� �ȴ�
note = imread('note_3.jpg');
image('CData',note,'XData',[32.4 33.6],'YData',[0.5 -3.5]);


%�ü� - �������� 0.5�� �ö󰡸� �ȴ�
note = imread('note_4.jpg');
image('CData',note,'XData',[36 38],'YData',[2 -2.5]);



% ������
for i = 1:5
    y = i-3;
    back = line([0,size],[y,y]);
    back.Color='black';
end

x1 = size-0.5;
back = line([x1,x1],[-2,2]);
back.Color='black';

x2 = size;
back = line([x2,x2],[-2.02,2.02]);
back.Color='black';
back.LineWidth=3;


% print('9by3DimensionsFigure','-dpng','-r0')
set(gcf,'position',[300 350 1000 200]);