clc;
clear all;
close all;

%Drawing a picture of Sunrise
x = -10 : 10;
y1 = -2 * x.^2 + 20;
y2 = 2*x.^3 -15;
y3 = -2*x +10;

figure;
plot(x, y1, 'r');
hold on;
plot(x, y2, 'b');
plot(x, y3, 'm');
title('Sunrise');
xlabel('x-axis');
ylabel('y-axis');
legend('y1', 'y2', 'y3');

%Drawing a visualization of the Earth's Core

R = linspace(0,4,100);
T = linspace(0,2*pi,100);
[R,T] = meshgrid(R,T);
X = R.*cos(T);
Y = R.*sin(T);

Z1 = 1/5 * exp( -(sqrt(X.^2+Y.^2)/2).^2 );
Z2 = sin(X);
Z3 = cos(Y);

figure;
mesh(X,Y,Z1, 'FaceColor','green','EdgeColor','k');
hold on;
mesh(X,Y,Z2, 'FaceColor','red','EdgeColor','k');
mesh(X,Y,Z3, 'FaceColor','blue','EdgeColor','k');
title('Earth''s Core');
view(130,30);
% Create color map
colormap(hsv)

%Simulating the Ice Age
x=-10:0.5:10;
y=-10:0.5:10;

[x,y] = meshgrid(x,y);

z1 = 0.6 * exp(- ( sqrt(x.^2 + y.^2) ) ./2.5);
z2 = 0.4 * exp(- ( sqrt(x.^2 + y.^2) ) ./4);

z = z1-z2;

figure;
surf(x,y,z,'FaceColor','green','EdgeColor','k');
hold on;
contour(x,y,z,20);
caxis([-2 2]);
title('Ice Age');
xlabel('x-axis');
ylabel('y-axis');
zlabel('z-axis'); 
colormap(jet);
view(45,45);

% Drawing visualization of Volcanic Eruption

a=0:pi/50:2*pi;
b=linspace(0,3,100);
[a,b]=meshgrid(a,b);
x=b.*cos(a);
y=b.*sin(a);
z = 0.25 * exp( -(sqrt(x.^2+y.^2)/2).^2 );

figure;
surf(x,y,z,'FaceColor','red','EdgeColor','k');
title('Volcanic Eruption','FontWeight','bold','FontSize',14);
xlabel('x-axis');
ylabel('y-axis');
zlabel('z-axis');
colormap(hot);
view(90,90);

%Drawing a Wave Simulation

t=-4*pi:pi/16:4*pi;
x1=sin(t);
x2=sin(2*t);
x3=sin(3*t);

figure;
plot(t,x1,'r')
hold on;
plot(t,x2,'b')
plot(t,x3,'m')
title('Wave Simulation')
xlabel('t')
ylabel('x')
legend('x_1','x_2','x_3')

%Drawing an Explosion Visualization

x=-2:0.2:2;
y=-2:0.2:2;
[X,Y] =meshgrid(x,y);

Z1 = X.^2 + Y.^2;
Z2 = -X.^2 - Y.^2;
Z = Z1+Z2;

figure;
mesh(X,Y,Z,'FaceColor','black','EdgeColor','k');
title('Explosion Visualization','FontSize',14);
view(60,30);
axis([-2 2 -2 2 -2 10]);
colormap(winter);

%Drawing a visualization of Natural Colors

x=linspace(-1,1);
y=x;
[X,Y]=meshgrid(x,y);

R = sin(X.*Y);
G = cos(X.*Y);
B = sin(2*X.*Y);

figure;
surf(X,Y,R,'FaceColor','red','EdgeColor','flat');
hold on;
surf(X,Y,G,'FaceColor','green','EdgeColor','flat');
surf(X,Y,B,'FaceColor','blue','EdgeColor','flat');
title('Natural Colors','FontSize',14);
legend('Red','Green','Blue');
view(45,45);
colormap(hsv);