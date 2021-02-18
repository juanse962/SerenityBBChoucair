package questions;

import model.AcademyChoucairData;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Question;
import net.serenitybdd.screenplay.questions.Text;
import userinterface.SearchCoursePage;

import java.util.List;

public class Answer implements Question<Boolean> {
    private String question;
    public static Answer toThe(String question) {
        return new Answer(question);
    }

    public Answer(String question) {
        this.question = question;
    }

    @Override
    public Boolean answeredBy(Actor actor) {
        String nameCourse = Text.of(SearchCoursePage.NAME_COURSE).viewedBy(actor).asString();
        return question.equals(nameCourse);
    }

}
