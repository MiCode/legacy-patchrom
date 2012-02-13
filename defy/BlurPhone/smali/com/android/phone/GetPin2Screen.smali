.class public Lcom/android/phone/GetPin2Screen;
.super Landroid/preference/PreferenceActivity;
.source "GetPin2Screen.java"

# interfaces
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;


# static fields
.field private static final BUTTON_GET_PIN2_SCREEN_KEY:Ljava/lang/String; = "button_get_pin2_screen_key"

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneApp"

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4


# instance fields
.field private mPin2Field:Lcom/android/phone/EditPinPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private getPin2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 115
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GetPin2] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method private returnResult()V
    .locals 6

    .prologue
    .line 76
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v2, map:Landroid/os/Bundle;
    const-string v4, "pin2"

    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->getPin2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 80
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 82
    .local v3, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v0, action:Landroid/content/Intent;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    :cond_0
    const/4 v4, -0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/GetPin2Screen;->setResult(ILandroid/content/Intent;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->finish()V

    .line 86
    return-void
.end method

.method private setupView()V
    .locals 3

    .prologue
    .line 60
    const v1, 0x7f05000b

    invoke-virtual {p0, v1}, Lcom/android/phone/GetPin2Screen;->addPreferencesFromResource(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 62
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "button_get_pin2_screen_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPinPreference;

    iput-object v1, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Lcom/android/phone/EditPinPreference;

    .line 64
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 65
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Lcom/android/phone/EditPinPreference;

    const v2, 0x7f0b02bf

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    .line 66
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Lcom/android/phone/EditPinPreference;

    const v2, 0x7f0b02e3

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogMessage(I)V

    .line 67
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    .line 69
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->setupView()V

    .line 51
    return-void
.end method

.method public onPinEntered(Lcom/android/phone/EditPinPreference;Z)V
    .locals 4
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    .line 91
    if-eqz p2, :cond_2

    .line 92
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, pin:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Lcom/android/phone/EditPinPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b02bf

    invoke-virtual {p0, v3}, Lcom/android/phone/GetPin2Screen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b02e9

    invoke-virtual {p0, v3}, Lcom/android/phone/GetPin2Screen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    .line 111
    .end local v0           #pin:Ljava/lang/String;
    :goto_0
    return-void

    .line 105
    .restart local v0       #pin:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->returnResult()V

    goto :goto_0

    .line 109
    .end local v0           #pin:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->finish()V

    goto :goto_0
.end method
