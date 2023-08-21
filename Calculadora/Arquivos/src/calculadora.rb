class Calculadora 
    def soma(a, b) #definindo o método soma
        a + b #aqui dentro eu defino o que deve acontecer
    end 
    
    def multiplicacao(a, b)
        a * b 
    end

    def subtracao(a, b)
        (a) - (b) 
    end

    def divisao(a, b)
        divisao = a / b
        divisao.round(3)
    end
end

class Erro
    def letras(a, b)
        if b == "string" 
            return "Não é possível somar uma letra com um número" #qundo cair nessa repetição precisa mostrar uma mensagem
        end   
    soma_correta =  a + b
    end
end

class Expressoes
    def multiplicacao(a, b, c)
        if b + (a * c) == 48
            return "A calculadora está somando antes de multiplicar"
        end
        b + (a * c)
    end

    
end

   #def multiplicacao(x, y, z)
   #     if (x * y == z)
            
   #     else (y / z == x)
            
   #     end
    # end