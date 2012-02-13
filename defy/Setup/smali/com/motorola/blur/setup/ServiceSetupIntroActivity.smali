.class public Lcom/motorola/blur/setup/ServiceSetupIntroActivity;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "ServiceSetupIntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BLUR_SETUP_COMPLETED_CUSTOM_CARRIER_TEXT:Ljava/lang/String; = "BlurSetupCompletedCustomCarrierText"

.field private static final TAG:Ljava/lang/String; = "BlurServiceSetupIntro"


# instance fields
.field private mExistingAccount:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    .line 20
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/ServiceSetupIntroActivity;->mExistingAccount:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/motorola/blur/setup/ServiceChooserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 58
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v2, 0x7f02001a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    const-string v1, "existing"

    iget-object v2, p0, Lcom/motorola/blur/setup/ServiceSetupIntroActivity;->mExistingAccount:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 60
    const-string v1, "call_from_main"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/ServiceSetupIntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 62
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/ServiceSetupIntroActivity;->setResult(I)V

    .line 63
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceSetupIntroActivity;->finish()V

    .line 64
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    .line 23
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v6, 0x7f030040

    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/ServiceSetupIntroActivity;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceSetupIntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 28
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 29
    const-string v6, "existing"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/blur/setup/ServiceSetupIntroActivity;->mExistingAccount:Ljava/lang/Boolean;

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceSetupIntroActivity;->hideConfigMenuItems()V

    .line 32
    const-string v6, "DeviceSetup"

    invoke-virtual {p0, v6, v8}, Lcom/motorola/blur/setup/ServiceSetupIntroActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 33
    .local v5, sharedPreferences:Landroid/content/SharedPreferences;
    if-eqz v5, :cond_1

    .line 34
    const-string v6, "BlurSetupCompletedCustomCarrierText"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, carrierText:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 36
    const v6, 0x7f0b0101

    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/ServiceSetupIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 37
    .local v2, customCarrierText:Landroid/widget/TextView;
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .end local v1           #carrierText:Ljava/lang/String;
    .end local v2           #customCarrierText:Landroid/widget/TextView;
    :cond_1
    const v6, 0x7f0b0011

    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/ServiceSetupIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 45
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v6, 0x7f0c0003

    const v7, 0x7f0b0001

    invoke-static {p0, v6, v7}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v4

    .line 46
    .local v4, nextButton:Landroid/widget/Button;
    invoke-virtual {v0, v4}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 48
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceSetupIntroActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "device_provisioned"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 52
    return-void
.end method
