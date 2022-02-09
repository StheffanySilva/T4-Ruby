#language: pt

Funcionalidade: Login
- Eu como area da qualidade
- Quero que seja realizado a automação do Login
- Para que o time ganhe tempo com os testes

@Login
Cenario: Login com sucesso

Dado que eu eteja na pagina de login
Quando informo os dados de acesso
E clico no botão "Entrar"
Então visualizarei na pagina  dashboard o texto "Seja bem-vindo Willian Alves!"


@EsquemaCenario
Esquema do Cenario: Login com sucesso

Dado que eu eteja na pagina de login
Quando informo os dados de acesso <mail>, <password>
E clico no botão "Entrar"
Então recebo a seguinte validação <message>

Exemplos:

|mail                            | passaword | name          | type            | messege                      |
|"willian.alves@routeasy.com.br" |"123456"   | Willian Alves | "Sucesso"       | Seja bem-vindo Willian Alves!|
|willian.alves@routeasy.com.br"  |"123456"   | Willian Alves | "Email invalido"| Email ou senha incorretos.   |
|willian.alves@routeasy.com.br"  |"123456"   | Willian Alves | "Senha invalida"| Email ou senha incorretos.   |





