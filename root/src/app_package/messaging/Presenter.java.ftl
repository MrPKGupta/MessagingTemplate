package ${packageName}.${packageExtension};

import static com.google.common.base.Preconditions.checkNotNull;

public class ${msgPresenterName} implements ${msgContractName}.Presenter {
    private final ${msgContractName}.View ${packageExtension}View;

    public ${msgPresenterName}(${msgContractName}.View ${packageExtension}View) {
        this.${packageExtension}View = checkNotNull(${packageExtension}View);
        this.${packageExtension}View.setPresenter(this);
    }

    @Override
    public void start() {

    }

    @Override
    public void stop() {

    }

    @Override
    public void receiveMessage(String message) {
        ${packageExtension}View.onMessageReceived(message);
    }

    @Override
    public void sendMessage(String message) {
        ${packageExtension}View.onMessageSent(message);
    }
}