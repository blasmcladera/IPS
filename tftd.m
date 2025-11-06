function [s, a] = tftd(n, x, PASO)

    # tftd  Transformada de Fourier de Tiempo Discreto
    #
    # [s, a] = tftd(n, x, PASO)
    # La función recibe una señal discreta [n,x] y devuelve su
    # Transformadade Fourier de Tiempo Discreto [s, a]
    # Mientras menor el PASO, mejor la aproximación

    s = -1/2 : PASO : 1/2;
    for k = 1: length(s)
      sum=0;
      for w = 1: length(n)
        sum = sum + (x(w)*exp(-1j * 2*pi * s(k)* (w-1)));
      endfor
      a(k)=sum;
    endfor
end
