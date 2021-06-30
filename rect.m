function area=rect(trials)
    
    hit = 0;
    figure(1);
    axis([-10 10 -10 10]);
    rectangle('Position', [-5 -5 10 10]);
    
    hold on;
    helano();
    
    for i = 1:trials
        points = rand(2, 1);
        x = 10*points(1) - 5;
        y = 10*points(2) - 5;     
        
        if( y <= f1(x) && y >= f2(x) )
            hit = hit + 1;
            plot(x, y, 'go');
        else
            plot(x, y, 'ro');
        end
        
        area = (hit/i) * 100;
    end
    
    disp(area);
    


end