.class public Lcom/broadcom/bt/app/settings/DunCfgActivity;
.super Landroid/preference/PreferenceActivity;
.source "DunCfgActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f04000b

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/settings/DunCfgActivity;->addPreferencesFromResource(I)V

    .line 35
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 39
    return-void
.end method
