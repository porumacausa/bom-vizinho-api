# Bom Vizinho API

[Vê aqui um video de introdução da ideia](https://youtu.be/NECdIh1b1fA)

Se já és membro da equipa no GitHub, junta-te à conversa no Gitter no [canal Geral](https://gitter.im/porumacausa) ou então passa pelo [canal da API (acesso público)](https://gitter.im/porumacausa/API)

Se ainda não és membro da [equipa Código por uma Causa](https://github.com/orgs/porumacausa/people), deixa-nos uma [nota nos issues com o teu user to GitHub](https://github.com/porumacausa/brainstorming/issues) para que te possamos adicionar.

## Máquina Virtual de desenvolvimento
Caso queiras experimentar o projeto sem instalar as ferramentas de desenvolvimento na tua máquina, podes usar uma máquina virtual já preparada.
Para iniciar a máquina virtual necessitas de ter o [Virtual Box](https://www.virtualbox.org/) e o [Vagrant](https://www.vagrantup.com/downloads.html) instalados.

Necessitas também de clonar o repositório do projeto para uma pasta na tua máquina. Depois, na linha de comandos dentro da pasta do projeto só tens que fazer ```vagrant up``` e esperar que o Vagrant inicie a máquina virtual.

No final, terás uma nova máquina virtual no Virtual Box que podes lançar. O user é 'vagrant' com a password 'vagrant'.
No Desktop terás um link para iniciar o Visual Studio Code e o projeto estará disponivel em '/vagrant'.

Para iniciar a aplicação, tens que fazer na linha de comandos da máquina virtual:
```Shell
# change do project folder
cd /vagrant

# restore project dependencies
dnu restore

# start-up kestrel app server
dnx -p ./src/BomVizinhoAPI web
```

Depois, para testar o acesso à API, abre ```http://localhost:5000/api/Auth``` no teu browser.

Podes ver mais informação sobre o ASP.NET 5 no site da [documentação](https://docs.asp.net/en/latest/getting-started/index.html).

##Funcionalidades:

- 0 - Auth (Facebook, google+, twitter)
- 1 - Workflow inserções de bens (UX)
- 2 - Motor de pesquisa de Bens
- 5 - sistema de permissões (Morada só disponível a quem está logado)
- 6 - sistema de reputação
- 3 - perfil utilizador
- 4 - perfil bem
-   - workflow necessidade de bem (UX)
- 9 - Gestão de comunidades (???)
- 7 - Sistema de tags
- 8 - sistema de sugestões - lista de vizinhos (estilo Linkedin)

##SE - serviços de informação (backend)

- Filipe
- Rafael
- Rafa
- Vitor
- Nuno
- Huntero

##FE - Frontend

- Filipe
- Helder
- Vitor
- Nuno
- Ricardo
- Huntero

##UX - Interação com o utilizador

- Carlos
- Rafael
- Helder
- Ricardo
- Nuno

##Backend

- Auth (Poc)
    - serviço backend vnext sessão utilizador
    - Html starter com auth
- Logica motor de pesquisa (se houver tempo)

##Frontend

- A partir de wireframes de UX
- Fazer base da APP em Html/Css/js

##UX

- Gerar de doc que descreve a interação do usar da app no workflow inserção/necessidade de bem

##Design

- Mockups/wireframes de
    - workflow necessidade/inserção bem
    - perfil utilizador
    - perfil de bem

