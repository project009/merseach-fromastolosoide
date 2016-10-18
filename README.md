<Div Align="Center"><h1>Emulador-Season-IV</h1></Div>

Bem vindo à página do GCIV Custom Server, um servidor para Grand Chase versão Eternal.

Esse servidor sempre será uma versão experimental de codar funções do jogo. E acredito que alguém tentará trabalhar nesses arquivos ao invés de ficar esperando por releases.

<h4>Desenvolvedores Atuais.</h4>
Victor,Hiro,Capcom, Mavisson

No Jogo atualmente É possivel logar,Criar Contar, comprar itens na loja de GP,VP, Registrar nick, New characters e jogar PVP e Missao no momento,Equipar Pets e Emoticons.

<h4>Como compilar?</h4>
O Emulador Foi Feito Na Linguagem Pascal com o Embarcadero Delphi XE7, nao pode ser compilado por versao abaixo da XE7!

O Emulador Requer Uma Library para funcionar,essa lib nao sera disponibilizada no projeto!

mais ela pode ser feita! e tem que estar com as seguintes Funçoes:

<p>_Encrypt = Deve receber o packet totalmente montado e irá retormar o packet pré pronto para envio, faltando apenas a size.</p>
<p>_Decrypt = Deve receber o packet do jeito que é recebido pelo cliente.</p>
<p>_GenerateIV = Recebe apenas o IV e o tipo de IV a ser criado e retorna o IV completo.</p>
<p>ClearPacket Deve receber o packet após ter passado pela rotina Encrypt e irá retornar o packet pronto para envio.</p>


<img src=http://i.imgur.com/SknoQLu.jpg>
<h1>
