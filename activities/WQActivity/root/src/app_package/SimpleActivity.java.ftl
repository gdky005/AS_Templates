package ${packageName};

import ${superClassFqcn};
import android.os.Bundle;
import team.zhuoke.sdk.base.BaseActivity;
<#if includeCppSupport!false>
import android.widget.TextView;
</#if>

public class ${activityClass} extends BaseActivity {


    @Override
    protected int getLayoutId() {
<#if generateLayout>
        return R.layout.${layoutName};
</#if>
    }

    @Override
    protected void initViews() {

    }

    @Override
    protected void initListener() {

    }

    @Override
    protected void initData() {
<#include "../../../../common/jni_code_usage.java.ftl">
    }

<#include "../../../../common/jni_code_snippet.java.ftl">
}
