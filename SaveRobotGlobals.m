function SaveRobotGlobals()
global Robot

global Walls WallsKeepOut
global ObstaclesCenters Obstacles ObstaclesKeepOut
global Nodes Path Goal
global PF 
% global Motion
global SenRGB SenDist SenGyro
global v w

Robot.Walls = Walls;
Robot.WallsKeepOut = WallsKeepOut;
Robot.ObstaclesCenters = ObstaclesCenters;
Robot.Obstacles = Obstacles;
Robot.ObstaclesKeepOut = ObstaclesKeepOut;
Robot.Nodes = Nodes;
Robot.Path = Path;
Robot.Goal = Goal;
Robot.PF = PF;
% Robot.Motion = Motion;
Robot.SenRGB = SenRGB;
Robot.SenDist = SenDist;
Robot.SenGyro = SenGyro;
Robot.v = v;
Robot.w = w;

end
