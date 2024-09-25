import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {

        //ArrayList para armazenar o cat�logo de conte�dos
        ArrayList<Conteudo> catalogo = new ArrayList<>();

        // Inst�ncia de Filmes
        Conteudo filme1 = new Filme("Meu Malvado Favorito", "Filme", 120);
        Conteudo filme2 = new Filme("Gente Grande", "Filme", 120);
        Conteudo filme3 = new Filme("Kung Fu Panda", "Filme", 120);
        Conteudo filme4 = new Filme("A Era do Gelo", "Filme", 120);
        Conteudo filme5 = new Filme("A Branca de Neve", "Filme", 120);

        // Inst�ncia de S�ries
        Conteudo serie1 = new Serie("Homens de Terno", "S�rie", 24, 30, 5);
        Conteudo serie2 = new Serie("Peaky Blinders", "S�rie", 24, 30, 5);
        Conteudo serie3 = new Serie("Breaking Bad", "S�rie", 24, 30, 5);
        Conteudo serie4 = new Serie("Greys Anatomy", "S�rie", 24, 30, 5);
        Conteudo serie5 = new Serie("This is Us", "S�rie", 24, 30, 5);

        // Adicionando os filmes e s�ries ao cat�logo
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

        // Exibindo o cat�logo
        System.out.println("Conte�dos dispon�veis no cat�logo:");
        for (Conteudo conteudo : catalogo) {
            System.out.println(conteudo.getTitulo() + " - " + conteudo.getCategoria());
        }
    }
}