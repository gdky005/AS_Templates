dependencies {
    <#if !(hasDependency('zkteam.zk_sdk'))>
    implementation zkteam.zk_sdk
    </#if>
}
