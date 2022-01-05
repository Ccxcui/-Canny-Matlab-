clear all;
clc;
%��ȡ��Ƭ
peppers = imread('../peppers.png');
peppers = rgb2gray(peppers);
figure(1);
subplot(321),
imshow(peppers);

%% ��matlab��װ��������������Ե���
%תΪuint8��������Ϊ��װ�������ص��Ƕ�ֵͼ
%��Ҫ�Ѷ�ֵͼ��1תΪ255����Ϊ�˺�openCV�ı�Ե��⺯������ֵ��Ӧ
Mcanny = edge(peppers,'canny');
Mcanny = uint8(Mcanny);
Mcanny(Mcanny == 1) = 255;
subplot(322),
imshow(Mcanny);

sobel = edge(peppers,'sobel');
sobel = uint8(sobel);
sobel(sobel == 1) = 255;
subplot(323),
imshow(sobel);

prewitt = edge(peppers,'prewitt');
prewitt = uint8(prewitt);
prewitt(prewitt == 1) = 255;
subplot(324),
imshow(prewitt);

log = edge(peppers,'log');
log = uint8(log);
log(log == 1) = 255;
subplot(325),
imshow(log);
%% ����������Ե�����������
% �ο��������ǡ�һ���µĻ�����ͨ�ɷֵı�Ե���۷��� �ֻܡ�
% �������µ��������ܴ��ڴ���(��ͨ�ɷ������󷨣��Ҿ�����������)���һ����Լ������ʵ���������ᵽ�����۷���
% A��ͼ�бߵ����ظ���
% B��ͼ�е�����ͨ�ɷ���
% C��ͼ�еİ���ͨ�ɷ���
% C/A��C/B����ֵԽС -> ��Ե����Ч��Խ��
aOfMcanny = calcA(Mcanny);
aOfsobel = calcA(sobel);
aOfprewitt = calcA(prewitt);
aOflog = calcA(log);
%plot(aOfMcanny,aOfsobel,aOfprewitt);


bOfMcanny = calcB(Mcanny);
bOfsobel = calcB(sobel);
bOfprewitt = calcB(prewitt);
bOflog = calcB(log);


cOfMcanny = calcC(Mcanny);
cOfsobel = calcC(sobel);
cOfprewitt = calcC(prewitt);
cOflog = calcC(log);


%%

peppers1 = imread('../ͼƬ/�Ľ�canny1.jpg');
imshow(peppers1)
peppers1 = uint8(peppers1);
peppers1(peppers1 == 1) = 255;
aOfpeppers1 = calcA(peppers1);
bOfpeppers1 = calcB(peppers1);
cOfpeppers1 = calcC(peppers1);
