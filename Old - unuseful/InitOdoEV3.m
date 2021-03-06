function OdoRobot = InitOdoEV3(q0,v,w)


% Get this data from sensors
hsvL = [0 0 0];
hsvR = [0 0 0];
idxL = 1;
idxR = 1;
posL = [0 0]';
posR = [0 0]';
dist = 1;
fi = 0;

OdoRobot = struct( 'R'   , 0.05,...
                   'L'   , 0.15,...
                   'q'   , q0, ...
                   'v'   , v,...
                   'w'   , w,...
                   'hsvL', hsvL,...
                   'hsvR', hsvR,...
                   'idxL', idxL,...
                   'idxR', idxR,...
                   'posL', posL,...
                   'posR', posR,...
                   'dist', dist,...
                   'fi', fi,...
                   'idx' , 1,...
                   'q_ref',q0,...
                   'F1'  , 0);          


end



