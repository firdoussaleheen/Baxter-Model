figure('Position', [583   556   500   375]);
hold on;
mdl_baxter;

% q0     = zeros(1,7);
% q1     = [0          0        0        0        0         0        pi/4];
% q2     = ones(1,7)*pi/4;
% q3     = [-pi/4      0        0        0        pi/4      pi/4     0   ];
% qtest  = [pi/4       0        0        0        0         0        0   ];
% qtest1 = [ 0.5595   -0.5629  -0.0203   0.9185   0.9411    1.2759  -0.6419];
% qtest2 = [-0.45329  -0.5299  -0.5288   1.396   -0.3405    1.1650  -0.71598];
% qtest3 = [-0.000767 -0.00153  0.00307 -0.00192 -0.000383 -0.00115  0.00115];
% qrand = (0.5-rand(1,7))*2*pi;

left.plot(qz)
hold on;
right.plot(qz)

figure;
left.plot(qs)
hold on;
right.plot(qs)

qtest4 = [0 pi/8 pi/4 pi/8 pi/4 0 0];
hold on; left.plot(qtest4)
%%
% using validation experiment 1 data, first time stamp
%qval1 = [joint(1).jangle(1),joint(2).jangle(1),joint(3).jangle(1),joint(4).jangle(1),joint(5).jangle(1),joint(6).jangle(1),joint(7).jangle(1)];
qval1left =[-0.264995181107205        -0.393082576895637         -1.30350017450563           1.6010924473554 ...  
            -1.97116531243276         -1.3199904679754           -2.54027218473825];

mdl_baxter;
figure;
left.plot(qval1left)

qval1right =[-0.264995181107205   -0.393082576895637     1.30350017450563           1.6010924473554 ...  
             1.97116531243276     -1.3199904679754      -2.54027218473825+pi/2];
hold on;
right.plot(qval1right)
view(66,26)

%% 
qval1left = [joint(1).jangle(1),joint(2).jangle(1),joint(3).jangle(1),...
    joint(4).jangle(1),joint(5).jangle(1),joint(6).jangle(1),joint(7).jangle(1)];

mdl_baxter;
figure;
left.plot(qval1left)

qval1right =[joint(1).jangle(1),joint(2).jangle(1),-joint(3).jangle(1),...
    joint(4).jangle(1),-joint(5).jangle(1),joint(6).jangle(1),joint(7).jangle(1)+pi/2];
hold on;
right.plot(qval1right)
view(66,26)
%% validation experiment 2 initial conditions
qval1left =[-0.3137, -0.5492, -1.1950, 1.5842,  1.0051, 1.2513, 0.6604+pi/2];

% mdl_baxter;
% figure;
left.plot(qval1left)

qval1right =[-0.3137, -0.5492, 1.1950, 1.5842,  -1.0051, 1.2513, 0.6604+3*pi/8+pi/2];
%qval1right =[-0.3137, -0.5492, -1.1950, 1.5842,  1.0051, 1.2513, 0.6604];
hold on;
right.plot(qval1right)
%view(66,26)

%%

qval2dleft=[jointl(1).jangle(3),jointl(2).jangle(3),jointl(3).jangle(3),...
    jointl(4).jangle(3),jointl(5).jangle(3),jointl(6).jangle(3),jointl(7).jangle(3)]
qval2dright=[jointl(1).jangle(3),jointl(2).jangle(3),-jointl(3).jangle(3),...
    jointl(4).jangle(3),-jointl(5).jangle(3),jointl(6).jangle(3),jointl(7).jangle(3)+3*pi/8]
% qval2dright=[-jointr(1).jangle(3),-jointr(2).jangle(3),jointr(3).jangle(3),...
%     -jointr(4).jangle(3),-jointr(5).jangle(3),-jointr(6).jangle(3),-jointr(7).jangle(3)]
figure;
left.plot(qval2dleft);
hold on;
right.plot(qval2dright);