package com.blog.project.entities;

public class message {

    private String content;
    private String type;
    private String cssClass;

    public message(String content, String type, String cssClass) {
        this.content = content;
        this.type = type;
        this.cssClass = cssClass;
    }
// getters  and setters

    public String getContent() {
        return content;
    }

    public String getType() {
        return type;
    }

    public String getCssClass() {
        return cssClass;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setCssClass(String cssClass) {
        this.cssClass = cssClass;
    }

}
