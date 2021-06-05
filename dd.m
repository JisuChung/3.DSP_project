clear
close all

cam=webcam(2);
figure;
x = zeros(1,3);
y = zeros(1,3);

for t=1:3 %계속반복하도록 고치기.
    
    %preview(cam)
    img_rgb=snapshot(cam);
    red = img_rgb(:,:,1); green = img_rgb(:,:,2); blue = img_rgb(:,:,3);
    
    %selectPixel = impixel(img_rgb); % rgb 범위 확정했으면 발표할 땐 빼기
    out = red>90 & red<120 & green>50 & green<90 & blue>40 & blue<80; % 조명따라 값 고치기
    out = imfill(out,'holes');
    imshow(out);
    hold on;
    
    stats = regionprops(out,'BoundingBox');  %boundingbox : [left, top, width, height]
    Bounds=cat(1,stats.BoundingBox);
    
    x(t)=max(Bounds(:,1));
    y(t)=min(Bounds(:,2));
    plot(x(t),y(t),'r*'); % 손끝이 가리키는 포인트
    pause(1); 
    Bounds = 0;
    holdoff;

end