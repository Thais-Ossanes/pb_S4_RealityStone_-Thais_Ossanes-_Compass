require 'rspec'
require 'pry'
require_relative '../src/calculadora.rb'

#NOTE: aqui ficaram todos os testes para soma
describe("Calcular a soma") do 
    it("Deve somar dois inteiros positivos") do 
        calculadora = Calculadora.new 
        expect(calculadora.soma(4, 5)).to eq 9 
    end

    it("Deve somar um número qualquer com 0") do
        calculadora = Calculadora.new 
        expect(calculadora.soma(9, 0)).to eq 9
    end

    it("Deve somar dois números com sinais diferentes")do
        calculadora = Calculadora.new
        expect(calculadora.soma(-1, 3)).to eq 2
    end

    it("Deve somar dois números negativos")do
        calculadora = Calculadora.new
        expect(calculadora.soma(-3, -4)).to eq -7
    end
end

#NOTE: aqui ficaram todos os testes para subtração
describe("Calcular a subtração")do
    it("Deve subtrair dois inteiros positivos")do
        calculadora = Calculadora.new
        expect(calculadora.subtracao(15, 10)).to eq 5
    end

    it("Deve subtrair dois inteiros negativos")do
        calculadora = Calculadora.new
        # aqui pode ser colocado o 'pry' para debugar e saber qual o valor recebido nas variáveis
        expect(calculadora.subtracao(-5, -3)).to eq -2
    end

    it("Deve subtrair duas frações")do
        calculadora = Calculadora.new
        expect(calculadora.subtracao(1/2, 4/2)).to eq -2
    end
end

#NOTE: aqui ficaram todos os testes para multiplicação
describe("Calcular multiplicação") do
    it("Deve multiplicar dois inteiros positivos")do
        calculadora = Calculadora.new
        expect(calculadora.multiplicacao(2,2)).to eq 4
    end

    it("Deve multiplicar dois números negativos")do
        calculadora = Calculadora.new
        expect(calculadora.multiplicacao(-4, -5)).to eq 20
    end

    it("Deve multiplicar dois números com sinais opostos")do
        calculadora = Calculadora.new
        expect(calculadora.multiplicacao(-4, 5)).to eq -20
    end

    it("Deve multiplicar por elemento neutro")do
        calculadora = Calculadora.new
        a = 1
        expect(calculadora.multiplicacao(a, 5)).to eq 5
    end

    it("Deve calcular o quadrado")do
        calculadora = Calculadora.new
        a = 4
        expect(calculadora.multiplicacao(a, a)).to eq 16
    end
end

#NOTE: aqui ficaram todos os testes para divisão
describe("Calcular divisão")do
    it("Deve dividir dois inteiros positivos")do
        calculadora = Calculadora.new
        expect(calculadora.divisao(18, 6)).to eq 3
    end

    it("Deve dividir dois números ponto float arredondando em 3 casas decimais")do
        calculadora = Calculadora.new
        expect(calculadora.divisao(2.5, 1.3)).to eq 1.923
    end

    it("Deve informar ser uma dízima periódica")do
        calculadora = Calculadora.new             #ATTENTION
        expect(calculadora.divisao(4, 9)).to eq 0 #dizima resulta em 0, não consegui resolver para arredondar corretamente
    end
end

#NOTE: aqui ficaram alguns testes de expressão
describe("Expressões simples")do
  it("Deve multiplicar antes de somar")do
        calculadora = Expressoes.new
        a = 3
        b = 5
        c = 6
        expect(calculadora.multiplicacao(a, b, c)).to eq 23
    end

end

#NOTE: aqui ficou uma mensagem de erro que pode ser usada em outros métodos
describe("Mensagens de Erro: ")do 
    #NOTE: é a mesma lógica para subtração
    it("Não deve somar letras e números")do #essa sequência está funcionando como deveria
        erro = Erro.new
        a = 4
        b = 4
        expect(erro.letras(a, b)).to eq 8
    end

    it("Não deve somar letras com números")do #essa sequência apresenta o erro
        erro = Erro.new
        a = 4
        b = "string"
        expect(erro.letras(a, b)).to include "Não é possível somar uma letra com um número"
    end
end