function os = cns_osname

% Internal CNS function.

%***********************************************************************************************************************

% Copyright (C) 2009 by Jim Mutch (www.jimmutch.com).
%
% This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public
% License as published by the Free Software Foundation; either version 3 of the License, or (at your option) any later
% version.
%
% This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied
% warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License along with this program.  If not, see
% <http://www.gnu.org/licenses/>.

%***********************************************************************************************************************

if ~isempty(strmatch('GLN', computer))
    os = 'LINUX';
elseif ~isempty(strmatch('PC', computer))
    os = 'WIN';
elseif ~isempty(strmatch('MAC', computer))
    os = 'MAC';
elseif ~isempty(strmatch('SOL', computer))
    os = 'SOL';
else
    error('unknown architecture');
end

return;