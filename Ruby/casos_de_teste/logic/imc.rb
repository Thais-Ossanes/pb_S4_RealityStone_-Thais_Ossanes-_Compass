
#NOTE: aqui fica toda a parte lógica dos arquivos imc
# por boas práticas é feito assim, e nos arquivos (partindo do 3)
# ficam apenas os testes e a parte lógica é linkada

def imc(peso, altura)
    if altura == 0 
        return "Não é possível calcular o IMC para altura = 0" #qundo cair nessa repetição precisa mostrar uma mensagem
    end
    imc_calculado = peso/(altura*altura)
    imc_calculado.round(1) #em métodos de refatoração o return n é necessário
end    