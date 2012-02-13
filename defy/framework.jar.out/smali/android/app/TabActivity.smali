.class public Landroid/app/TabActivity;
.super Landroid/app/ActivityGroup;
.source "TabActivity.java"


# instance fields
.field private mDefaultTab:Ljava/lang/String;

.field private mDefaultTabIndex:I

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    return-void
.end method

.method private ensureTabHost()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    if-nez v0, :cond_0

    const v0, 0x1090067

    invoke-virtual {p0, v0}, Landroid/app/TabActivity;->setContentView(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getTabHost()Landroid/widget/TabHost;
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/TabActivity;->ensureTabHost()V

    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method public getTabWidget()Landroid/widget/TabWidget;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    return-object v0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "childActivity"
    .parameter "title"

    .prologue
    invoke-virtual {p0}, Landroid/app/TabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    .local v0, tabView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/TextView;

    .end local v0           #tabView:Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/app/ActivityGroup;->onContentChanged()V

    const v0, 0x1020012

    invoke-virtual {p0, v0}, Landroid/app/TabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a TabHost whose id attribute is \'android.R.id.tabhost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p0}, Landroid/app/TabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPostCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Landroid/app/TabActivity;->ensureTabHost()V

    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    invoke-direct {p0}, Landroid/app/TabActivity;->ensureTabHost()V

    const-string v1, "currentTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, cur:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    if-ltz v1, :cond_1

    iget-object v1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    iget v2, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .local v0, currentTabTag:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDefaultTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    iput p1, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    return-void
.end method

.method public setDefaultTab(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    iput-object p1, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    return-void
.end method
