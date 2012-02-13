.class public Lcom/motorola/blur/setup/NeedConnectionActivity;
.super Landroid/app/Activity;
.source "NeedConnectionActivity.java"


# instance fields
.field back:Landroid/widget/Button;

.field mAb:Lcom/motorola/android/widget/ActionBar;

.field mSetupWifi:Landroid/widget/RadioButton;

.field mSkip:Landroid/widget/RadioButton;

.field next:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v1, 0x7f03002b

    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/NeedConnectionActivity;->setContentView(I)V

    .line 34
    const v1, 0x7f0b00cb

    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/NeedConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/motorola/blur/setup/NeedConnectionActivity;->mSetupWifi:Landroid/widget/RadioButton;

    .line 35
    const v1, 0x7f0b00cc

    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/NeedConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/motorola/blur/setup/NeedConnectionActivity;->mSkip:Landroid/widget/RadioButton;

    .line 37
    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/NeedConnectionActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 38
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "ShowSkipSetupMenu"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/motorola/blur/setup/NeedConnectionActivity;->mSkip:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 42
    :cond_0
    const v1, 0x7f0b0011

    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/NeedConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/widget/ActionBar;

    iput-object v1, p0, Lcom/motorola/blur/setup/NeedConnectionActivity;->mAb:Lcom/motorola/android/widget/ActionBar;

    .line 43
    const v1, 0x7f0c0003

    const v2, 0x7f0b0001

    invoke-static {p0, v1, v2}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/NeedConnectionActivity;->next:Landroid/widget/Button;

    .line 44
    const v1, 0x7f0c0004

    const/high16 v2, 0x7f0b

    invoke-static {p0, v1, v2}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/NeedConnectionActivity;->back:Landroid/widget/Button;

    .line 45
    iget-object v1, p0, Lcom/motorola/blur/setup/NeedConnectionActivity;->mAb:Lcom/motorola/android/widget/ActionBar;

    iget-object v2, p0, Lcom/motorola/blur/setup/NeedConnectionActivity;->back:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 46
    iget-object v1, p0, Lcom/motorola/blur/setup/NeedConnectionActivity;->mAb:Lcom/motorola/android/widget/ActionBar;

    iget-object v2, p0, Lcom/motorola/blur/setup/NeedConnectionActivity;->next:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 47
    iget-object v1, p0, Lcom/motorola/blur/setup/NeedConnectionActivity;->next:Landroid/widget/Button;

    new-instance v2, Lcom/motorola/blur/setup/NeedConnectionActivity$1;

    invoke-direct {v2, p0}, Lcom/motorola/blur/setup/NeedConnectionActivity$1;-><init>(Lcom/motorola/blur/setup/NeedConnectionActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v1, p0, Lcom/motorola/blur/setup/NeedConnectionActivity;->back:Landroid/widget/Button;

    new-instance v2, Lcom/motorola/blur/setup/NeedConnectionActivity$2;

    invoke-direct {v2, p0}, Lcom/motorola/blur/setup/NeedConnectionActivity$2;-><init>(Lcom/motorola/blur/setup/NeedConnectionActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method
