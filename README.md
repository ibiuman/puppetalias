# Palvelinten hallinta h2 #

## Tehtävän kuvaus ##
Tarkoituksena on tehdä puppet moduli, joka tekee asetukset jollekkin komentorivi- tai graafisen käyttöliittymän ohjelmalle.
Raportti tästä on myös tehtävä GitHubiin MarkDownilla. 

## Gitin asentaminen ja testaus ##
Tehtävä aloitettaan asentamalla Git ohjelma komennoille **sudo apt-get update** ja **sudo apt-get install git**. Tämän jälkeen testasin, että
ohjelma on asennettu luomalla testiprojektin komennolla **git init testproject** ja sit menemällä tehtyyn kansioon ja sinne nano README jonne
kirjoitimme jotain tekstiä ja sitten käytin komentoja **git add .** ja **git commit**. Jos kaikki meni onnistuneesti gitin pitäisi toimia.

## Modulin luonti ja testaus ##
Aloitin tekemällä githubiin uuden repositoryn tehtävää varten. Tämän jälkeen suoritin komennon **git clone https://github.com/ibiuman/puppetalias.git**, jotta
pääsemme muokkaamaan tuota repositorya. Kerroimme gitille kuka olen kommennoilla **git config --global user.mail "ville.kauppinen@gmail.com"** ja **git config --global
user.name "Ville Kauppinen"**. Sitten vielä laitoin githubin kirjautumisen muistiin komennolla **git config --global credential.helper "cache --timeout=3600". Tämä siksi
ettei tarvitse, joka kerta repositorya muokatessa laittaa käyttäjätunnusta ja salasanaa.

Tekstiä
