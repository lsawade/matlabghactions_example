% Setup to make all functions work
scriptlocation = mfilename('fullpath');
scriptdir = fileparts(scriptlocation);
maindir = fileparts(scriptdir);
pathsetup;

%% Run something
x = linspace(-pi, pi);
y = linspace(-pi, pi);

[xx, yy] = meshgrid(x,y);
imagesc(x, y, func(xx, yy));

% Set labels
xlabel('x');
ylabel('y');
tH = title('Testplot');

% Set limits
xlim(gca, [-pi,pi]);
ylim(gca, [-pi,pi]);

% Make x and y ticks multiples of pi
ticklocations = -pi:pi/2:pi;
ticklabels = {'-\pi','-\pi/2','0','\pi/2','\pi'};
set(gca,'XTick', ticklocations);
set(gca,'XTickLabel', ticklabels);
set(gca,'YTick', ticklocations);
set(gca,'YTickLabel', ticklabels);
set(gca,'YDir','normal')

% Colorbar
% colormap('rainbow');
brighten(0.125);
caxis([-1,1])
colorbar;

% Put box on top
set(gca,'Box','on');
