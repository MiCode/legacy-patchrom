.class public Lcom/android/phone/CallTypeSelect;
.super Landroid/preference/PreferenceActivity;
.source "CallTypeSelect.java"


# instance fields
.field private mSStype:Ljava/lang/String;

.field private mVideoCall:Landroid/preference/PreferenceScreen;

.field private mVoiceCall:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 43
    const-string v0, "forwarding"

    iput-object v0, p0, Lcom/android/phone/CallTypeSelect;->mSStype:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const-string v3, "CallTypeSelct"

    .line 48
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v1, 0x7f050001

    invoke-virtual {p0, v1}, Lcom/android/phone/CallTypeSelect;->addPreferencesFromResource(I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/phone/CallTypeSelect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 54
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "button_voicecall"

    invoke-virtual {p0, v1}, Lcom/android/phone/CallTypeSelect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/CallTypeSelect;->mVoiceCall:Landroid/preference/PreferenceScreen;

    .line 55
    const-string v1, "button_videocall"

    invoke-virtual {p0, v1}, Lcom/android/phone/CallTypeSelect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/CallTypeSelect;->mVideoCall:Landroid/preference/PreferenceScreen;

    .line 61
    invoke-virtual {p0}, Lcom/android/phone/CallTypeSelect;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SS_Type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallTypeSelect;->mSStype:Ljava/lang/String;

    .line 62
    const-string v1, "CallTypeSelct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deliverd extra : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallTypeSelect;->mSStype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v1, p0, Lcom/android/phone/CallTypeSelect;->mSStype:Ljava/lang/String;

    const-string v2, "forwarding"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "CallTypeSelct"

    const-string v1, "Set the title: forwarding"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const v1, 0x7f0d0075

    invoke-virtual {p0, v1}, Lcom/android/phone/CallTypeSelect;->setTitle(I)V

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    const v1, 0x7f0d028f

    invoke-virtual {p0, v1}, Lcom/android/phone/CallTypeSelect;->setTitle(I)V

    .line 69
    const-string v1, "CallTypeSelct"

    const-string v1, "Set the title: barring"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    const-string v9, "forwarding"

    const-string v8, "com.sec.android.app.callsetting"

    const-string v7, "com.android.phone"

    .line 77
    iget-object v4, p0, Lcom/android/phone/CallTypeSelect;->mVoiceCall:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_1

    .line 78
    iget-object v4, p0, Lcom/android/phone/CallTypeSelect;->mSStype:Ljava/lang/String;

    const-string v5, "forwarding"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 80
    .local v3, vocFwdIntent:Landroid/content/Intent;
    const-string v4, "com.android.phone"

    const-string v4, "com.android.phone.GsmUmtsCallForwardOptions"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v3}, Lcom/android/phone/CallTypeSelect;->startActivity(Landroid/content/Intent;)V

    move v4, v6

    .line 100
    .end local v3           #vocFwdIntent:Landroid/content/Intent;
    :goto_0
    return v4

    .line 84
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 85
    .local v2, vocBarIntent:Landroid/content/Intent;
    const-string v4, "com.sec.android.app.callsetting"

    const-string v4, "com.sec.android.app.callsetting.voicecall.CallBarring"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v2}, Lcom/android/phone/CallTypeSelect;->startActivity(Landroid/content/Intent;)V

    move v4, v6

    .line 87
    goto :goto_0

    .line 91
    .end local v2           #vocBarIntent:Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/android/phone/CallTypeSelect;->mSStype:Ljava/lang/String;

    const-string v5, "forwarding"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 92
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v1, vidFwdIntent:Landroid/content/Intent;
    const-string v4, "com.android.phone"

    const-string v4, "com.android.phone.GsmUmtsVideoCallForwardOptions"

    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v1}, Lcom/android/phone/CallTypeSelect;->startActivity(Landroid/content/Intent;)V

    move v4, v6

    .line 95
    goto :goto_0

    .line 97
    .end local v1           #vidFwdIntent:Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v0, vidBarIntent:Landroid/content/Intent;
    const-string v4, "com.sec.android.app.callsetting"

    const-string v4, "com.sec.android.app.callsetting.videocall.VideoCallBarring"

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/phone/CallTypeSelect;->startActivity(Landroid/content/Intent;)V

    move v4, v6

    .line 100
    goto :goto_0
.end method
