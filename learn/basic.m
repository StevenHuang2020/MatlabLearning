%%%matlab basic operation%%%
%a = [1 2 3 4 5 6];
%bar(a)
%print('bar','-dpng'); %save to image file

z = zeros(5,1);
z = z + 10;

% a = [1 2 3; 4 5 6];
% a = 1:0.1:20;
% sin(a);
% plot(a, sin(a));

a = [1 2 3; 4 5 6; 7 8 9];
aT = a';
aInver = inv(a);
aIdentity = a/a; %a*inv(a);

%format long
%aIdentity = a*inv(a);
%format short

P = a.*a;
T = a.^3;

A1 = [a a];
A2 = [a;a];

C = sqrt(-1);
D = [3+4i, 1+2j; -i, 10j];


%%%array indexing operation%%%
A = magic(4);

%      16     2     3    13
%      5      11    10   8
%      9      7     6    12
%      4      14    15   1

A(1,1); %16
A(7); %9
A(8); %14
%A(4,5); %error out indexing

A(1:3, 2); % [2; 11; 7]
A(2,:); %[5,11,10,8]

B = 0:10 %0     1     2     3     4     5     6     7     8     9    10
B = 0:10:100 %0    10    20    30    40    50    60    70    80    90   100

R = rand(3,4);


f = 71;
c = (f-32)/1.8;
tempText=['Temperature is ',num2str(c),'C'];

%%%calling function%%%
L = [1,2,3,5; 2,1,6,8]; %max=[2,2,6,8]
L = [1,2,3,5]; %max=5
max(L);
[maxL,loc] = max(L);% maxL=5 loc=4

M = [2,4,1,6];
max(L,M);%max=[2,4,3,6]


disp('hello world!')



