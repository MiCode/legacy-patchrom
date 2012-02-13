.class public Lcom/motorola/blur/setup/LocationConsentActivity;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "LocationConsentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final HIDE_BACK_BUTTON:Ljava/lang/String; = "hide_back"

.field private static final LOCATION_CONSENT_UNCHECKED:Ljava/lang/String; = "loc_consent_unchecked"

.field private static final TAG:Ljava/lang/String; = "SetupLCA"


# instance fields
.field private mBackButton:Landroid/widget/Button;

.field private mBackground:I

.field private mExistingAccount:Ljava/lang/Boolean;

.field private mHideBack:Z

.field private mLocationCheckbox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    .line 25
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mExistingAccount:Ljava/lang/Boolean;

    .line 26
    iput v1, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mBackground:I

    .line 27
    iput-object v2, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mLocationCheckbox:Landroid/widget/CheckBox;

    .line 30
    iput-boolean v1, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mHideBack:Z

    .line 32
    iput-object v2, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mBackButton:Landroid/widget/Button;

    return-void
.end method

.method private continueToNext()V
    .locals 3

    .prologue
    const-string v2, "network"

    .line 76
    iget-object v0, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mLocationCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/motorola/blur/setup/LocationConsentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 81
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/motorola/blur/setup/LocationConsentActivity;->goToNextActivity()V

    .line 82
    return-void

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/blur/setup/LocationConsentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/motorola/blur/setup/LocationConsentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private goToNextActivity()V
    .locals 3

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    .local v0, intent:Landroid/content/Intent;
    sget-boolean v1, Lcom/motorola/blur/setup/LocationConsentActivity;->mShowDataSaver:Z

    if-eqz v1, :cond_0

    .line 87
    const-string v1, "existing"

    iget-object v2, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mExistingAccount:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 88
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    iget v2, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mBackground:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    const-class v1, Lcom/motorola/blur/setup/DataSaverActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 93
    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/LocationConsentActivity;->startActivity(Landroid/content/Intent;)V

    .line 94
    invoke-virtual {p0}, Lcom/motorola/blur/setup/LocationConsentActivity;->finish()V

    .line 95
    return-void

    .line 91
    :cond_0
    const-class v1, Lcom/motorola/blur/setup/CongratsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 103
    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/LocationConsentActivity;->goBack()V

    goto :goto_0

    .line 107
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/blur/setup/LocationConsentActivity;->continueToNext()V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x7f0b0000
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    .line 40
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v5, 0x7f030029

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/LocationConsentActivity;->setContentView(I)V

    .line 44
    const v5, 0x7f0b0011

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/LocationConsentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 46
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v5, 0x7f0c0004

    const/high16 v6, 0x7f0b

    invoke-static {p0, v5, v6}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v1

    .line 47
    .local v1, backButton:Landroid/widget/Button;
    const v5, 0x7f0c0003

    const v6, 0x7f0b0001

    invoke-static {p0, v5, v6}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v3

    .line 48
    .local v3, nextButton:Landroid/widget/Button;
    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 49
    invoke-virtual {v0, v3}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 51
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iput-object v1, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mBackButton:Landroid/widget/Button;

    .line 55
    const v5, 0x7f0b00c9

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/LocationConsentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mLocationCheckbox:Landroid/widget/CheckBox;

    .line 56
    const-string v5, "DeviceSetup"

    invoke-virtual {p0, v5, v7}, Lcom/motorola/blur/setup/LocationConsentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 57
    .local v4, prefs:Landroid/content/SharedPreferences;
    if-eqz v4, :cond_0

    .line 58
    const-string v5, "loc_consent_unchecked"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    iget-object v5, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mLocationCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/LocationConsentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 64
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 65
    const-string v5, "existing"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mExistingAccount:Ljava/lang/Boolean;

    .line 66
    const-string v5, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mBackground:I

    .line 67
    const-string v5, "hide_back"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mHideBack:Z

    .line 68
    iget-boolean v5, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mHideBack:Z

    if-eqz v5, :cond_1

    .line 69
    iget-object v5, p0, Lcom/motorola/blur/setup/LocationConsentActivity;->mBackButton:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 72
    :cond_1
    return-void
.end method
