programa {
  cadeia alunosPreCadastradosTurma1[30]
  inteiro codigo = 1

  funcao inicio() {
    inteiro opcao, numeroTurma
    inteiro contAlunos1 = 0
    inteiro contAlunos2 = 0 
    inteiro contAlunos3 = 0
    inteiro contAlunos4 = 0
    inteiro contAlunos5 = 0 
    inteiro contAlunos6 = 0
    
    
    // cada turma precisa de um contador identificado pelo numero da turma
    inteiro turmas[6] = {1,2,3,4,5,6} // O código das turmas
    cadeia alunos1[30] // cada turma recebe 30 alunos identificado pelo numero da turma
    cadeia alunos2[30] 
    cadeia alunos3[30]
    cadeia alunos4[30]
    cadeia alunos5[30]
    cadeia alunos6[30]
    logico presencaTurma1[30] = {verdadeiro,verdadeiro,verdadeiro}

    faca {
      escreva("1 - Cadastrar\n")
      escreva("2 - Listar\n")
      escreva("3 - Presença\n")
      // escreva("4 - Refeições\n")
      escreva("4 - Carregar alunos pre cadastrados\n")
      escreva("5 - Listar alunos pre cadastrados\n")
      escreva("0 - Sair\n")
      leia(opcao)

      escolha(opcao) { // escolha do menu principal
        caso 1:
          limpa()
          escreva("Digite o numero da turma que sedeja cadastrar entre 1 e 6: \n")
          leia(numeroTurma)

          escolha(numeroTurma) { // escolha para definir a turma
            caso 1:
              escreva("Nome: ")
              leia(alunos1[contAlunos1])
              contAlunos1++
             pare
             caso 2:
              escreva("Nome: ")
              leia(alunos2[contAlunos2])
              contAlunos2++
             pare
             caso 3:
              escreva("Nome: ")
              leia(alunos3[contAlunos3])
              contAlunos3++
             pare
             caso 4:
              escreva("Nome: ")
              leia(alunos4[contAlunos4])
              contAlunos4++
             pare
             caso 5:
              escreva("Nome: ")
              leia(alunos5[contAlunos5])
              contAlunos5++
             pare
             caso 6:
              escreva("Nome: ")
              leia(alunos6[contAlunos6])
              contAlunos6++
             pare
             }
            
          
          // listar cada turma que tiver informação. programador: vitor 
        caso 2:
          limpa()
          escreva("Listar turma\n")
          escreva("Digite o numero da turma que deseja listar entre 1 e 6: \n")
          leia(numeroTurma)

          escolha(numeroTurma) {  // escolha para definir a turma
            caso 1:
              limpa()
              para(inteiro i = 0; i < contAlunos1; i++) {
                escreva(alunos1[i], "\n")
              }
            pare
            caso 2:
              limpa()
              para(inteiro i = 0; i < contAlunos2; i++) {
                escreva(alunos2[i], "\n")
              }
            pare
            caso 3:
              limpa()
              para(inteiro i = 0; i < contAlunos3; i++) {
                escreva(alunos3[i], "\n")
              }
            pare
            caso 4:
              limpa()
              para(inteiro i = 0; i < contAlunos4; i++) {
                escreva(alunos4[i], "\n")
              }
            pare
            caso 5:
              limpa()
              para(inteiro i = 0; i < contAlunos5; i++) {
                escreva(alunos5[i], "\n")
              }
            pare
            caso 6:
              limpa()
              para(inteiro i = 0; i < contAlunos6; i++) {
                escreva(alunos6[i], "\n")
              }
            pare
          }
        pare
        caso 3:
        inteiro opcaoTurma
          escreva("Lista de presença\n")
          escreva("Selecione a turma que deseja trabalhar")
          escreva("1,2,3,4,5,6\n")
          leia(opcaoTurma)

          escolha (opcaoTurma) {
            caso 1:
            para (inteiro i = 0; i < contAlunos1; i++){
              escreva("aluno: ", alunos1[contAlunos1])
            }

            pare 
          }
          leia ()
        pare
       
      }
    } enquanto(opcao != 0)

    // até aqui 
  }

  funcao carregarAlunos() {
    limpa()
    escreva("cadastrar alunos da turma 1\n\n")
    cadeia nomesAlunosTurma1[3] = {"Peter", "Joana","Sofia"}

    para(inteiro i = 0; i < 3; i++) {
      alunosPreCadastradosTurma1[i] = nomesAlunosTurma1[i]
    }
  }

  funcao listarAlunos() {
    limpa()
    escreva("Listando alunos da turma 1\n\n")
    para(inteiro i = 0; i < 3; i++) {
      escreva(alunosPreCadastradosTurma1[i], "\n")
    }
  }

  funcao marcarPresenca() {
    limpa()
    escreva("Presenças: \n\n")

    para(inteiro i = 0; i < 3; i++) {
      cadeia presenca = "Presente"
      se(presencaTurma1[i] != verdadeiro) {
        presenca = "Falta"
      }
      escreva(codigo , " - ", alunosPreCadastradosTurma1[i], " - ", presenca,"\n")
      codigo++
    }
  }
}