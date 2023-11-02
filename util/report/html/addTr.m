function tr = addTr(varargin)
    nl = notationsLong();
    prc = precision();
    dmn = dimension();
    feature('DefaultCharacterSet', 'windows-1251');
    persistent nrow;
    if isempty(nrow) || nrow == 24
        nrow = 0;
    end
    nrow = nrow + 1;
    
    switch length(varargin)
        case 1
            tr = ['<tr class="heighttr">\n', ...
                '<td colspan="3">\n', ...
                varargin{1}, ...
                '\n</td>\n</tr>\n'];
        case 2
            tr = ['<tr class="heighttr">\n', ...
                '<td colspan="3" class="', varargin{2}, '">\n', ...
                varargin{1}, ...
                '\n</td>\n</tr>\n'];
        case 3
            if varargin{1} == "lnpv" || varargin{1} == "lnpvd"
                dimention = '';
                if varargin{1} == "lnpvd" 
                    dimention = dmn(varargin{2});
                end  
                description = nl(varargin{2}) ;
                formatSpec = prc(varargin{2});
                digital = varargin{3};    
                tr = ['<tr class="heighttr">\n' ...
                    '<td class="bordertd">' nrow '</td>\n' ...
                    '<td class="bordertd">' description '</td>\n' ...
                    '<td class="bordertd">' formatSpec ' ' dimention '</td>\n' ...
                  '</tr>\n'];
                tr = sprintf(tr, digital);
            end
        otherwise
            error('Wrong number of input arguments')
    end
end