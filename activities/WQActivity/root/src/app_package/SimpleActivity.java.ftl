package ${packageName};

import ${superClassFqcn};
import android.os.Bundle;

import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.Toast;

import team.zhuoke.sdk.base.BaseActivity;
<#if includeCppSupport!false>
import android.widget.TextView;
</#if>

public class ${activityClass} extends BaseActivity {

    Button testBtn;

    @Override
    protected int getLayoutId() {
<#if generateLayout>
        return R.layout.${layoutName};
</#if>
    }

    @Override
    protected void initViews() {
        testBtn = new Button(this);
        testBtn.setText("Test Button");
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        addContentView(testBtn, layoutParams);
    }

    @Override
    protected void initListener() {
        testBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(mContext, "Hello, Test Button!", Toast.LENGTH_SHORT).show();
            }
        });
    }

    @Override
    protected void initData() {

<#include "../../../../common/jni_code_usage.java.ftl">
    }

<#include "../../../../common/jni_code_snippet.java.ftl">
}
