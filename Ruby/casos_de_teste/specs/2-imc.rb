require 'rspec'

def imc(peso, altura)
    if altura == 0 
        return "Não é possível calcular o IMC para altura = 0" #qundo cair nessa repetição precisa mostrar uma mensagem
    end
    imc_calculado = peso/(altura*altura)
    imc_calculado.round(1) #em métodos de refatoração o return n é necessário
end    

describe("IMC") do 
    it("Deve calcular com peso e altura corretos") do 
        peso = 60                                   
        altura = 1.70
        expect(imc(peso, altura)).to eq 20.8 

    end

    it ("Não deve calcular o IMC para altura = 0")do #outro caso de testes
        peso = 60
        altura = 0
        expect(imc(peso, altura)).to include "Não é possível calcular o IMC para altura = 0" #mensagem precisa ser igual ao return
    end
end
