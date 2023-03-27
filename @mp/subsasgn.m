function out=subsasgn(x,varargin)
 

 if isempty(x)
  x=mp(x);
 end
 %x
 %varargin{:}
 if ~isa(varargin{end},'mp')
  varargin{end}=mp(varargin{end});
 end
 
 %'---------------------',kb
 %varargin{1}.subs={[varargin{1}.subs{:}]};
 %out=builtin('subsasgn',x,varargin{1},)
 %out=builtin('subsasgn',x,varargin{1},varargin{2});
 
 out=builtin('subsasgn',x,varargin{:});
 
 % This has to be fixed to allow the incoming doubles (or other mp's)
 % to be promoted to the right precision
 %'ssssssss',kb