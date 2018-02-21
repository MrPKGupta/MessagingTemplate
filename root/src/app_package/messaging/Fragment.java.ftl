package ${packageName}.${packageExtension};

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageButton;

import ${packageName}.${packageExtension}.adapter.${msgModelName}Adapter;
import ${packageName}.${packageExtension}.model.${msgModelName};

import static com.google.common.base.Preconditions.checkNotNull;

public class ${msgFragmentName} extends Fragment implements ${msgContractName}.View {
    private ${msgContractName}.Presenter presenter;
    private ${msgModelName}Adapter messageAdapter;
    private RecyclerView rvMessage;
    private ImageButton btnSend;
    private EditText etMessage;

    public static ${msgFragmentName} newInstance() {
        return new ${msgFragmentName}();
    }

    @Override
    public void setPresenter(@NonNull ${msgContractName}.Presenter presenter) {
        this.presenter = checkNotNull(presenter);
    }

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View root = inflater.inflate(R.layout.${msgFragmentLayoutName}, container, false);

        btnSend = root.findViewById(R.id.btnSend);
        etMessage = root.findViewById(R.id.etMessage);
        rvMessage = root.findViewById(R.id.rvMessage);
        rvMessage.setLayoutManager(new LinearLayoutManager(getActivity()));
        rvMessage.setHasFixedSize(true);

        if (messageAdapter == null) {
            messageAdapter = new ${msgModelName}Adapter();
        }
        rvMessage.setAdapter(messageAdapter);

        btnSend.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String messageText = etMessage.getText().toString();
                if (!TextUtils.isEmpty(messageText)) {
                    etMessage.setText("");
                    presenter.sendMessage(messageText);
                }
            }
        });

        btnSend.setOnLongClickListener(new View.OnLongClickListener() {
            @Override
            public boolean onLongClick(View v) {
                String messageText = etMessage.getText().toString();
                etMessage.setText("");
                presenter.receiveMessage(messageText);
                return true;
            }
        });

        presenter.start();
        return root;
    }

    @Override
    public void onDestroyView() {
        presenter.stop();
        super.onDestroyView();
    }

    @Override
    public void onMessageReceived(String message) {
        messageAdapter.addMessage(new Message(message, 1));
        rvMessage.smoothScrollToPosition(messageAdapter.getItemCount() - 1);
    }

    @Override
    public void onMessageSent(String message) {
        messageAdapter.addMessage(new Message(message, 0));
        rvMessage.smoothScrollToPosition(messageAdapter.getItemCount() - 1);
    }
}
