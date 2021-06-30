AxesH = axes
GridStyle.Color     = [0.2, 0.4, 0.1];
GridStyle.LineStyle = '-';
GridStyle.LineWidth = 2.5;
GridStyle.HitTest   = 'off';
Child   = get(AxesH, 'Children');         
XTick   = get(AxesH, 'XTick');
YTick   = get(AxesH, 'YTick');
XLimit  = get(AxesH, 'XLim');
YLimit  = get(AxesH, 'YLim');
newGrid = cat(1, ...
          line([XTick; XTick], YLimit, 'Parent', AxesH, GridStyle), ...
          line(XLimit, [YTick; YTick], 'Parent', AxesH, GridStyle));
% New grid on top or bottom of other objects: 
set(AxesH, 'Child', [newGrid; Child(:)]);
% Or: set(AxesH, 'Child', [Child(:); newGrid]);
% Disable original dashed grid:
set(AxesH, ...
   'XGrid',      'off', ...
   'YGrid',      'off', ...
   'YTickMode',  'manual', ...
   'TickLength', zeros(1, 2));