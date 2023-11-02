function htmlReportNew(sfile, gentype)
    load(sfile, '*');
    file = fullfile(pwd, 'results', ['solution_', gentype, '.html']);
    nl = notationsLong();
    sl = notationsShort();
    prc = precision();
    feature('DefaultCharacterSet', 'windows-1251');

    h = headHtml;
    h = [h, '<table class="cwdtable">\n'];
    h = [h, addTr('������ ��������� ����', 'boldtype')];
    h = [h, addTr('lnpv', 'fkf', fkf)];
    h = [h, addTr('lnpv', 'aklam', aklam)];   
    h = [h, addTr('������������ �������:')];
    ul = [sl('dkd1'), ' ', prc('dkd1'), '; ', ...
          sl('dkd2'), ' ', prc('dkd2'), '; ', ...
          sl('dkd3'), ' ', prc('dkd3'), '; ', ... 
          sl('dkd'), ' ', prc('dkd'), ''];
    ul = sprintf(ul, dkd1, dkd2, dkd3, dkd);
    h = [h, addTr(ul, 'ultd')];
            
    h = [h, addTr('������ ������������� �������')];
    ul = [nl('ap'), ' ', prc('ap'), '; ', ...
          nl('dt'), ' ', prc('dt'), '; ', ...
          nl('cp'), ' ', prc('cp')];     
    ul = sprintf(ul, ap, dt, cp);
    h = [h, addTr(ul, 'ultd')];
    ul = [sl('lampl'), ' ', prc('lampl'), '; ', ...
          sl('lamml'), ' ', prc('lamml'), '; ', ...
          sl('lammb'), ' ', prc('lammb'), '; ', ... 
          sl('lammp'), ' ', prc('lammp'), '; ', ...
          sl('lamsig'), ' ', prc('lamsig')];
    ul = sprintf(ul, lampl, lamml, lammb, lammp, lamsig);
    h = [h, addTr(ul, 'ultd')];
    h = [h, addTr('lnpv', 'xp', xp)];
    h = [h, addTr('lnpv', 'xp1', xp1)];

    h = [h, addTr('������ ��������� ���� ��� ����������� ����������')];
    h = [h, addTr('lnpvd', 'fi1n', fi1n)];
    h = [h, addTr('lnpvd', 'fin', fin)];
    h = [h, addTr('lnpvd', 'filamn', filamn)];
    h = [h, addTr('lnpvd', 'uftn', uftn)];
    h = [h, addTr('lnpvd', 'bdeln', bdeln)];   
    h = [h, addTr('lnpvd', 'bz3n', bz3n)];   
    h = [h, addTr('lnpvd', 'ban', ban)];   
    h = [h, addTr('lnpvd', 'awzn', awzn)];   
    h = [h, addTr('lnpvd', 'awan', awan)];   
    h = [h, addTr('lnpvd', 'sigmn', sigmn)];   
    h = [h, addTr('lnpvd', 'sigpn', sigpn)];   
    h = [h, addTr('lnpvd', 'bmin', bmin)];   
    h = [h, addTr('lnpvd', 'bpin', bpin)];   
    h = [h, addTr('lnpvd', 'bm12n', bm12n)];   
    h = [h, addTr('lnpvd', 'awt1n', awt1n)];   
    h = [h, addTr('lnpvd', 'awt3n', awt3n)];   
    h = [h, addTr('lnpvd', 'awt2n', awt2n)];   
    h = [h, addTr('lnpvd', 'awmn', awmn)];   
    h = [h, addTr('lnpvd', 'awdn', awdn)];   
    h = [h, addTr('lnpvd', 'awzwn', awzwn)];   
    h = [h, addTr('lnpvd', 'awawn', awawn)];   
    h = [h, addTr('lnpvd', 'awmwn', awmwn)];   
    h = [h, addTr('lnpvd', 'awcn', awcn)];   
    h = [h, addTr('lnpvd', 'awjn', awjn)];  
	h = [h, addTr('lnpvd', 'awsumn', awsumn)];  
    h = [h, addTr('lnpvd', 'hhin', hhin)];  
	h = [h, addTr('lnpvd', 'uuf', uuf(3))];  
    
    fid = fopen(file, 'W', 'native', 'windows-1251');
    fprintf(fid, h);
    fclose(fid);
end