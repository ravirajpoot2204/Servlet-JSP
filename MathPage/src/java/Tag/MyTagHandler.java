package Tag;

import java.util.Date;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class MyTagHandler extends TagSupport {

    @Override
    public int doStartTag() throws JspException {

        try {
            //Tag Work
            JspWriter out = pageContext.getOut();
            out.println("<h1>Hello This is my Custom Tag from MyTagHandler</h1>");
            out.println("<p>This is custom Paragraph<p>"
                    + "<br>");
            out.println(new Date().toString());
        } catch (Exception e) {
            e.printStackTrace();
        }

        return SKIP_BODY;
    }

}
