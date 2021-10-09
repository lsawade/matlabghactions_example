
% Get setup.m location
setuplocation = mfilename('fullpath');
maindir = fileparts(setuplocation);

% Get subdirs
functiondir = fullfile(maindir, 'functions');
exampledir = fullfile(maindir, 'examples');
testdir = fullfile(maindir, 'tests');

% Add paths
addpath(functiondir);
addpath(exampledir);
addpath(testdir);

% Change Axes defaults
set(0,'defaultAxesFontSize', 14);
set(0,'defaultAxesLineWidth', 1.0);
set(groot, 'defaultAxesTickDir', 'out');
set(groot,  'defaultAxesTickDirMode', 'manual');

% Colorbar defaults
set(0,'defaultColorbarFontSize', 12);
set(groot, 'defaultColorbarLineWidth', 1.0)
set(groot, 'defaultColorbarTickDir', 'out')