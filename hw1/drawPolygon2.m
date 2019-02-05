% single cick to select point and double click to terminate
function [x,y,z]=drawPolygon2();
%drawBase
[x y]= getline();
x=[x;x(1)];
y=[y;y(1)];
plot(x,y);
z=0*x;

for k=1:length(x)-1
   str=sprintf('  B%d',k);
   text(x(k),y(k),str,'fontsize',14,'color','r');
end
%hold off
