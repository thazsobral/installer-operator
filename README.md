# installer-operator
Automatizador de tarefas, de instalação e configuração de programas.

Esse promete servir de base para seu dia ficar mais ágil e agradável.😉

## Como utilizar?
1. Encontre e defina o SO que vai utilizar
2. Adicione os scripts de instalação dos softwares que deseja na pasta programs dentro da pasta do SO decidido. **Lembre-se de salvar com extensão .sh**
3. Adicione os arquivos de configuração na pasta configurations da pasta do SO decidido. **Lembre-se de salvar com extensão .sh**

## Como executar?

### Exemplo de execução:
```bash
./installer.sh install ubuntu
$ Installing NVM ...
```
```bash
$ NVM successfully installed :)
./installer.sh config ubuntu
$ Configuring NVM ...
$ NVM configured successfuly :)
```
