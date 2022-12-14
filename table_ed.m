function table_ed(f, t0, y0, T, p, yn)

    hold on;
    [te, ye] = euler_ed(f, t0, y0, T, p);
    [th, yh] = heun(f, t0, y0, T, p);
    [tr3, yr3] = runge_kutta_3(f, t0, y0, T, p);
    [tr4, yr4] = runge_kutta_4(f, t0, y0, T, p);
       
    yt = zeros(1, p+1);
    
    fprintf("\t\t\t_________________________________________________________________________\n");
    fprintf("\t\t\t|\t\t\t\t\t\t\t\t\ty(n)\t\t\t\t\t\t\t\t|\n");
    fprintf("-------------------------------------------------------------------------------------------------\n")
    fprintf("|\t  t(n)  \t|\t  EULER  \t|\t  HEUN  \t|\t\tRK3\t\t|\t\tRK4\t\t|\t  y(t(n))  \t|\n");
    fprintf("-------------------------------------------------------------------------------------------------\n")
    for i = 1:p+1
        yt(i) = yn(te(i));
        fprintf("|\t%4.6f\t|\t%4.6f\t|\t%4.6f\t|\t%4.6f\t|\t%4.6f\t|\t%4.6f\t|\n",te(i),ye(i), yh(i), yr3(i), yr4(i), yn(i));
    end
    fprintf("-------------------------------------------------------------------------------------------------\n")
    plot(te, yt), grid;
end
