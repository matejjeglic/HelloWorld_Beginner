clear all;
close all;

addpath('..\PolygonMap')

 
load('PolygonColorData.mat');


Walls = InitWalls();
Obstacles = InitTrueObstacleCenters(2);
KeepOut = InitKeepOut(Walls, Obstacles);

fig = figure;
set(fig, 'Position', [0 170 25*35 18*35]); %% matej
hold on;

DrawPolygonMapColors(fig,PolygonMapColors,BarvnaLestvicaRGB_pastel);
DrawWalls(fig, Walls)
DrawObstacles(fig, Obstacles);
DrawKeepOut(fig, KeepOut);




