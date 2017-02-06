close all;
clear all;


global Nodes
Nodes = [];

addpath('..\PolygonMap')

load('Nodes2');
load('../PolygonMap/PolygonColorData.mat')
% load('Dijkstra_example_nodes');

fig = figure;
set(fig, 'Position', [0 170 25*35 18*35]); %% matej
% axis([-1 4 -1 3]);
hold on;

%% Draw Polygon
% ColorMap = BarvnaLestvicaRGB/255;
% DrawPolygonMapColors(fig,PolygonMapColors, ColorMap)
% % pause(3);

%% Draw Polygon with Pastel colors
% clf;
ColorMap = BarvnaLestvicaRGB_pastel;
DrawPolygonMapColors(fig,PolygonMapColors,ColorMap)
% pause(3);

%% Draw Enviroment and KeepOut
Walls = InitWalls();
Obstacles = InitObstacles(2);
KeepOut = InitKeepOut(Walls, Obstacles);

DrawWalls(fig, Walls)
DrawObstacles(fig, Obstacles);
DrawKeepOut(fig, KeepOut);

%%
% clf;
% colorMap = [0 0 0] + 0.70;
% DrawPolygonMapColors(fig,colorMap)
% pause(0);

%% Draw Nodes postions
DrawNodesPositions(fig, Nodes, 0);
% pause(2);

%% Run Dijkstra Algorithm
StartIdx = 73;
ComputeDijkstra(StartIdx);

%% Obtain optimal path
StopIdx = 41;
OptimalPath = ComputeOptimalPathDijkstra(Nodes, StartIdx, StopIdx);

%% Highlight Start and End position
plot(Nodes(StartIdx).x,Nodes(StartIdx).y,'g.','MarkerSize',35)
% pause(1);
plot(Nodes(StopIdx).x,Nodes(StopIdx).y,'r.','MarkerSize',35)
% pause(4);

%% Draw optimal path
delay = 0.4;
DrawOptimalPathDijkstra(fig, Nodes, OptimalPath, delay);





