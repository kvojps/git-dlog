# 📜 Git dlog

Este script percorre recursivamente um diretório base, localiza múltiplos repositórios Git e exibe informações relevantes como o último commit e as branchs agrupadas por commit.

![image](https://github.com/user-attachments/assets/30876287-a91e-4bc2-a3be-1923e65f1582)


## 🧪 Exemplo de Uso

- Adicione em `BASE_PATH` o caminho do diretório onde deseja procurar os repositórios Git;
- Crie o alias para o git:
    ``` bash
    git config --global alias.dlog '!bash ~/scripts/git/gitdlog.sh'
    ```
- Garanta que a pasta exista e adicione o arquivo gitdlog.sh:
    ``` bash
    mkdir -p ~/scripts/git/
    ```
- Execute:
    ``` bash
    git dlog
    ```

## 💡 Referências

Este script foi inspirado e adaptado a partir do artigo original de **Andrew Rea**:

🔗 [https://andrewrea.co.uk/posts/git-log-over-multiple-repos/](https://andrewrea.co.uk/posts/git-log-over-multiple-repos/)
