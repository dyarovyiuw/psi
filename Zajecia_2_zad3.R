# Wczytaj dane tekstowe
# Wczytaj plik tekstowy z lokalnego dysku
text <- readLines(file.choose())
text


# Tworzenie chmury s³ów za pomoc¹ pakietu wordcloud
install.packages("wordcloud")
library(wordcloud)



# Opcje chmury s³ów
?wordcloud
# Zmiana wartoœci min.freq i max.words w celu wyœwietlenia mniejszej/wiêkszej liczby s³ów.
# min.freq: s³owa o czêstoœci poni¿ej tej wartoœci nie bêd¹ wyœwietlane
# max.words: maksymalna liczba s³ów do wyœwietlenia


# Utwórz chmurê s³ów
wordcloud(frequent_terms$WORD, frequent_terms$FREQ)


# Ograniczenie liczby s³ów w chmurze poprzez okreœlenie minimalnej czêstoœci
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4)


# Ograniczenie liczby s³ów w chmurze poprzez okreœlenie maksymalnej liczby s³ów
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, max.words = 5)



# Optymalizacja i dostosowanie wyników
# Dodanie koloru do chmury s³ów dla lepszej wizualizacji
# Dodanie koloru
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4, colors = brewer.pal(8,"Dark2"))
# Dodanie koloru
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, max.words = 5, colors = brewer.pal(8,"Accent"))
?brewer.pal
brewer.pal.info


# Dodanie ró¿nych palet kolorystycznych
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4, colors = brewer.pal(9,"Blues"))
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4, colors = brewer.pal(9,"Reds"))
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4, colors = brewer.pal(9,"Greens"))



frequent_terms <- freq_terms(text)
frequent_terms
frequent_terms <- freq_terms(text, stopwords = Top200Words)
plot(frequent_terms)


