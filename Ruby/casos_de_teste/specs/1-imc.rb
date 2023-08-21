require 'rspec'

#NOTE: esse teste é feito já possuindo todo o caso de testes, onde
# deve entrar os valores 60 e 1.70 e resultar em 20.7, estamos testando o percurso
def imc(peso, altura)
    imc_calculado = peso/(altura*altura)
    return imc_calculado.round(1) #pra aparecer na tela
end    

describe("IMC") do #descreve o nome do teste 'método'
    it("Deve calcular com peso e altura corretos") do #descreve o teste unitário
        peso = 60                                   #declarando variáveis
        altura = 1.70
        expect(imc(peso, altura)).to eq 20.8 #quando chamar o método 'IMC', passa pelos parâmetros 'peso, altura' esperamos que o valor seja igual "eq" = "???"

    end
end
