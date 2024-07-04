clear 
clc
close all;
x0 = [85;
        0;
        0;
        0;
        0;
        0;
        0;
        0.1;
        0];
u = [0;
     -0.1;
     0;
     0.08;
     0.08];
 TF = 3*60;
 
 %Define min/max control values
 u1min = -25*pi/180;
 u1max = 25*pi/180;
 
 u2min = -25*pi/180;
 u2max = 10*pi/180;
 
 u3min = -30*pi/180;
 u3max = 30*pi/180;
 
 u4min = 0.5*pi/180;
 u4max = 10*pi/180;
 
 u5min = 0.5*pi/180;
 u5max = 10*pi/180;
 
 sim('RCAM_Simulation.mdl')

 %% plot the result
t = simx.time;  
 u1 = simu.signals.values(:,1);
 u2 = simu.signals.values(:,2);
 u3 = simu.signals.values(:,3);
 u4 = simu.signals.values(:,4);
 u5 = simu.signals.values(:,5);
 
 x1 = simx.signals.values(:,1);
 x2 = simx.signals.values(:,2);
 x3 = simx.signals.values(:,3);
 x4 = simx.signals.values(:,4);
 x5 = simx.signals.values(:,5);
 x6 = simx.signals.values(:,6);
 x7 = simx.signals.values(:,7);
 x8 = simx.signals.values(:,8);
 x9 = simx.signals.values(:,9);
 
disp(size(t))
disp(size(u1))
disp(size(x1))

 
 figure
 subplot(5,1,1)
 plot(t,u1)
 legend('U1')
 grid on
 
 subplot(5,1,2)
 plot(t,u2)
 legend('U2')
 grid on
 
 subplot(5,1,3)
 plot(t,u3)
 legend('U3')
 grid on
 
 subplot(5,1,4)
 plot(t,u4)
 legend('U')
 grid on
 
 subplot(5,1,5)
 plot(t,u5)
 legend('U5')
 grid on
 
 figure
 % U V W
 subplot(3,3,1)
 plot(t,x1)
 legend('X1')
 grid on
 
 subplot(3,3,4)
 plot(t,x2)
 legend('X2')
 grid on
 
 subplot(3,3,7)
 plot(t,x3)
 legend('X3')
 grid on
 
 % P Q R
 subplot(3,3,2)
 plot(t,x4)
 legend('X4')
 grid on
 
 subplot(3,3,5)
 plot(t,x5)
 legend('X5')
 grid on
 
 subplot(3,3,8)
 plot(t,x6)
 legend('X6')
 grid on
 
 %phi theta psi
 subplot(3,3,3)
 plot(t,x7)
 legend('X7')
 grid on
 
 subplot(3,3,6)
 plot(t,x8)
 legend('X8')
 grid on
 
 subplot(3,3,9)
 plot(t,x9)
 legend('X9')
 grid on
 