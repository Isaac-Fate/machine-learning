
%% read image

img = imread("data/mountain.jpg");
imshow(img);
[R, G, B] = imsplit(img);

%% Hard Threshold for Singluar Values

[U, S, V] = svd(double(R));
s = diag(S);
scatter(1:size(s), s);
s_thres = 3000;
r = find(s > s_thres, 1, 'last');
R2 = U(:, 1:r) * S(1:r, 1:r) * V(:, 1:r)';
R2(R2 < 0) = 0;
R2(R2 > 255) = 255;
R2 = uint8(R2);

subplot(1, 2, 1);
imshow(R);
subplot(1, 2, 2);
imshow(R2);

disp(r);

%% optimal hard threshold

[U, S, V] = svd(double(R));
s = diag(S);
scatter(1:size(s), s);

s_thres = 2.858 * median(s);

r = find(s > s_thres, 1, 'last');
R2 = U(:, 1:r) * S(1:r, 1:r) * V(:, 1:r)';
R2(R2 < 0) = 0;
R2(R2 > 255) = 255;
R2 = uint8(R2);
imshow(R2);
disp(r);