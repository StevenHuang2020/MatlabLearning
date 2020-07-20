[X,Y] = meshgrid(-2:.2:2);
Z = X .* exp(-X.^2 - Y.^2);

surf(X,Y,Z);
%print('3dPlot','-dpng')
print('-dpng', [pwd,'\images\3dPlot.png'])

t = 0:pi/10:2*pi;
[X,Y,Z] = cylinder(4*cos(t));
subplot(2,2,1); mesh(X); title('X');
subplot(2,2,2); mesh(Y); title('Y');
subplot(2,2,3); mesh(Z); title('Z');
subplot(2,2,4); mesh(X,Y,Z); title('X,Y,Z');

%print('3dPlot2','-dpng')
print('-dpng', [pwd,'\images\3dPlot2.png'])