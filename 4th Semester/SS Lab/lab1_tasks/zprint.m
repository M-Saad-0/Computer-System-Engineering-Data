function [phaseR, phaseD, Magnitude] = zprint(z)
    Magnitude = abs(z);
    phaseR = angle(z);
    phaseD = phaseR*180;
end
