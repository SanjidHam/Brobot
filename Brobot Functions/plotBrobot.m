%% Plot Brobot
function [Brobot] = plotBrobot()

scale = 0.5;
workspace = [-1.2 1.2 -1.2 1.2 -0.6 1]; %boundary of the working environment 

%links as stated on UTSOnline
L1 = Link('d',0.08,'a',0,'alpha',-pi/2,'qlim',[deg2rad(-135) deg2rad(135)]);
L2 = Link('d',0,'a',0.14,'alpha',0,'qlim',[deg2rad(5) deg2rad(80)],'offset', -pi/2);
L3 = Link('d',0,'a',0.16,'alpha',0,'qlim',[deg2rad(15) deg2rad(170)]);
L4 = Link('d',0,'a',0.05,'alpha',pi/2,'qlim',[deg2rad(-90) deg2rad(90)]);
L5 = Link('d',-0.05,'a',0,'alpha',0,'qlim',[deg2rad(-85) deg2rad(85)]);


base = transl(0,0,0); %Puts the base of the robot at this specific coordinate. 
Brobot = SerialLink([L1 L2 L3 L4 L5],'name','THE BROBOT','base',base); %setting the parameters of the robot      

%Home position
T = transl(0.2,0.15,0.2);
q = Brobot.ikcon(T);

Brobot.plot(q,'workspace',workspace,'scale',scale); %plotting the robot
hold on;

end