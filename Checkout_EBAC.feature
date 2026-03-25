Funcionalidade: EBAC Shop Checkout
Como eu desejo finalizar a compra dos produtos
Quero inserir as informações para liberar a compra
Para confirmar a compra dos produtos que estão bo carrinho

Esquema do Cenário: Checkout correto
Dado que acesse a tela para concluir o pedido e insira dados corretos
Quando Quando eu digitar: <Nome>
E <sobrenome>
E <pais>
E <endereco>
E <cidade>
E <CEP>
E <telefone>
E <e-mail>
Então deve possibilitar o clique no botão Finalizar compra para concluir e mostar a mensagem: <mensagem>

Exemplos:
    | Nome | sobrenome | pais | endereco | cidade | CEP | telefone | e-mail | mensagem |
    | "Joao"  | "Silva"  | "Brasil"  | "Rua Tempo" | "Fortaleza" | "00.000.000" | "(00)0 0000 0000" | "Joaosilva@ebac.com" | "Checkout realizado" |

Cenário: Checkout incorreto
Dado que acesse a tela para concluir o pedido e insira dados errados
Quando Quando eu digitar um dado errado: <Nome>
E <sobrenome>
E <pais>
E <endereco>
E <cidade>
E <CEP>
E <telefone>
E <e-mail>
Então deve mostrar uma mensagem de erro: "E-mail incorreto"

Exemplos:
    | Nome | sobrenome | pais | endereco | cidade | CEP | telefone | e-mail |
    | "Joao"  | "Silva"  | "Brasil"  | "Rua TempoErrado" | "Fortaleza" | "00.000.000" | "(00)0 0000 0000" | "Joaosilva@ebac.com" | 

Cenário: Checkout com campos vazios
Dado que acesse a tela para concluir o pedido com dados faltando
Quando Quando eu deixar de digitar um dos dados: <Nome>
E <sobrenome>
E <pais>
E <endereco>
E <cidade>
E <CEP>
E <telefone>
E <e-mail>
Então deve mostrar um alerta: "Possui campos vazios"

Exemplos:
    | Nome | sobrenome | pais | endereco | cidade | CEP | telefone | e-mail |
    | "Joao"  | "Silva"  | "Brasil"  | "Rua Tempo" | "Fortaleza" | "00.000.000" | "(00)0 0000 0000" | "" | 
