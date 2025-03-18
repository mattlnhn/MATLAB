%% figureml.m
%
% Create figure with custom set of default properties
%
% Copyright (c) 2025 Matt Lenahan.
%
% Args
% AR        [X Y], for plot with aspect ratio X:Y
% colour    'r' or 'b', for red or blue theme respectively

function figureml(AR, colour)
    % Create figure
    figure();
    hold on;
    axis image;

    % Get figure/axes
    f = gcf;
    a = gca;
    r = groot;

    % Set figure properties
    set(f, "position", [0, 0, 720 * (AR(1) / sum(AR)), 720 * (AR(2) / sum(AR))] + 100);

    % Set axes properties
    % Auto line style
    switch colour
        case 'r'
            set(a, "colororder", [71, 11, 19;
                                  170, 26, 45;
                                  236, 131, 145;
                                 ] / 255);
            set(a, "linestyleorder", {'-x', '--x', ':x'});
            colormap([linspace(71, 170, 256)', linspace(11, 26, 256)', linspace(19, 45, 256)';
                      linspace(170, 236, 256)', linspace(26, 131, 256)', linspace(45, 145, 256)';] / 255);
        case 'b'
            set(a, "colororder", [12, 27, 69;
                                  29, 66, 166;
                                  134, 160, 234;
                                 ] / 255);
            set(a, "linestyleorder", {'-x', '--x', ':x'});
            colormap([linspace(12, 29, 128)', linspace(27, 66, 128)', linspace(69, 166, 128)';
                      linspace(29, 134, 128)', linspace(66, 160, 128)', linspace(166, 234, 128)';] / 255);
        case 'b1'
            set(a, "colororder", [29, 66, 166] / 255);
            set(a, "linestyleorder", {'-'});
    end

    % Font
    set(a, "fontname", "Times New Roman");
    set(a, "fontsize", 18);
    % Axes lines
    set(a, "linewidth", 1.0);
    set(a, "xcolor", [0, 33, 71] / 255);
    set(a, "ycolor", [0, 33, 71] / 255);
    % Ticks
    set(a, "tickdir", "out");
    set(a, "xminortick", "on");
    set(a, "yminortick", "on")

    % Grids
    set(a, "xgrid", "on");
    set(a, "xminorgrid", "on");
    set(a, "ygrid", "on");
    set(a, "yminorgrid", "on");
    set(a, "gridcolormode", "manual");
    set(a, "gridcolor", [0, 33, 71] / 255);
    set(a, "gridalpha", 0.25);
    set(a, "gridlinestyle", "-");
    set(a, "minorgridcolormode", "manual");
    set(a, "minorgridcolor", [0, 33, 71] / 255);
    set(a, "minorgridalpha", 0.125);
    set(a, "minorgridlinestyle", "-");

    % Set root properties
    set(r, "defaultLineLineWidth", 1.5);
    set(r, "defaultLineMarkerSize", 4);

end
