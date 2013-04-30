% initializePhysicalConstants.m loads important physical constants into
%  the structure CONSTS. The CONSTS structure will contain both values 
%  (accessible by CONSTS.var_name), and descriptive information
%  (CONSTS.desc.var_name.[Name, Units, Value]).
% EXAMPLE USAGE:
% 
% 
%     % What are the units of the unversal gas constant?
%     CONSTS.desc.R
%     ans =
%     Name: 'Gas Constant'
%     Units: 'J K^-1 mol^-1'
%     Value: 8.3140
% 
%     % Atoms in 10 grams of oxygen:
%     V = 1; %L
%     P = 1; % atm
%     T = CONSTS.T_o + 20; % K
%     nMols = P*V / (CONSTS.R*T)
%     nMols =
%     4.1030e-004
%     % How may atoms?
%     nAtoms = nMols * CONSTS.N_a
%     nAtoms =
%     2.4708e+020
% 
% This program can be vastly improved; I'm happy to do so if people
%  actually use it. (for example: more constants, database functionality,
%  embedded dimensional information...) Just send me an email (see my
%  webpage.) 
% 
% Created:  Rob Chambers
%           http://www.stanford.edu/~robc1
%           8/16/20007
% 
% Free to use or modify, just keep my reference info intact.



%% Physical Constants, SI units.
% Data is a cell array containing information about physical
%   constants. It will be loaded into a structure and subsequently
%   deleted.

% FORMAT: Variable Name, Long Name, Value, Units;

% Probstein, 'Physicochemical Hydrodynamics', 1994.
Data = {'N_a', 'Avogadro''s Number', 6.022e23, 'mol^-1';
    'k', 'Boltzmann Constant', 1.381e-23, 'J K^-1';
    'e', 'Elementary charge', 1.602e-19, 'C';
    'F', 'Faraday Constant', 9.648e4, 'C mol^-1';
    'R', 'Gas Constant', 8.314, 'J K^-1 mol^-1';
    'e_o', 'Permittivity of Vacuum', 8.854e-12, 'C V^-1 m^-1';
    'g', 'Std Acc of Gravity', 9.807, 'm s^-2';
    'p_o', 'Std atmosphere', 1.013e5, 'Pa';
    'T_o', 'Zero of Celsius Scale', 273.15, 'K';
    };

%% Load Data into the CONSTS structre.
% This for loop is slow,
%  but after all, the script is only run once/session.

[nROWS, nCOLS] = size(Data);
for iCurrRow=1:nROWS
    eval(['CONSTS.',Data{iCurrRow,1},'=Data{iCurrRow,3};']); % shortcut
    eval(['CONSTS.desc.',Data{iCurrRow,1},'.Name=Data{iCurrRow,2};']);
    eval(['CONSTS.desc.',Data{iCurrRow,1},'.Units=Data{iCurrRow,4};']);
    eval(['CONSTS.desc.',Data{iCurrRow,1},'.Value=Data{iCurrRow,3};']);
end;
clear Data nROWS nCOLS currRow;
    

    
    
