close; clear;
%function y = Translate(x)
a = imread('IMG_3776.jpg');
b = rgb2gray(a);
r = [];
t = [1 3 2; 1 0 50];
s = size(a);
for r_ind = 1 : s(1)
    for c_ind = 1 : s(2)
        x = [r_ind c_ind 1]';
        xd = t*x;
        r(xd(1),xd(2)) = a(r_ind, c_ind);
    end
end
r = uint8(r);
imshow(r);
