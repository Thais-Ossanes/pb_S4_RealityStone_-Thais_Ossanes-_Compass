require 'rspec'
require_relative '../src/calculadora.rb'

describe("Calculadora") do 
    it("Deve somar dois inteiros positivos") do 
        calculadora = Calculadora.new #define classe que será usada nos testes
        expect(calculadora.soma(4, 5)).to eq 9 #define o método e a execução do teste
    end

    it("Deve somar um número qualquer com 0") do
        calculadora = Calculadora.new #chamando a classe criada
        expect(calculadora.soma(9, 0)).to eq 9
    end
end
