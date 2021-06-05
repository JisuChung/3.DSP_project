clear
close all

cam=webcam;
figure;

%for i=1:3 %��ӹݺ��ϵ��� ��ġ��.
    
    %preview(cam)
    img_rgb=snapshot(cam);
    red = img_rgb(:,:,1); green = img_rgb(:,:,2); blue = img_rgb(:,:,3);
    
    %selectPixel = impixel(img_rgb); % rgb ���� Ȯ�������� ��ǥ�� �� ����
    out = red>150 & red<200 & green>100 & green<135 & blue>70 & blue<110; % ������� �� ��ġ��
    out = imfill(out,'holes');
    imshow(out);
    hold on;
    
    stats = regionprops(out,'BoundingBox');  %boundingbox : [left, top, width, height]
    Bounds=cat(1,stats.BoundingBox);
    
    x=max(Bounds(:,1));
    y=min(Bounds(:,2));
    plot(x,y,'r*'); % �ճ��� ����Ű�� ����Ʈ
    pause(3); 

%end
