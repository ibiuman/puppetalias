# Palvelinten hallinta h2 #

### Tehtävän kuvaus ###
Tarkoituksena on tehdä puppet moduli, joka tekee asetukset jollekkin komentorivi- tai graafisen käyttöliittymän ohjelmalle.
Raportti tästä on myös tehtävä GitHubiin MarkDownilla. 

### Gitin asentaminen ja testaus ###
Tehtävä aloitettaan asentamalla Git ohjelma komennoille **sudo apt-get update** ja **sudo apt-get install git**. Tämän jälkeen testasin, että
ohjelma on asennettu luomalla testiprojektin komennolla **git init testproject** ja sit menemällä tehtyyn kansioon ja sinne **nano README** jonne
kirjoitin jotain tekstiä ja sitten käytin komentoja **git add .** ja **git commit**. Jos kaikki meni onnistuneesti gitin pitäisi toimia.

### Modulin luonti ja testaus ###
Aloitin tekemällä githubiin uuden repositoryn tehtävää varten. Tämän jälkeen suoritin komennon **git clone https://github.com/ibiuman/puppetalias.git**, jotta
pääsemme muokkaamaan tuota repositorya. Kerroimme gitille kuka olen kommennoilla **git config --global user.mail "ville.kauppinen@gmail.com"** ja **git config --global
user.name "Ville Kauppinen"**. Sitten vielä laitoin githubin kirjautumisen muistiin komennolla **git config --global credential.helper "cache --timeout=3600". Tämä siksi
ettei tarvitse, joka kerta repositorya muokatessa laittaa käyttäjätunnusta ja salasanaa.

Aloitin luomalla moduulille kansion /etc/puppet/modules/ paikkaan komennolla **sudo mkdir xtermcolors**. Sen sisään tein kansiot templates ja manifests. Manifests kansion sisään
tein tiedoston init.pp komennolla **sudoedit init.pp** jonne kirjoitin seuraavan koodinpätkän: ![alt text](https://github.com/ibiuman/puppetalias/blob/master/modulecode.png)
Sitten menin templates kansioon ja syötin komennon **sudo cp /etc/X11/app-defaults/XTerm-color /etc/puppet/modules/xtermcolors/templates/XTerm-color.erb** eli kopion tuon 
XTerm-color tiedoston templates kansioon ja vaihdoin samalla sen tiedostonimen perään .erb. Tämän jälkeen **sudoedit XTerm-color.erb** komennolla kävin vaihtamassa
*VT100*foreground: ja *VT100*background: kohdat haluamakseni väreiksi. 

Ennen moduulit suorittamista xterm näytti tältä: ![alt text](https://github.com/ibiuman/puppetalias/blob/master/xtermbefore.png). Moduuli ajettiin komennolla
**sudo puppet apply -e 'file {"xtermcolors":}'**. Tämän jälkeen xterm näyttää tältä: ![alt text](https://github.com/ibiuman/puppetalias/blob/master/xtermafter.png)
Sitten kopioimme vielä tuon moduulikansion git projektikansioon ja siirsimme sen sieltä itse githubiin.

### Lähteet ###
http://terokarvinen.com/2017/aikataulu-%E2%80%93-palvelinten-hallinta-ict4tn022-2-%E2%80%93-5-op-uusi-ops-loppukevat-2017-p2
http://terokarvinen.com/2016/publish-your-project-with-github
https://guides.github.com/features/mastering-markdown/

-Ville Kauppinen
