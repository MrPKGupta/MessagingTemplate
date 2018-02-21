package ${packageName}.${packageExtension};

import ${packageName}.BasePresenter;
import ${packageName}.BaseView;

public class ${msgContractName} {
    
    interface View extends BaseView<Presenter> {
		void onMessageSent(String message);

        void onMessageReceived(String message);
    }

    interface Presenter extends BasePresenter {
		void sendMessage(String message);

        void receiveMessage(String message);
    }
}