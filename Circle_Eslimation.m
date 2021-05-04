clc; close all; clear;

imgRGB = imread("daireler1.png");
imshow(imgRGB);

imgGray = rgb2gray(imgRGB);
imshow(imgGray);

[merkezler, yaricaplar] = imfindcircles(imgRGB, [20 25], 'ObjectPolarity', 'dark', 'Sensitivity', 0.92);

imshow(imgRGB);
viscircles(merkezler, yaricaplar);

[merkezler, yaricaplar] = imfindcircles(imgRGB, [20 25], 'ObjectPolarity', 'dark', 'Sensitivity', 0.92, 'Method', 'TwoStage');

viscircles(merkezler, yaricaplar);

[merkezlerParlak, yaricaplarParlak, parlaklikDegerleri] = imfindcircles(imgRGB, [20 25], 'ObjectPolarity',...
    'bright', 'Sensitivity', 0.92, 'EdgeThreshold', 0.1 );
viscircles(merkezlerParlak, yaricaplarParlak, 'Color', 'b');