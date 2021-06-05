clear
close all

cam=webcam(2);
figure;
x = zeros(1,3);
y = zeros(1,3);

for t=1:3 %��ӹݺ��ϵ��� ��ġ��.
    
    %preview(cam)
    img_rgb=snapshot(cam);
    red = img_rgb(:,:,1); green = img_rgb(:,:,2); blue = img_rgb(:,:,3);
    
    %selectPixel = impixel(img_rgb); % rgb ���� Ȯ�������� ��ǥ�� �� ����
    out = red>90 & red<120 & green>50 & green<90 & blue>40 & blue<80; % ������� �� ��ġ��
    out = imfill(out,'holes');
    imshow(out);
    hold on;
    
    stats = regionprops(out,'BoundingBox');  %boundingbox : [left, top, width, height]
    Bounds=cat(1,stats.BoundingBox);
    
    x(t)=max(Bounds(:,1));
    y(t)=min(Bounds(:,2));
    plot(x(t),y(t),'r*'); % �ճ��� ����Ű�� ����Ʈ
    pause(1); 
    Bounds = 0;
    holdoff;

end