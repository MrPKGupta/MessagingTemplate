package ${packageName}.${packageExtension};

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

import ${packageName}.util.ActivityUtils;

public class ${msgActivityName} extends AppCompatActivity {
    private ${msgPresenterName} messagingPresenter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${msgActivityLayoutName});

        ${msgFragmentName} messagingFragment =
                (${msgFragmentName}) getSupportFragmentManager().findFragmentById(R.id.contentFrame);
        if (messagingFragment == null) {
            messagingFragment = ${msgFragmentName}.newInstance();
            ActivityUtils.addFragmentToActivity(
                    getSupportFragmentManager(), messagingFragment, R.id.contentFrame);
        }

        messagingPresenter = new ${msgPresenterName}(messagingFragment);
    }
}
