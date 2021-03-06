%%%line plot%%%
x = 0:pi/100:2*pi;
y = sin(x);

xlabel('x')
ylabel('sin(x)')
title('Plot of the Sine Function')

plot(x,y);
%plot(x,y,'r--'); 
%plot(x,y,'g:o'); %plot(x,y,'g:*'); 

xlabel('x')
ylabel('sin(x)')
title('Plot of the Sine Function')

hold on

y2 = cos(x);
plot(x,y2);
legend('sin','cos');
hold off

%print('plot','-dpng')
print('-dpng', [pwd,'\images\plot.png'])
