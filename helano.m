function helano()
    x1 = linspace(0, 5, 100);
    x2 = linspace(-5, 0, 100);
    
    y1 = 5 - x1;
    y2 = x1 - 5;
    y3 = -x2 - 5;
    y4 = 5 + x2;
    
    plot(x1, y1);
    %hold on;
    plot(x1, y2);
    plot(x2, y3);
    plot(x2, y4);