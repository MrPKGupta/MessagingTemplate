package ${packageName}.${packageExtension}.adapter;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import ${packageName}.${packageExtension}.model.${msgModelName};

import java.util.ArrayList;
import java.util.List;

public class ${msgModelName}Adapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private List<${msgModelName}> ${classToResource(msgModelName)}List = new ArrayList<>();
    private static final int TYPE_SENT = 0;
    private static final int TYPE_RECEIVED = 1;

    @Override
    public int getItemCount() {
        if (${classToResource(msgModelName)}List == null)
            return 0;
        return ${classToResource(msgModelName)}List.size();
    }

    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View view;
        switch (viewType) {
            case TYPE_SENT:
                view = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_${classToResource(msgModelName)}_sent, parent, false);
                return new ${msgModelName}Holder(view);
            case TYPE_RECEIVED:
                view = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_${classToResource(msgModelName)}_received, parent, false);
                return new ${msgModelName}Holder(view);
        }
        return null;
    }

    @Override
    public int getItemViewType(int position) {
        if (${classToResource(msgModelName)}List != null) {
            ${msgModelName} ${classToResource(msgModelName)} = ${classToResource(msgModelName)}List.get(position);
            if (${classToResource(msgModelName)} != null) {
                return ${classToResource(msgModelName)}.getType();
            }
        }
        return 0;
    }

    @Override
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        ${msgModelName} ${classToResource(msgModelName)} = ${classToResource(msgModelName)}List.get(position);
        if (${classToResource(msgModelName)} != null) {
            ((MessageHolder) holder).tv${msgModelName}.setText(${classToResource(msgModelName)}.getText());
        }
    }

    static class ${msgModelName}Holder extends RecyclerView.ViewHolder {
        TextView tv${msgModelName};

        ${msgModelName}Holder(View view) {
            super(view);
            tv${msgModelName} = view.findViewById(R.id.tv${msgModelName});
        }
    }

    public void add${msgModelName}(${msgModelName} ${classToResource(msgModelName)}) {
        ${classToResource(msgModelName)}List.add(${classToResource(msgModelName)});
        notifyItemInserted(${classToResource(msgModelName)}List.size());
    }
}
