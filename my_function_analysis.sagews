︠94fd80f8-25fe-4e45-95f1-d48d76db1e3b︠
A = None
@interact
def work(f = (x^3+x^2-1)/(2*x^2+x-3), xmin = -4, xwidth = 8):
    global A
    A = Graphics()
    xmax = xmin + xwidth
    #14
    #Функция рисования
    def draw(n=0, pcolor = "darkcyan", scolor="black"):
        global A

        #5 10
        #Производная и вторая производная
        df = f.diff(x, n)
        show(df)

        #Корни уравнения и производных
        #3 7 12
        s = solve(df, x)
        show(s)

        #График уравнений и производных
        #2 6 11
        A += (plot(df, color=pcolor, thickness=1/(n+1), xmin = xmin, xmax = xmax))

        #Корни на графике
        #4 8 13
        for solution in s:
            solution = solution.rhs()
            if xmin <= solution <= xmax:
                A += circle((solution, f(x=solution)),  color=scolor, xwidth/10)

    draw() #Построение графика
    draw(1, "bluen", "grey") #Построение для первой производной
    draw(2, "cyan", "silver") #Построение для второй производной
    A.show(ymin = xmin, ymax = xmax)
work()









