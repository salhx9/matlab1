function setup3D(xm,xM,ym,yM,zm,zM,sx,sy,sz,st,sl)

%setup figure parameters 
% 
% input:
%   xm,xM = x-dimensions
%   ym,yM = y-dimensions
%   sx,sy,st = sxlabel, ylabel, title
%  
% output:
%   nil

% To identify yourself, graphics window header

set(gcf,'name','Demo by Shelby Luttrell','numbertitle','off')

% set the dimensions of graphics window
axis([xm xM ym yM zm zM]);

% Grid display
grid on

%draw x-axis
plot3 ([xm xM],[0 0],[0,0],'color','b','LineWidth',4); % x-axis

% draw y-axis
plot3 ([0 0],[ym yM],[0,0],'color','b','LineWidth',4); % y-axis

% draw z-axis
plot3 ([0 0],[0 0],[zm zM],'color','b','LineWidth',4); % y-axis

% define common text properties
props = {'Color','Fontsize','Fontweight', 'FontName','HorizontalAlignment'};
values  = {   'm' ,        20,      'bold',    'Times',             'center'};

% if you want to be more userfriendly, you can use 
% text(..., 'X') to write X at the right end of x-axis 
ht =text(xM,0,0,'X');
    set(ht, props,values);
% you can use text(..., 'Y') to write Y on top of the y-axis
ht=text(0,yM,0,'Y');
    set(ht, props,values);

% you can use text(..., 'Y') to write Y on top of the y-axis
ht=text(0,0,zM,'Z');
    set(ht, props,values);
% place the documentation label along x-axis
hx=xlabel(sx);
    set(hx, props,values);
% place the documentation label along y-axis
hy=ylabel(sy);
    set(hy, props,values);
% place the documentation label along y-axis
hz=zlabel(sz);
    set(hz, props,values);

% the title on top of the display window
ht=title(st);
    set(ht, props,values);
%legend

% legend formatting-- need to write directly it has different properties.
set(sl,'auto','off');

set(sl,'TextColor','b','FontWeight', 'bold', 'FontSize',16,'location','NorthEast');



