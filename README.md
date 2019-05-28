# Triola Swril

Curso do [Swril](https://swirlstats.com/) de introdução à Estatítica, baseado no livro "Introdução à Estatística", de Mário Triola (12a edição em português). Criado para o Curso de Metodologia Quantitativa em Ciência Política, do programa de Pós-Graduação em Ciência Política da Universidade Federal do Pará - UFPA, Belém do Pará, Brasil.

### Instalação com o github

Para instalar o curso, execute os comandos abaixo no R. Requer conexão com a internet.

```r
if(!"swirl" %in% rownames(installed.packages())) {install.packages("swirl")}
library(swirl)
try(uninstall_course("Triola Swril"), silent = TRUE)
install_course_github("Murilojunqueira", "Triola_Swril")
```

### Fazendo o curso

Para acessar o curso, basta executar as seguintes linhas:

```r
library(swirl)
select_language(language = "portuguese")
swirl()
```

E então seguir o caminho dentro do swirl até o curso "Triola Swril"

### Ajuda

Para entrar em contato comigo sobre esse curso, me envie um email para mjunqueira@ufpa.br

Para entrar em contato com os criadores do swirl vá em  http://swirlstats.com/, 

Ou envie um email para info@swirlstats.com