Funcionalidade: EBAC Shop Checkout
Como eu desejo finalizar a compra dos produtos
Quero inserir as informações para liberar a compra
Para confirmar a compra dos produtos que estão bo carrinho

Esquema do Cenário: Checkout correto
Dado que acesse a tela para concluir o pedido e insira dados corretos e os dados sejam aprovados
Quando Quando eu digitar: <Nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <CEP>, <telefone> e <e-mail>
E clicar em finalizar compra
Então deve possibilitar o clique no botão Finalizar compra para concluir e mostar a mensagem: <mensagem>

Exemplos:
    | Nome | sobrenome | pais | endereco | cidade | CEP | telefone | e-mail | mensagem |
    | "Joao"  | "Silva"  | "Brasil"  | "Rua Tempo" | "Fortaleza" | "00.000.000" | "(00)0 0000 0000" | "Joaosilva@ebac.com" | "Checkout realizado" |
    | "Maria"  | "Lucimar"  | "Brasil"  | "Rua Tempo" | "Fortaleza" | "00.000.000" | "(00)0 0000 0000" | "marialucimar@ebac.com" | "Checkout realizado" |
    | "Fernando"  | "Brito"  | "Brasil"  | "Rua Tempo" | "Fortaleza" | "00.000.000" | "(00)0 0000 0000" | "fernandobrito@ebac.com" | "Checkout realizado" |
    | "Selma"  | "Vieira"  | "Brasil"  | "Rua Tempo" | "Fortaleza" | "00.000.000" | "(00)0 0000 0000" | "selmavieira@ebac.com" | "Checkout realizado" |

Esquema do Cenário: Checkout incorreto
Dado que o usuário acesse a tela para concluir o pedido e insira dados e insira dados errados
Quando Quando eu digitar: <Nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <CEP>, <telefone> e <e-mail>
E clicar em finalizar compra
Então deve mostrar uma mensagem de erro: "E-mail incorreto"

Exemplos:
    | Nome | sobrenome | pais | endereco | cidade | CEP | telefone | e-mail |
    | "Joao"  | "Silva"  | "Brasil"  | "Rua TempoErrado" | "Fortaleza" | "00.000.000" | "(00)0 0000 0000" | "joaosilva@ebac.com" | 
    | "Maria"  | "Lucimar"  | "Brasil"  | "Rua Tempo" | "Gortaleza" | "00.000.000" | "(00)0 0000 0000" | "marialucimar@ebac.com" | 
    | "Fernando"  | "Brito"  | "Bresil"  | "Rua Tempo" | "Fortaleza" | "00.000.000" | "(00)0 0000 0000" | "fernandobrito@ebac.com" | 
    | "Selma"  | "Vieira"  | "Brasil"  | "Lua Tempo" | "Fortaleza" | "00.000.000" | "(00)0 0000 0000" | "selmavieira@ebac.com" | 


Esquema do Cenário: Checkout com campos vazios
Dado que o usuário acesse a tela para concluir o pedido e insira dados, mas está faltando algum dado
Quando Quando eu digitar: <Nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <CEP>, <telefone> e <e-mail>
E clicar em finalizar compra
Então deve mostrar um alerta: "Possui campos vazios"

Exemplos:
    | Nome | sobrenome | pais | endereco | cidade | CEP | telefone | e-mail |
    | "Joao"  | "Silva"  | "Brasil"  | "Rua Tempo" | "Fortaleza" | "00.000.000" | "(00)0 0000 0000" | "" | 
    | "Maria"  | "Lucimar"  | "Brasil"  | "Rua Tempo" | "" | "00.000.000" | "(00)0 0000 0000" | "marialucimar@ebac.com" |
    | "Fernando"  | "Brito"  | "Brasil"  | "" | "Fortaleza" | "00.000.000" | "(00)0 0000 0000" | "fernandobrito@ebac.com" |
    | "Selma"  | "Vieira"  | ""  | "Rua Tempo" | "Fortaleza" | "00.000.000" | "(00)0 0000 0000" | "selmavieira@ebac.com" |
