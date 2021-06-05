clear
close all

cam=webcam;
figure;

%for i=1:3 %계속반복하도록 고치기.
    
    %preview(cam)
    img_rgb=snapshot(cam);
    red = img_rgb(:,:,1); green = img_rgb(:,:,2); blue = img_rgb(:,:,3);
    
    %selectPixel = impixel(img_rgb); % rgb 범위 확정했으면 발표할 땐 빼기
    out = red>150 & red<200 & green>100 & green<135 & blue>70 & blue<110; % 조명따라 값 고치기
    out = imfill(out,'holes');
    imshow(out);
    hold on;
    
    stats = regionprops(out,'BoundingBox');  %boundingbox : [left, top, width, height]
    Bounds=cat(1,stats.BoundingBox);
    
    x=max(Bounds(:,1));
    y=min(Bounds(:,2));
    plot(x,y,'r*'); % 손끝이 가리키는 포인트
    pause(3); 

%end
