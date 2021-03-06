function Motion = InitMotion()

Motion = struct('inc'        , 0,...
                'Ptr'        , 0,...
                'F_Test'     , 0,...
                'tiTest'     , 0,...
                'SwitchStart', 0,...
                'SwitchLeft' , 0,...
                'SwitchRight', 0,...
                'rkot'       , [],...
                'dkot'       , [],...
                'F_t'        , 0,...
                'tDly'       , 0,...
                'sensL'      , 0,...
                'sensD'      , 0,...
                'SENSVAL'    , 0,...
                'err'        , 0,...
                'olderr'     , 0,...
                'integ'      , 0,...
                'deriv'      , 0,...
                'offse'      , 0,...
                'Turn'       , 0,...
                'ww'         , 0,...
                'vv'         , 0,...
                'Localisation',0,...
                'Odo'        , 0);
            
end
