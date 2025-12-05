

programa {
  funcao presenca() {
    cadeia nomes
        logico presenca[30]
        inteiro i = 
        

        // Marcar presença (S/N)
        escreva("\nMarcar presença (S para sim, N para não):\n")
        para(i = 0; i < 5; i++)
        {
            cadeia resposta
            escreva("O aluno ", nomes[i], " está presente? (S/N): ")
            leia(resposta)

            se (resposta == "S" ou resposta == "s")
                presenca[i] = verdadeiro
            senao
                presenca[i] = falso
        }

        // Mostrar relatório de presença
        escreva("\nRelatório de presença:\n")
        para(i = 0; i < 5; i++)
        {
            escreva(nomes[i], ": ")
            se (presenca[i])
                escreva("Presente\n")
            senao
                escreva("Ausente\n")
     }

  }
}