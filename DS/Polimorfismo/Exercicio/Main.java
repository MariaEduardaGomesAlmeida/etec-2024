import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {

        //ArrayList para armazenar o catálogo de conteúdos
        ArrayList<Conteudo> catalogo = new ArrayList<>();

        // Instância de Filmes
        Conteudo filme1 = new Filme("Meu Malvado Favorito", "Filme", 120);
        Conteudo filme2 = new Filme("Gente Grande", "Filme", 120);
        Conteudo filme3 = new Filme("Kung Fu Panda", "Filme", 120);
        Conteudo filme4 = new Filme("A Era do Gelo", "Filme", 120);
        Conteudo filme5 = new Filme("A Branca de Neve", "Filme", 120);

        // Instância de Séries
        Conteudo serie1 = new Serie("Homens de Terno", "Série", 24, 30, 5);
        Conteudo serie2 = new Serie("Peaky Blinders", "Série", 24, 30, 5);
        Conteudo serie3 = new Serie("Breaking Bad", "Série", 24, 30, 5);
        Conteudo serie4 = new Serie("Greys Anatomy", "Série", 24, 30, 5);
        Conteudo serie5 = new Serie("This is Us", "Série", 24, 30, 5);

        // Adicionando os filmes e séries ao catálogo
        catalogo.add(filme1);
        catalogo.add(filme2);
        catalogo.add(filme3);
        catalogo.add(filme4);
        catalogo.add(filme5);
        catalogo.add(serie1);
        catalogo.add(serie2);
        catalogo.add(serie3);
        catalogo.add(serie4);
        catalogo.add(serie5);

        // Exibindo o catálogo
        System.out.println("Conteúdos disponíveis no catálogo:");
        for (Conteudo conteudo : catalogo) {
            System.out.println(conteudo.getTitulo() + " - " + conteudo.getCategoria());
        }
    }
}