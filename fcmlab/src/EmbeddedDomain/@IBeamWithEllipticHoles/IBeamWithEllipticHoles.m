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
 
% Class IBeam
%   An I-beam with an arbitrary number of circular holes in the girder

classdef IBeamWithEllipticHoles < AbsEmbeddedDomain
    %%
    methods (Access = public)
        % Constructor
        function obj = IBeamWithEllipticHoles(Width,Length,Height,Thick1,Thick2, numberOfHoles, relativeSpacing)
            obj.Height = Height;
            obj.Width = Width;
            obj.Length = Length;
            obj.Thick1 = Thick1;
            obj.Thick2 = Thick2;
            obj.numberOfHoles = numberOfHoles;
            
            m = relativeSpacing;
            obj.a = m*Length/(numberOfHoles*(2*m+1) + 1);
            
            obj.d = obj.a/m;
            h = 0.5*Height-Thick1;
            obj.b = 0.5*h;
        end
        
        domainIndex = getDomainIndex(obj,Coord)
   
    end
    %%
    properties (Access = private)
        Width   % total width (x)
        Length  % total length of beam (y)
        Height  % total height (z)
        Thick1  % thickness of flanges
        Thick2  % thickness of the girder
        numberOfHoles;
        a;
        b;
        d;
    end
    
end

