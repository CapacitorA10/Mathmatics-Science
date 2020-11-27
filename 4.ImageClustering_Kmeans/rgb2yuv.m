function YUV=rgb2yuv(RGB)
R = RGB(:,:,1);
G = RGB(:,:,2);
B = RGB(:,:,3);

Y = (0.299 * R) + (0.587 * G) + (0.114 * B);
U = 0.492*(B-Y); %-0.14713*R - 0.28886*G + 0.436*B
V = 0.877*(R-Y); %0.615*R - 0.51499*G - 0.10001*B
YUV(:,:,1) = Y;
YUV(:,:,2) = U;
YUV(:,:,3) = V;
end