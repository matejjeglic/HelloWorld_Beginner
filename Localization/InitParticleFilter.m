function PF = InitParticleFilter()

nParticles = 1.5*96;

PF = struct('State', 'Init',...
            'Estimate', 'Searching',...
            'nParticles', nParticles,...
            'xParticles', zeros(3, nParticles),...
            'x', 2500/2,...
            'y', 1800/2,...
            'fi', pi/2,...
            'Flag_Reinit', false);

end
        