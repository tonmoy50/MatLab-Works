function area=integration(a, b, trials)
    
    test = 10;
    real_area = 54;
    error_mat = zeros(1, 10);
    x1 = linspace(0, b, 100);
    y1 = power(x1, 2) + 5;
    
    %figure(1);
    %plot(x1, y1);
    axis([0 f(a)+5 0 f(b)+5]);
    %title('Needle Points');
    %rectangle('Position', [a 0 b-a f(b)]);
    %hold on;
    
    for k = 1:test
        I = 0;
        hits=0;
        error = 0;
        for i = 1:trials
            points = rand(2, 1);
            x = (b-a)*points(1) + a;
            y = (f(b))*points(2);



            if(y <= f(x))
                hits = hits + 1;
                plot(x, y, 'go');
            else
                plot(x, y, 'ro');
            end

            %I = (hits/i) * (b-a)*f(b);
            I = (hits/i) * (b-a)*f(b);
            error = real_area - I;
            error_mat(k) = abs(error);
            area = I;
            


        end
        %hold off;
        
    
        
    
    end
    figure(1);
    n = linspace(1, test, test);
    plot(n, error_mat, 'g');
    xlabel('trials');
    ylabel('error');
    
    
    
    
end