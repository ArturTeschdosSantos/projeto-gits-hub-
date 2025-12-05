## Resumo do Projeto PROFSHUB

O projeto identifica um problema no Contraturno Tecnológico do SESI: o processo de registrar a presença dos alunos e o consumo diário de alimentos ainda é feito manualmente. 👨‍🏫📄 O professor anota quem está presente e quem comeu, depois envia à diretora, que precisa registrar novamente essas informações em outro sistema. Isso gera retrabalho, demora e chances de erros.

A escolha desse problema se justifica por acontecer diariamente e afetar a produtividade da equipe escolar. ⚠️ Além disso, a falta de registros organizados dificulta o controle do desperdício de alimentos, um dos objetivos do projeto. 🍽️♻️ Automatizar o processo torna o registro mais rápido, eficiente e permite identificar padrões reais de consumo.

Os principais usuários são os professores e a diretora, que lidam diretamente com os registros. 🧑‍🏫👩‍💼 Os alunos também se beneficiam indiretamente, já que o tempo economizado pode ser usado em atividades pedagógicas e a gestão dos alimentos se torna mais consciente.

A solução proposta é criar um sistema simples e integrado para registrar presença e consumo de alimentos. 🖥️ O sistema recebe nome, turma, presença e consumo. Se o aluno estiver ausente, registra automaticamente que não comeu. Todos os dados ficam organizados por turma e podem ser exportados em relatórios claros e rápidos, facilitando o controle interno e o acompanhamento do desperdício.

O fluxo do sistema inclui: selecionar a turma, selecionar o aluno, registrar presença, registrar se comeu (se presente), salvar os dados e gerar relatórios. 🔄📊

Responsabilidades do grupo:
Nathália Winter (líder) 👑
Artur Tesch (comunicador) 💬
Vitor Mello (programador) 💻
Isabele Brunner (analista) 📊

RESUMO DO CÓDIGO

O programa é um sistema simples de gerenciamento de turmas e alunos, feito em uma linguagem parecida com Portugol/VisualG.
Ele possui um menu principal com opções para:

Cadastrar alunos em uma das 6 turmas (cada uma com até 30 alunos).

Listar alunos cadastrados em qualquer turma.

Registrar presença dos alunos.

Refeições (ainda vazio).

Carregar alunos pré-cadastrados (somente da turma 1).

Listar alunos pré-cadastrados.

Além disso, existem 3 funções separadas:

🔹 carregarAlunos()

Carrega alunos pré-definidos (“Peter”, “Joana”, “Sofia”) para a turma 1.

🔹 listarAlunos()

Mostra os alunos carregados na função anterior.

🔹 marcarPresenca()

Exibe alunos pré-cadastrados com Presente ou Falta (mas contém um erro: usa presencaTurma1 que não está definido).

🎯 OBJETIVO DO PROGRAMA

O objetivo do programa é gerenciar informações escolares de várias turmas permitindo:

✔ Cadastro de alunos

Cada aluno é armazenado no vetor correspondente à sua turma.

✔ Listagem de alunos por turma

Mostra todos os alunos cadastrados em uma turma escolhida.

✔ Registro de presença

Permite marcar presença dos alunos (embora o código tenha erros nessa parte).

✔ Gerenciamento de dados pré-cadastrados

Há um sistema auxiliar para carregar e listar alunos já definidos previamente (para a turma 1).
