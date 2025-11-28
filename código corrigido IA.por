programa {

    // ============================
    // DECLARAÇÃO DE VARIÁVEIS
    // ============================

    cadeia alunos1[30], alunos2[30], alunos3[30], alunos4[30], alunos5[30], alunos6[30]

    logico presencaAula1[30], presencaAula2[30], presencaAula3[30], presencaAula4[30], presencaAula5[30], presencaAula6[30]
    logico presencaAlmoco1[30], presencaAlmoco2[30], presencaAlmoco3[30], presencaAlmoco4[30], presencaAlmoco5[30], presencaAlmoco6[30]

    inteiro contAlunos1 = 0, contAlunos2 = 0, contAlunos3 = 0, contAlunos4 = 0, contAlunos5 = 0, contAlunos6 = 0
    inteiro contPreCadastrados1 = 0

    // ============================
    // INÍCIO DO PROGRAMA
    // ============================

    funcao inicio() {

        inteiro opcao = -1, numeroTurma

        // Inicializa presença como falso
        para (inteiro i = 0; i < 30; i++) {
            presencaAula1[i] = falso
            presencaAula2[i] = falso
            presencaAula3[i] = falso
            presencaAula4[i] = falso
            presencaAula5[i] = falso
            presencaAula6[i] = falso

            presencaAlmoco1[i] = falso
            presencaAlmoco2[i] = falso
            presencaAlmoco3[i] = falso
            presencaAlmoco4[i] = falso
            presencaAlmoco5[i] = falso
            presencaAlmoco6[i] = falso
        }

        faca {
            limpa()
            escreva("\n=== MENU PRINCIPAL ===\n")
            escreva("1 - Cadastrar aluno em turma\n")
            escreva("2 - Listar alunos de uma turma\n")
            escreva("3 - Marcar presença na aula\n")
            escreva("4 - Marcar presença no almoço\n")
            escreva("5 - Carregar alunos pré-cadastrados (turma 1)\n")
            escreva("6 - Listar alunos pré-cadastrados (turma 1)\n")
            escreva("0 - Sair\n")
            escreva("Escolha uma opção: ")

            leia(opcao)

            escolha(opcao) {

                // ============================
                // CADASTRAR ALUNO
                // ============================

                caso 1:
                    escreva("Digite o número da turma (1 a 6): ")
                    leia(numeroTurma)

                    se (numeroTurma < 1 ou numeroTurma > 6) {
                        escreva("Turma inválida!\n")
                        pare
                    }

                    cadeia nome
                    escreva("Digite o nome do aluno: ")
                    leia(nome)

                    logico sucesso = falso

                    se (numeroTurma == 1 e contAlunos1 < 30) {
                        alunos1[contAlunos1] = nome
                        contAlunos1++
                        sucesso = verdadeiro
                    } senao se (numeroTurma == 2 e contAlunos2 < 30) {
                        alunos2[contAlunos2] = nome
                        contAlunos2++
                        sucesso = verdadeiro
                    } senao se (numeroTurma == 3 e contAlunos3 < 30) {
                        alunos3[contAlunos3] = nome
                        contAlunos3++
                        sucesso = verdadeiro
                    } senao se (numeroTurma == 4 e contAlunos4 < 30) {
                        alunos4[contAlunos4] = nome
                        contAlunos4++
                        sucesso = verdadeiro
                    } senao se (numeroTurma == 5 e contAlunos5 < 30) {
                        alunos5[contAlunos5] = nome
                        contAlunos5++
                        sucesso = verdadeiro
                    } senao se (numeroTurma == 6 e contAlunos6 < 30) {
                        alunos6[contAlunos6] = nome
                        contAlunos6++
                        sucesso = verdadeiro
                    }

                    se (sucesso) {
                        escreva("Aluno cadastrado com sucesso!\n")
                    } senao {
                        escreva("Turma cheia! Não foi possível cadastrar.\n")
                    }
                pare


                // ============================
                // LISTAR ALUNOS
                // ============================

                caso 2:
                    escreva("Digite o número da turma (1 a 6): ")
                    leia(numeroTurma)

                    inteiro cont = obterContador(numeroTurma)

                    se (cont == 0) {
                        escreva("Nenhum aluno cadastrado nessa turma!\n")
                        pare
                    }

                    escreva("Alunos da turma ", numeroTurma, ":\n")
                    para (inteiro i = 0; i < cont; i++) {
                        escreva((i+1), " - ", obterAluno(numeroTurma, i), "\n")
                    }
                pare


                // ============================
                // REGISTRAR PRESENÇA NA AULA
                // ============================

                caso 3:
                    escreva("Digite o número da turma (1 a 6): ")
                    leia(numeroTurma)

                    inteiro contAula = obterContador(numeroTurma)

                    se (contAula == 0) {
                        escreva("Nenhum aluno cadastrado nessa turma!\n")
                        pare
                    }

                    para (inteiro i = 0; i < contAula; i++) {
                        cadeia resp
                        escreva("Aluno: ", obterAluno(numeroTurma, i), " - Presente aula (S/N)? ")
                        leia(resp)

                        se (resp == "S" ou resp == "s")
                            definirPresencaAula(numeroTurma, i, verdadeiro)
                        senao
                            definirPresencaAula(numeroTurma, i, falso)
                    }

                    listarPresencasAula(numeroTurma)
                pare


                caso 4:
                    escreva("Digite o número da turma (1 a 6): ")
                    leia(numeroTurma)

                    inteiro contAlmoco = obterContador(numeroTurma)

                    se (contAlmoco == 0) {
                        escreva("Nenhum aluno cadastrado nessa turma!\n")
                        pare
                    }

                    para (inteiro i = 0; i < contAlmoco; i++) {
                        cadeia resp
                        escreva("Aluno: ", obterAluno(numeroTurma, i), " - Presente almoço (S/N)? ")
                        leia(resp)

                        se (resp == "S" ou resp == "s")
                            definirPresencaAlmoco(numeroTurma, i, verdadeiro)
                        senao
                            definirPresencaAlmoco(numeroTurma, i, falso)
                    }

                    listarPresencasAlmoco(numeroTurma)
                pare


                // ============================
                // CARREGAR PRÉ-CADASTRADOS
                // ============================

                caso 5:
                    carregarAlunosPreCadastrados()
                pare


                // ============================
                // LISTAR PRÉ-CADASTRADOS
                // ============================

                caso 6:
                    listarAlunosPreCadastrados()
                pare


                caso 0:
                    escreva("Saindo...")
                pare

                caso contrario:
                    escreva("Opção inválida!\n")
            }

        } enquanto (opcao != 0)
    }

    // ================================================================
    // FUNÇÕES AUXILIARES
    // ================================================================

    funcao inteiro obterContador(inteiro turma) {
        se (turma == 1) retorne contAlunos1
        se (turma == 2) retorne contAlunos2
        se (turma == 3) retorne contAlunos3
        se (turma == 4) retorne contAlunos4
        se (turma == 5) retorne contAlunos5
        se (turma == 6) retorne contAlunos6
        retorne 0
    }

    funcao cadeia obterAluno(inteiro turma, inteiro indice) {
        se (turma == 1) retorne alunos1[indice]
        se (turma == 2) retorne alunos2[indice]
        se (turma == 3) retorne alunos3[indice]
        se (turma == 4) retorne alunos4[indice]
        se (turma == 5) retorne alunos5[indice]
        se (turma == 6) retorne alunos6[indice]
        retorne ""
    }

    funcao definirPresencaAula(inteiro turma, inteiro indice, logico valor) {
        se (turma == 1) presencaAula1[indice] = valor
        se (turma == 2) presencaAula2[indice] = valor
        se (turma == 3) presencaAula3[indice] = valor
        se (turma == 4) presencaAula4[indice] = valor
        se (turma == 5) presencaAula5[indice] = valor
        se (turma == 6) presencaAula6[indice] = valor
    }

    funcao definirPresencaAlmoco(inteiro turma, inteiro indice, logico valor) {
        se (turma == 1) presencaAlmoco1[indice] = valor
        se (turma == 2) presencaAlmoco2[indice] = valor
        se (turma == 3) presencaAlmoco3[indice] = valor
        se (turma == 4) presencaAlmoco4[indice] = valor
        se (turma == 5) presencaAlmoco5[indice] = valor
        se (turma == 6) presencaAlmoco6[indice] = valor
    }

    funcao logico obterPresencaAula(inteiro turma, inteiro indice) {
        se (turma == 1) retorne presencaAula1[indice]
        se (turma == 2) retorne presencaAula2[indice]
        se (turma == 3) retorne presencaAula3[indice]
        se (turma == 4) retorne presencaAula4[indice]
        se (turma == 5) retorne presencaAula5[indice]
        se (turma == 6) retorne presencaAula6[indice]
        retorne falso
    }

    funcao logico obterPresencaAlmoco(inteiro turma, inteiro indice) {
        se (turma == 1) retorne presencaAlmoco1[indice]
        se (turma == 2) retorne presencaAlmoco2[indice]
        se (turma == 3) retorne presencaAlmoco3[indice]
        se (turma == 4) retorne presencaAlmoco4[indice]
        se (turma == 5) retorne presencaAlmoco5[indice]
        se (turma == 6) retorne presencaAlmoco6[indice]
        retorne falso
    }

    funcao listarPresencasAula(inteiro turma) {
        inteiro cont = obterContador(turma)
        escreva("\n--- Presenças na Aula (Turma ", turma, ") ---\n")
        para (inteiro i = 0; i < cont; i++) {
            cadeia status = "Falta"
            se (obterPresencaAula(turma, i)) status = "Presente"
            escreva((i+1), " - ", obterAluno(turma, i), " - ", status, "\n")
        }
    }

    funcao listarPresencasAlmoco(inteiro turma) {
        inteiro cont = obterContador(turma)
        escreva("\n--- Presenças no Almoço (Turma ", turma, ") ---\n")
        para (inteiro i = 0; i < cont; i++) {
            cadeia status = "Falta"
            se (obterPresencaAlmoco(turma, i)) status = "Presente"
            escreva((i+1), " - ", obterAluno(turma, i), " - ", status, "\n")
        }
    }

    funcao carregarAlunosPreCadastrados() {
        cadeia nomesPre[3] = {"Peter", "Joana", "Sofia"}

        para (inteiro i = 0; i < 3; i++) {
            se (contAlunos1 < 30) {
                alunos1[contAlunos1] = nomesPre[i]
                contAlunos1++
                contPreCadastrados1++
            }
        }

        escreva("Alunos pré-cadastrados carregados!\n")
    }

    funcao listarAlunosPreCadastrados() {
        se (contPreCadastrados1 == 0) {
            escreva("Nenhum aluno pré-cadastrado!\n")
            retorne
        }

        escreva("Alunos pré-cadastrados (Turma 1):\n")
        para (inteiro i = 0; i < contPreCadastrados1; i++) {
            escreva((i+1), " - ", alunos1[i], "\n")
        }
    }
}
