# Wczytaj dane tekstowe
# Wczytaj plik tekstowy z lokalnego dysku
text <- readLines(file.choose())
text


# Tworzenie chmury s��w za pomoc� pakietu wordcloud
install.packages("wordcloud")
library(wordcloud)



# Opcje chmury s��w
?wordcloud
# Zmiana warto�ci min.freq i max.words w celu wy�wietlenia mniejszej/wi�kszej liczby s��w.
# min.freq: s�owa o cz�sto�ci poni�ej tej warto�ci nie b�d� wy�wietlane
# max.words: maksymalna liczba s��w do wy�wietlenia


# Utw�rz chmur� s��w
wordcloud(frequent_terms$WORD, frequent_terms$FREQ)


# Ograniczenie liczby s��w w chmurze poprzez okre�lenie minimalnej cz�sto�ci
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4)


# Ograniczenie liczby s��w w chmurze poprzez okre�lenie maksymalnej liczby s��w
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, max.words = 5)



# Optymalizacja i dostosowanie wynik�w
# Dodanie koloru do chmury s��w dla lepszej wizualizacji
# Dodanie koloru
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4, colors = brewer.pal(8,"Dark2"))
# Dodanie koloru
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, max.words = 5, colors = brewer.pal(8,"Accent"))
?brewer.pal
brewer.pal.info


# Dodanie r�nych palet kolorystycznych
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4, colors = brewer.pal(9,"Blues"))
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4, colors = brewer.pal(9,"Reds"))
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4, colors = brewer.pal(9,"Greens"))



frequent_terms <- freq_terms(text)
frequent_terms
frequent_terms <- freq_terms(text, stopwords = Top200Words)
plot(frequent_terms)


