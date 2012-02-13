.class public Lcom/motorola/blur/setup/DataPlanSettingActivity;
.super Lcom/motorola/blur/setup/ConnectionSetupActivity;
.source "DataPlanSettingActivity.java"


# static fields
.field static final TAG:Ljava/lang/String; = "DataPlanSettingActivity"

.field static final sIsFlat:Ljava/lang/String; = "isFlat"


# instance fields
.field mAb:Lcom/motorola/android/widget/ActionBar;

.field mBack:Landroid/widget/Button;

.field mFlat:Landroid/widget/RadioButton;

.field mNext:Landroid/widget/Button;

.field mNonflat:Landroid/widget/RadioButton;

.field mPref:Landroid/content/SharedPreferences;

.field mPrefEdit:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/motorola/blur/setup/ConnectionSetupActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/DataPlanSettingActivity;->setContentView(I)V

    .line 39
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/DataPlanSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity;->mFlat:Landroid/widget/RadioButton;

    .line 40
    const v0, 0x7f0b0058

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/DataPlanSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity;->mNonflat:Landroid/widget/RadioButton;

    .line 41
    const v0, 0x7f0b0011

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/DataPlanSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    iput-object v0, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity;->mAb:Lcom/motorola/android/widget/ActionBar;

    .line 42
    const v0, 0x7f0c0004

    const/high16 v1, 0x7f0b

    invoke-static {p0, v0, v1}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity;->mBack:Landroid/widget/Button;

    .line 43
    const v0, 0x7f0c0003

    const v1, 0x7f0b0001

    invoke-static {p0, v0, v1}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity;->mNext:Landroid/widget/Button;

    .line 44
    iget-object v0, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity;->mAb:Lcom/motorola/android/widget/ActionBar;

    iget-object v1, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity;->mBack:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 45
    iget-object v0, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity;->mAb:Lcom/motorola/android/widget/ActionBar;

    iget-object v1, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity;->mNext:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 46
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity;->mPref:Landroid/content/SharedPreferences;

    .line 47
    iget-object v0, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity;->mPrefEdit:Landroid/content/SharedPreferences$Editor;

    .line 48
    iget-object v0, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity;->mNext:Landroid/widget/Button;

    new-instance v1, Lcom/motorola/blur/setup/DataPlanSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/motorola/blur/setup/DataPlanSettingActivity$1;-><init>(Lcom/motorola/blur/setup/DataPlanSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity;->mBack:Landroid/widget/Button;

    new-instance v1, Lcom/motorola/blur/setup/DataPlanSettingActivity$2;

    invoke-direct {v1, p0}, Lcom/motorola/blur/setup/DataPlanSettingActivity$2;-><init>(Lcom/motorola/blur/setup/DataPlanSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void
.end method
