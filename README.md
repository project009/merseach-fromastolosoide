# merseach-fromastolosoide
Emulador-Season-IV

Bem vindo à página do GCIV Custom Server, um servidor para Grand Chase versão Eternal.

Esse servidor sempre será uma versão experimental de codar funções do jogo. E acredito que alguém tentará trabalhar nesses arquivos ao invés de ficar esperando por releases.

<h4>Desenvolvedores Atuais.</h4>
Victor GCB Hiro Yusuke(Firefoxmito)

O que funciona?É possivel logar, comprar itens na loja, Registrar nick, New characters e jogar PVP e Missao no momento.
<h4>Como compilar?</h4>
Projeto criado com o Delphi XE7, porém pode ser compilado com qualquer versão mais recente.GCDLL LibNa source terá uma referência à "GCDLL.dll""GCDLL" é uma lib privada e não será compartilhada nesse projeto. Não será liberada mas talvez alguém possa fazer isso pra você, ou você mesmo xDEla precisa estar nesse formato:


<p>_Encrypt = Deve receber o packet totalmente montado e irá retormar o packet pré pronto para envio, faltando apenas a size.</p>
<p>_Decrypt = Deve receber o packet do jeito que é recebido pelo cliente.</p>
<p>_GenerateIV = Recebe apenas o IV e o tipo de IV a ser criado e retorna o IV completo.</p>
<p>ClearPacket Deve receber o packet após ter passado pela rotina Encrypt e irá retornar o packet pronto para envio.</p>


<img src=http://i.imgur.com/SknoQLu.jpg>
