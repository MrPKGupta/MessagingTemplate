package ${packageName}.${packageExtension}.model;

public class ${msgModelName} {
    private String text;
    private int type;

    public ${msgModelName}(String text, int type) {
        this.text = text;
        this.type = type;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public int getType() {
        return type;
    }
}
