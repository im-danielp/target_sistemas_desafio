# Desafio Target Sistemas

**Usuário padrão para entrar no sistema:**<br>
Usuário: admin<br>
Senha: admin

[Figma com a prototipação do projeto e ideia inicial](https://www.figma.com/design/neDj8ydJnxXVMMnMGQu51F/Desafio-Target-Sistemas?node-id=0-1&t=ZKdwSFMQHTkizxAp-1)

## Telas
* Login: Solicita um usuário e senha para acessar o sistema. Ao clicar em "Cadastre-se" é redirecionado para a tela de criar conta, que também pode ser usada para acessar o sistema.
* Cadastre-se: Formulário com 4 campos a serem preenchidos, possuindo validação de texto, confirmação de senha e verificação de usuário já cadastrado.
* Tela inicial: Recebe um texto e ao clicar no botão "+" o insere na lista acima. O usuário também pode editar e excluir o registro, onde cada ação intefere na tela de relatório em tempo real.
* Relatório: Apresenta a quantidade de linhas dos registros (tanto quebra automática quanto manual), quantidade de edições e quantidade de caracteres. A edição é considerada apenas se o novo texto for diferente do antigo. Apresenta também um relatório em pizza contendo a relação entre caracteres letra e caracteres número inseridos na tela inicial.
* Perfil: Apresenta o nome do usuário logado e a quantidade de registros criados por ele. Nessa tela o usuário pode limpar todos os registros, excluir sua conta ou sair da conta (logoff).

## Estrutura
Utilizado MobX para gerenciamento de estado.<br>
A pasta ```core``` é utilizada para armazenar arquivos e lógicas usadas em várias partes do sistema, como models, constants, stores, collections, services e widgets.<br>
A pasta ```modules``` é utilziada para armazenar arquivos específicos para a lógca de cada tela, podendo haver as subpastas controllers, stores, widgets e collections.
