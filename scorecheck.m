note_num = 17;   %누를 건반 갯수 
size = 4 + (4*note_num);     %악보길이

figure;
gclef = imread('GClef.png');
image('CData',gclef,'XData',[0 2],'YData',[2.3 -2.3]);
hold on;


            do = imread('note_do.jpg'); %do
            image('CData',do,'XData',[4 6],'YData',[0.7 -3.3]);

            not = imread('note_1.jpg'); %re
            image('CData',not,'XData',[8 10],'YData',[1 -3]);

            not = imread('note_1.jpg'); %mi
            image('CData',not,'XData',[12 14],'YData',[1.5 -2.5]);

            not = imread('note_1.jpg'); %fa
            image('CData',not,'XData',[16 18],'YData',[2 -2]);

            not = imread('note_1.jpg'); %sol
            image('CData',not,'XData',[20 22],'YData',[2.5 -1.5]);

            not = imread('note_1.jpg'); %la
            image('CData',not,'XData',[24 26],'YData',[3 -1]);

            not = imread('note_3.jpg'); %ti
            image('CData',not,'XData',[28.4 29.6],'YData',[0.5 -3.5]);

            not = imread('note_3.jpg'); %do
            image('CData',not,'XData',[32.4 33.6],'YData',[1 -3]);

            
            not = imread('note_3.jpg'); %re
            image('CData',not,'XData',[36.4 37.6],'YData',[1.5 -2.5]);

            
            not = imread('note_3.jpg'); %mi
            image('CData',not,'XData',[40.4 41.6],'YData',[2 -2]);

            
            do_sharp = imread('notedo.jpg'); %dosharp
            image('CData',do_sharp,'XData',[43 46],'YData',[0.8 -3.8]);

            
            note_sharp = imread('note_2.jpg'); %resharp
            image('CData',note_sharp,'XData',[47 50],'YData',[1 -3.5]);

            
            note_sharp = imread('note_2.jpg'); %fasharp
            image('CData',note_sharp,'XData',[51 54],'YData',[2 -2.5]);
            
            note_sharp = imread('note_2.jpg'); %solsharp
            image('CData',note_sharp,'XData',[55 58],'YData',[2.5 -2]);

            note_sharp = imread('note_2.jpg'); %lasharp
            image('CData',note_sharp,'XData',[59 62],'YData',[3 -1.5]);
            

            not = imread('note_4.jpg'); % dosharp
            image('CData',not,'XData',[64 66],'YData',[1.5 -3]);


            not = imread('note_4.jpg'); %resharp
            image('CData',not,'XData',[68 70],'YData',[2 -2.5]);

%         comma = imread('comma.jpg');
%         image('CData',comma,'XData',[4*t+0.5 4*t+1.5],'YData',[1 -1]);




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

