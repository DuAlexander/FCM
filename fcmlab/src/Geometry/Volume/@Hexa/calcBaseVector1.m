%=======================================================================%
%                     ______________  _____          __                 %
%                    / ____/ ____/  |/  / /   ____ _/ /_                %
%                   / /_  / /   / /|_/ / /   / __ `/ __ \               %
%                  / __/ / /___/ /  / / /___/ /_/ / /_/ /               %
%                 /_/    \____/_/  /_/_____/\__,_/_.___/                %
%                                                                       %
%                                                                       %
% Copyright (c) 2012, 2013                                              %
% Computation in Engineering, Technische Universitaet Muenchen          %
%                                                                       %
% This file is part of the MATLAB toolbox FCMLab. This library is free  %
% software; you can redistribute it and/or modify it under the terms of %
% the GNU General Public License as published by the Free Software      %
% Foundation; either version 3, or (at your option) any later version.  %
%                                                                       %
% This library is distributed in the hope that it will be useful,       %
% but WITHOUT ANY WARRANTY; without even the implied warranty of        %
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the          %
% GNU General Public License for more details.                          %
%                                                                       %
% You should have received a copy of the GNU General Public License     %
% along with this program; see the files COPYING respectively.          %
% If not, see <http://www.gnu.org/licenses/>.                           %
%                                                                       %
% In case of a scientific publication of results obtained using FCMLab, %
% we ask the authors to cite the introductory article                   %
%                                                                       %
% N. Zander, T. Bog, M. Elhaddad, R. Espinoza, H. Hu, A. F. Joly,       %
% C. Wu, P. Zerbe, A. Duester, S. Kollmannsberger, J. Parvizian,        %
% M. Ruess, D. Schillinger, E. Rank:                                    %
% "FCMLab: A Finite Cell Research Toolbox for MATLAB."                  %
% Submitted to Advances in Engineering Software, 2013					%
%                                                                       %
%=======================================================================%
 
%% Calculate base vector1
% the base vectors are used to calculate the Jacobian
% the Jacobian will be expressed as J = [g1; g2; g3] where g1, g2,
% g3 are [1x3] row vectors.
function g1 = calcBaseVector1(obj,LocalCoords)

VerticesCoords = obj.getVerticesCoordinates();
g1 = (1/8)*(  (-1)*(1-LocalCoords(2))*(1-LocalCoords(3))*VerticesCoords(1,:) ...
            + ( 1)*(1-LocalCoords(2))*(1-LocalCoords(3))*VerticesCoords(2,:) ...
            + ( 1)*(1+LocalCoords(2))*(1-LocalCoords(3))*VerticesCoords(3,:) ...
            + (-1)*(1+LocalCoords(2))*(1-LocalCoords(3))*VerticesCoords(4,:) ...
            + (-1)*(1-LocalCoords(2))*(1+LocalCoords(3))*VerticesCoords(5,:) ...
            + ( 1)*(1-LocalCoords(2))*(1+LocalCoords(3))*VerticesCoords(6,:) ...
            + ( 1)*(1+LocalCoords(2))*(1+LocalCoords(3))*VerticesCoords(7,:) ...
            + (-1)*(1+LocalCoords(2))*(1+LocalCoords(3))*VerticesCoords(8,:) );

end