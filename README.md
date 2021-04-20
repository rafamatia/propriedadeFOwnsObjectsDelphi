# Propriedade OwnsObjects (Projeto Clean Code)
Este projeto foi desenvolvido em Delphi 10.2, afins demonstrativos, da utilidade da propriedade OwnsObjects, da classe TObjectList, do Delphi.

A propriedade OwnsObjects especifica se a lista de strings possui os objetos armazenados ou não. Se a propriedade OwnsObjects for definida como True , o destruidor Destroy irá liberar a memória alocada para esses objetos.


## Documentação Delphi

http://docwiki.embarcadero.com/Libraries/Sydney/en/System.Classes.TStringList.OwnsObjects

https://www.freepascal.org/docs-html/current/fcl/contnrs/tobjectlist.ownsobjects.html


## Como testar

1º Rode a aplicação.

2º Clique no "TRUE" e feche a tela.
     - Você verá que nada irá acontecer.

3º Rode a aplicação novamente.

4º Clique no botão "FALSE" e feche a tela.
     - Você verá que será apresentado um relatório de vazamento de memória.
