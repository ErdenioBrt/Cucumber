Funcionalidade: EBAC Shop compras
Desejo fazer compras na EBAC Shop
Fazer cadastro e logar na conta

Cenário: Configurar produto
Dado que acesse a pagina de configuração de item
Quando eu confirmar o tamanho do item
E escolher a cor
E escolher a quantidade
Então deve ser adicionado ao carinho sendo permitido 10 itens no maximo

Cenário: Limpar as informações do produto
Dado que acesse a pagina de configuração de item
Quando eu clicar no botão limpar
Então deve resetar as configurações colocadas

Esquema do Cenário: login na plataforma válido
Dado que acesse a tela de login
Quando eu digitar <usuario> 
E senha <senha>
Então deve mostrar a mensagem <mensagem>

Examples:
    | usuario | senha | mensagenm |
    | "jose@ebac.com" | "1234" | "Bem vindo Jose" |
    | "maria@ebac.com" | "5678" | "Bem vindo Maria" |
    | "carlos@ebac.com" | "9012" | "Bem vindo Carlos" |


Esquema do Cenário: login na plataforma inválido
Dado que acesse a tela de login
Quando eu digitar <usuario> incorreto
E senha <senha> incorreta
Então deve mostrar a mensagem de erro <erro>

Examples:
    | usuario | senha | erro |
    | "jose@ebac.com" | "23412" | "Usuário ou senha inválidos" |
    | "mariafr@ebac.com"  | "5678"  | "Usuário ou senha inválidos" |
    | "carlosrte@ebac.com"  | "5123213"  | "Usuário ou senha inválidos" |


Esquema do Cenário: Checkout correto
Dado que acesse a tela para concluir o pedido
Quando Quando eu digitar: <Nome>
E <sobrenome>
E <pais>
E <endereco>
E <cidade>
E <CEP>
E <telefone>
E <e-mail>
Então deve possibilitar o clique no botão Finalizar compra para concluir e mostar a mensagem: <mensagem>

Examples:
    | Nome | sobrenome | pais | endereco | cidade | CEP | telefone | e-mail | mensagem |
    | "Joao"  | "Silva"  | "Brasil"  | "Rua Tempo" | "Fortaleza" | "00.000.000" | "(00)0 0000 0000" | "Joaosilva@ebac.com" | "Olá Joao" |

Cenário: Checkout incorreto
Dado que acesse a tela para concluir o pedido
Quando Quando eu digitar um dado errado: <Nome>
E <sobrenome>
E <pais>
E <endereco>
E <cidade>
E <CEP>
E <telefone>
E <e-mail>
Então deve mostrar uma mensagem de erro: "E-mail incorreto"

Examples:
    | Nome | sobrenome | pais | endereco | cidade | CEP | telefone | e-mail |
    | "Joao"  | "Silva"  | "Brasil"  | "Rua TempoErrado" | "Fortaleza" | "00.000.000" | "(00)0 0000 0000" | "Joaosilva@ebac.com" | 

Cenário: Checkout com campos vazios
Dado que acesse a tela para concluir o pedido
Quando Quando eu deixar de digitar um dos dados: <Nome>
E <sobrenome>
E <pais>
E <endereco>
E <cidade>
E <CEP>
E <telefone>
E <e-mail>
Então deve mostrar um alerta: "Possi campos vazios"

Examples:
    | Nome | sobrenome | pais | endereco | cidade | CEP | telefone | e-mail |
    | "Joao"  | "Silva"  | "Brasil"  | "Rua Tempo" | "Fortaleza" | "00.000.000" | "(00)0 0000 0000" | "" | 
