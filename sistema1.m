function [m, y] = sistema1(n, x)

    # sistema1  Sistema 1
    #
    # [m, a] = sistema1(n, x)
    # La funcion recibe una señal de variable discreta
    # y devuelve la señal resultante del sistema 1

    m=n;
    for k=1:length(n)
      if k==1
        y(k)=(x(k)/2); #De lo contrario el indice del vector seria invalido
      else
        y(k)=(x(k)/2)+(x(k-1)/2);
      endif
    endfor
end
