function [m, y] = sistema2(n, x)

    # sistema2  Sistema 2
    #
    # [m, a] = sistema2(n, x)
    # La funcion recibe una señal de variable discreta
    # y devuelve la señal resultante del sistema 2

    m=n;
    for k=1:length(n)
      if k==1
        y(k)=(x(k)/2); #De lo contrario el indice del vector seria invalido
      else
        y(k)=(x(k)/2)-(x(k-1)/2);
      endif
    endfor
end
