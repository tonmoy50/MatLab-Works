function pie = pi_calc(trials)
    hits = 0;
    r = 2.5;
    error = 0;
    error_mat = zeros(1, trials);
    x1 = linspace(0, 2.5, 100);
    
    y1 = sqrt(r^2 - power(x1, 2));
    figure(1);
    plot(x1, y1, 'y');
    title('Needle Points');
    hold on;
    
    for i = 1:trials
        points = rand(2, 1);
        x = r*points(1);
        y = r*points(2);
        
        dist = sqrt(x^2 + y^2);
        
        if(r >= dist)
            hits = hits + 1;
            plot(x, y, 'g*');
            
        else
            plot(x,y, 'r*');
        end
        pie = (hits/i) * 4;
        error = pi - pie;
        error_mat(i) = abs(error) / pi * 100 ;
        
        
    end
    hold off;
    figure(2);
    n = linspace(1, trials, trials);
    plot(n, error_mat);
    title('Error Graph');
    xlabel('Trials');
    ylabel('Error%');
    %disp(error_mat);
    
    


end