function [m, y] = sistema3(n, x)

    # sistema3  Sistema 3
    #
    # [m, a] = sistema3(n, x)
    # La funcion recibe una señal de variable discreta
    # y devuelve la señal resultante del sistema 3

    m=n;
    for k=1:length(n)
      if k==1
        y(k)=(x(k)/4); #Condiciones iniciales nulas;
      else
        y(k)=(x(k)/4)+(x(k-1)/4)+(y(k-1)/2);
      endif
    endfor
end
