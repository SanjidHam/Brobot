%% Camera Prompt
% 1 = LARGE CIRCLE
% 2 = HEXAGON

function promptCamera ()

missingShape = input('Missing Shape:'); %prompts for alien input
if missingShape == 1   
    moveforCircle;
    pause (0.1);
    disp ('Camera checking for other missing shapes.');
    pause (0.5);
    promptCamera ();
elseif missingShape == 2
    moveforSquare;
    pause (0.1);
    disp ('Camera checking for other missing shapes.');
    pause (0.5);
    promptCamera ();
elseif missingShape == 0
    pause (1);
    disp ('All shapes present.');
    pause (0.1);
    disp ('Mission Successful!');
    return;
end

end