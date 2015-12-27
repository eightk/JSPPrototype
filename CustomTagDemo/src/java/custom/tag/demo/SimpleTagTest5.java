/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package custom.tag.demo;

import custom.tag.model.Movie;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author hp
 */
public class SimpleTagTest5 extends SimpleTagSupport {

    public List getMovieList() {
        return movieList;
    }

    public void setMovieList(List movieList) {
        System.out.println("set movie list: "+ movieList.size());
        this.movieList = movieList;
        
    }

    @Override
    public void doTag() throws JspException, IOException {
        if (movieList != null) {
            Iterator it = movieList.iterator();
            System.out.println(movieList.size());
            while (it.hasNext()) {
                Movie movie = (Movie) it.next();
                getJspContext().setAttribute("movie", movie);
                getJspBody().invoke(null);
            }
        }
    }

    private List<Movie> movieList;
}
