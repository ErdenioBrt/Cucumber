Funcionalidade: EBAC Shop Login
Como eu desejo acessar a minha conta
Quero digitar usuário e senha
Para ter acesso as informações de conta

Esquema do Cenário: login na plataforma válido
Dado que acesse a tela de login com dados corretos
Quando eu digitar <usuario> 
E senha <senha>
Então deve mostrar a mensagem <mensagem>

Exemplos:
    | usuario | senha | mensagenm |
    | "jose@ebac.com" | "1234" | "Bem vindo Jose" |
    | "maria@ebac.com" | "5678" | "Bem vindo Maria" |
    | "carlos@ebac.com" | "9012" | "Bem vindo Carlos" |


Esquema do Cenário: login na plataforma inválido
Dado que acesse a tela de login com dados incorretos
Quando eu digitar <usuario> incorreto
E senha <senha> incorreta
Então deve mostrar a mensagem de erro <erro>

Exemplos:
    | usuario | senha | erro |
    | "jose@ebac.com" | "23412" | "Usuário ou senha inválidos" |
    | "mariafr@ebac.com"  | "5678"  | "Usuário ou senha inválidos" |
    | "carlosrte@ebac.com"  | "5123213"  | "Usuário ou senha inválidos" |
