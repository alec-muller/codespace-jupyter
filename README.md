# GitHub Codespace - Airflow | VS Code | Jupyter

Neste repositório você, usuário de Airflow no Windows, encontrará a resposta para seus problemas de erros de importação ao criar suas DAGs! :D

Mais fácil do que configurar através do Docker e necessita apenas do GitHub Codespace, sem mais nada!

Basta clonar este repositório, ir na opção "Code", na aba "Codespaces" clique no "+" e espere a mágica acontecer.

![Simples assim!](https://i.ibb.co/ccfLp97/image.png)

Será criado um ambiente pronto para usar o Python juntamente do Jupyter Notebook. No codespace web você se verá usando o próprio VS Code, mas também é possível utilizar este ambiente através da versão desktop do VS Code.


Em instantes você passará disso...
![](https://i.ibb.co/h2snBZ2/msg1848452665-421.jpg)

Para isso...
![](https://i.ibb.co/c2v9f18/msg1848452665-422.jpg)

Obs.: este ambiente do codespace é baseado na versão padrão já disponibilizada pelo próprio GitHub, porém com a modificação de já trazer o Airflow 2.7.2 instalado e pronto para uso.

## Personalização

Personalize o ambiente base conforme desejado através do arquivo [devcontainer.json](https://github.com/alec-muller/codespace-jupyter/blob/master/.devcontainer/devcontainer.json).

>Aconselho que verifique o funcionamento do free tier antes de seguir com a alteração de capacidade do ambiente.

No arquivo [setup.sh](https://github.com/alec-muller/codespace-jupyter/blob/master/.devcontainer/setup.sh) poderá alterar configurações extras do ambiente. É nele que faço a instalação do Airflow!
Este arquivo será lido unicamente na criação do ambiente codespace, não sendo lido ao ser reativado o ambiente já existente.

Caso seja necessário fazer alguma alteração nele, precisará criar um novo ambiente.

### Airflow

A versão que estamos utilizando é a 2.7.2, conforme dito acima, visto ser a mais atualizada neste momento.
Tive problemas com a instalação de libs constraints desta versão do Airflow, mas está funcional para a criação de DAGs.

![É possível fazer a instalação de pacotes adicionais manualmente](https://i.ibb.co/cLM6T52/msg1848452665-423.jpg "É possível fazer a instalação de pacotes adicionais manualmente")

Caso deseje instalar outra versão do Airflow, basta alterar conforme desejado na constante "AIRFLOW_VERSION" do arquivo setup e subir um novo ambiente do codespace.

Todas as constraints deverão (ao menos esperamos que sim) ser instaladas automaticamente conforme a versão do Airflow escolhida.

## VS Code Desktop

Você já criou seu ambiente, agora basta usá-lo no VS Code. Para isso, de volta no repositório que você clonou, vá de novo até as opções de codespaces que encontrará o ambiente que você subiu. Então, abra-o no VS Code desktop e seja feliz! :D

![Como abrir no VS Code](https://i.ibb.co/5jMFxRy/Captura-de-tela-2023-11-03-175018.png)

Lembre-se que qualquer 'pip install' que fizer através do Desktop, estará fazendo diremente no ambiente criado, então também estará disponível para usar no navegador.

-------------------------
-EN
# GitHub Codespace - Airflow | VS Code | Jupyter

In this repository, you, as a Windows user working with Airflow, will find solutions to your import error problems when creating your DAGs! :D

It's easier than configuring it through Docker, and it only requires GitHub Codespaces, nothing more!

Just clone this repository, go to the "Code" option, click on the "Codespaces" tab, click on the "+" sign, and wait for the magic to happen.

![It's as simple as that!](https://i.ibb.co/ccfLp97/image.png "It's as simple as that!")


An environment ready for using Python and Jupyter Notebook will be created. In the web codespace, you'll find yourself using VS Code itself, but you can also use this environment through the desktop version of VS Code.

In no time, you'll transition from this...
![](https://i.ibb.co/h2snBZ2/msg1848452665-421.jpg)

To this...
![](https://i.ibb.co/c2v9f18/msg1848452665-422.jpg)


Note: This codespace environment is based on the standard version already provided by GitHub, but with the modification of having Airflow 2.7.2 pre-installed and ready for use.

## Customization

You can customize the base environment as needed through the [devcontainer.json](https://github.com/alec-muller/codespace-jupyter/blob/master/.devcontainer/devcontainer.json).

>I recommend checking the functionality of the free tier before making changes to the environment capacity.

In the setup.sh file, you can change additional environment settings. It's in this file that I install Airflow!
This file will only be read when creating the codespace environment and won't be read when reactivating an existing environment.

If you need to make changes to it, you'll need to create a new environment.

### Airflow

The version we're using is 2.7.2, as mentioned earlier, as it's the most up-to-date version at the moment.
I encountered issues with installing constraints libraries for this Airflow version, but it works for creating DAGs.

![You can also manually install additional packages](https://i.ibb.co/cLM6T52/msg1848452665-423.jpg "You can also manually install additional packages")

If you want to install another Airflow version, simply change the "AIRFLOW_VERSION" constant in the setup file as desired and create a new codespace environment.

All constraints should (at least we hope so) be installed automatically according to the chosen Airflow version.

## VS Code Desktop

You've created your environment, now you just need to use it in VS Code. To do this, go back to the repository you cloned, navigate to the codespaces options, where you'll find the environment you created. Then, open it in the VS Code desktop and be happy! :D

![How to open it in VS Code](https://i.ibb.co/5jMFxRy/Captura-de-tela-2023-11-03-175018.png "How to open it in VS Code")

Remember that any 'pip install' you perform through the desktop will be done directly in the created environment, making it available for use in the browser as well.
