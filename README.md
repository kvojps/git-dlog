# 📜 Git dlog

Este script percorre recursivamente um diretório base, localiza múltiplos repositórios Git e exibe informações relevantes como o último commit, branches locais e branches remotas de cada repositório.

![image](https://github.com/user-attachments/assets/a117b4c3-e318-4709-8efd-9f3e8dfea3fe)


## 🧪 Exemplo de Uso

- Substitua `"<PATH>"` pelo caminho do diretório onde deseja procurar os repositórios Git;
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
