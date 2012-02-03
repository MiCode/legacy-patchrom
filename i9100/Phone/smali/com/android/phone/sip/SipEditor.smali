.class public Lcom/android/phone/sip/SipEditor;
.super Landroid/preference/PreferenceActivity;
.source "SipEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/sip/SipEditor$4;,
        Lcom/android/phone/sip/SipEditor$AdvancedSettings;,
        Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;,
        Lcom/android/phone/sip/SipEditor$PreferenceKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdvancedSettings:Lcom/android/phone/sip/SipEditor$AdvancedSettings;

.field private mCallManager:Lcom/android/internal/telephony/CallManager;

.field private mDisplayNameSet:Z

.field private mHomeButtonClicked:Z

.field private mOldProfile:Landroid/net/sip/SipProfile;

.field private mPrimaryAccountSelector:Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;

.field private mProfileDb:Lcom/android/phone/sip/SipProfileDb;

.field private mRemoveButton:Landroid/widget/Button;

.field private mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private mSipManager:Landroid/net/sip/SipManager;

.field private mUpdateRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/android/phone/sip/SipEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 588
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-static {p0}, Lcom/android/phone/sip/SipEditor;->scramble(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/sip/SipEditor;Landroid/preference/Preference;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipEditor;->setupPreference(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/android/phone/sip/SipEditor;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/sip/SipEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->setRemovedProfileAndFinish()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mPrimaryAccountSelector:Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/sip/SipEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->unregisterOldPrimaryAccount()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipEditor;->deleteAndUnregisterProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipEditor;->saveAndRegisterProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/sip/SipEditor;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipSharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    return-object v0
.end method

.method private checkIfDisplayNameSet()V
    .locals 4

    .prologue
    .line 527
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, displayName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/phone/sip/SipEditor;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/sip/SipEditor;->mDisplayNameSet:Z

    .line 530
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayName set? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/sip/SipEditor;->mDisplayNameSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-boolean v1, p0, Lcom/android/phone/sip/SipEditor;->mDisplayNameSet:Z

    if-eqz v1, :cond_1

    .line 532
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    iget-object v1, v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 536
    :goto_1
    return-void

    .line 528
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 534
    :cond_1
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createSipProfile()Landroid/net/sip/SipProfile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 415
    new-instance v0, Landroid/net/sip/SipProfile$Builder;

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Username:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DomainAddress:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v2}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->getProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setProfileName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Password:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setPassword(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->ProxyAddress:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setOutboundProxy(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Transport:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setProtocol(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setDisplayName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Port:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setPort(I)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->isAlwaysSendKeepAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setSendKeepAlive(Z)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setAutoRegistration(Z)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->AuthUserName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setAuthUserName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method private deleteAndUnregisterProfile(Landroid/net/sip/SipProfile;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 261
    if-nez p1, :cond_0

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v0, p1}, Lcom/android/phone/sip/SipProfileDb;->deleteProfile(Landroid/net/sip/SipProfile;)V

    .line 263
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/sip/SipEditor;->unregisterProfile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getDefaultDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    sget-object v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Username:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v0}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferenceKey(Landroid/preference/Preference;)Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .locals 6
    .parameter "pref"

    .prologue
    .line 456
    invoke-static {}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->values()[Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v0

    .local v0, arr$:[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 457
    .local v2, key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    iget-object v4, v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    if-ne v4, p1, :cond_0

    return-object v2

    .line 456
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
    .end local v2           #key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "not possible to reach here"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getProfileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Username:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DomainAddress:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isAlwaysSendKeepAlive()Z
    .locals 3

    .prologue
    .line 504
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->SendKeepAlive:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    iget-object v0, v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    .line 506
    .local v0, pref:Landroid/preference/ListPreference;
    const v1, 0x7f0d0254

    invoke-virtual {p0, v1}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isEditTextEmpty(Lcom/android/phone/sip/SipEditor$PreferenceKey;)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 307
    iget-object v0, p1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 308
    .local v0, pref:Landroid/preference/EditTextPreference;
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->defaultSummary:I

    invoke-virtual {p0, v2}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadPreferencesFromProfile(Landroid/net/sip/SipProfile;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 463
    if-eqz p1, :cond_4

    .line 464
    sget-object v0, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Edit the existing profile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :try_start_0
    const-class v1, Landroid/net/sip/SipProfile;

    .line 467
    invoke-static {}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->values()[Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v2

    array-length v3, v2

    move v4, v5

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v5, Lcom/android/phone/sip/SipEditor$PreferenceKey;->text:I

    invoke-virtual {p0, v6}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 470
    sget-object v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->SendKeepAlive:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    if-ne v5, v0, :cond_1

    .line 471
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v6, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 473
    if-eqz v0, :cond_0

    const v0, 0x7f0d0254

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    .line 467
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 473
    :cond_0
    const v0, 0x7f0d0253

    goto :goto_1

    .line 477
    :cond_1
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v6, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 478
    if-nez v0, :cond_2

    const-string v0, ""

    :goto_3
    invoke-virtual {v5, v0}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 482
    :catch_0
    move-exception v0

    .line 483
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    const-string v2, "Can not load pref from profile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 501
    :goto_4
    return-void

    .line 478
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 481
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->checkIfDisplayNameSet()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 486
    :cond_4
    sget-object v0, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    const-string v1, "Edit a new profile"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-static {}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->values()[Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v0

    array-length v1, v0

    move v2, v5

    :goto_5
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    .line 488
    iget-object v4, v3, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 495
    iget v4, v3, Lcom/android/phone/sip/SipEditor$PreferenceKey;->initValue:I

    if-eqz v4, :cond_5

    .line 496
    iget v4, v3, Lcom/android/phone/sip/SipEditor$PreferenceKey;->initValue:I

    invoke-virtual {p0, v4}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    .line 487
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 499
    :cond_6
    iput-boolean v5, p0, Lcom/android/phone/sip/SipEditor;->mDisplayNameSet:Z

    goto :goto_4
.end method

.method private replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
    .locals 3
    .parameter "oldProfile"
    .parameter "newProfile"

    .prologue
    .line 389
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/sip/SipEditor$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/phone/sip/SipEditor$3;-><init>(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V

    const-string v2, "SipEditor"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 407
    return-void
.end method

.method private saveAndRegisterProfile(Landroid/net/sip/SipProfile;)V
    .locals 4
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    if-nez p1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v1, p1}, Lcom/android/phone/sip/SipProfileDb;->saveProfile(Landroid/net/sip/SipProfile;)V

    .line 249
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getAutoRegistration()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSharedPreferences;->isPrimaryAccount(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSipManager:Landroid/net/sip/SipManager;

    invoke-static {}, Lcom/android/phone/SipUtil;->createIncomingCallPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/net/sip/SipManager;->open(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/SipRegistrationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 255
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static scramble(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 543
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v0, v1, [C

    .line 544
    .local v0, cc:[C
    const/16 v1, 0x2a

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 545
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private setRemovedProfileAndFinish()V
    .locals 2

    .prologue
    .line 275
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/sip/SipSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 276
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/sip/SipEditor;->setResult(ILandroid/content/Intent;)V

    .line 277
    const v0, 0x7f0d0218

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 279
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/sip/SipEditor;->replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V

    .line 281
    return-void
.end method

.method private setupPreference(Landroid/preference/Preference;)V
    .locals 6
    .parameter "pref"

    .prologue
    .line 516
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 517
    invoke-static {}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->values()[Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v0

    .local v0, arr$:[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 518
    .local v2, key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    iget v5, v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->text:I

    invoke-virtual {p0, v5}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 519
    .local v4, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 520
    iput-object p1, v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    .line 524
    .end local v2           #key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .end local v4           #name:Ljava/lang/String;
    :cond_0
    return-void

    .line 517
    .restart local v2       #key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .restart local v4       #name:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/android/phone/sip/SipEditor;->mHomeButtonClicked:Z

    if-eqz v0, :cond_0

    .line 291
    sget-object v0, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Home button clicked, don\'t show dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :goto_0
    return-void

    .line 294
    :cond_0
    new-instance v0, Lcom/android/phone/sip/SipEditor$2;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/sip/SipEditor$2;-><init>(Lcom/android/phone/sip/SipEditor;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/sip/SipEditor;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private showAlert(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 284
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, msg:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method private unregisterOldPrimaryAccount()V
    .locals 4

    .prologue
    .line 374
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipSharedPreferences;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, primaryAccountUri:Ljava/lang/String;
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "old primary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregister old primary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-direct {p0, v0}, Lcom/android/phone/sip/SipEditor;->unregisterProfile(Ljava/lang/String;)V

    .line 381
    :cond_0
    return-void
.end method

.method private unregisterProfile(Ljava/lang/String;)V
    .locals 4
    .parameter "uri"

    .prologue
    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v1, p1}, Landroid/net/sip/SipManager;->close(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 270
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregister failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private validateAndSetResult()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 313
    .line 314
    const/4 v0, 0x0

    .line 315
    invoke-static {}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->values()[Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v1

    array-length v2, v1

    move v3, v8

    move-object v4, v0

    move v5, v9

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v6, v1, v3

    .line 316
    iget-object v0, v6, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    .line 317
    instance-of v7, v0, Landroid/preference/EditTextPreference;

    if-eqz v7, :cond_7

    .line 318
    check-cast v0, Landroid/preference/EditTextPreference;

    .line 319
    invoke-direct {p0, v6}, Lcom/android/phone/sip/SipEditor;->isEditTextEmpty(Lcom/android/phone/sip/SipEditor$PreferenceKey;)Z

    move-result v7

    .line 320
    if-eqz v5, :cond_0

    if-nez v7, :cond_0

    move v5, v8

    .line 323
    :cond_0
    if-eqz v7, :cond_1

    .line 324
    sget-object v7, Lcom/android/phone/sip/SipEditor$4;->$SwitchMap$com$android$phone$sip$SipEditor$PreferenceKey:[I

    invoke-virtual {v6}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_0

    .line 336
    if-nez v4, :cond_7

    .line 337
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    move v4, v5

    .line 315
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    move-object v4, v0

    goto :goto_0

    .line 326
    :pswitch_0
    invoke-static {}, Lcom/android/phone/sip/SipEditor;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    move-object v0, v4

    move v4, v5

    .line 327
    goto :goto_1

    :pswitch_1
    move-object v0, v4

    move v4, v5

    .line 331
    goto :goto_1

    .line 333
    :pswitch_2
    const v6, 0x7f0d0245

    invoke-virtual {p0, v6}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    move-object v0, v4

    move v4, v5

    .line 334
    goto :goto_1

    .line 340
    :cond_1
    sget-object v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Port:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    if-ne v6, v0, :cond_7

    .line 341
    sget-object v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Port:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v0}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 342
    const/16 v6, 0x3e8

    if-lt v0, v6, :cond_2

    const v6, 0xfffe

    if-le v0, v6, :cond_7

    .line 343
    :cond_2
    const v0, 0x7f0d024a

    invoke-virtual {p0, v0}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    .line 371
    :goto_2
    return-void

    .line 350
    :cond_3
    if-nez v5, :cond_4

    iget-boolean v0, p0, Lcom/android/phone/sip/SipEditor;->mUpdateRequired:Z

    if-nez v0, :cond_5

    .line 351
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->finish()V

    goto :goto_2

    .line 353
    :cond_5
    if-eqz v4, :cond_6

    .line 354
    const v0, 0x7f0d0249

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v4, v1, v8

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/sip/SipEditor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    goto :goto_2

    .line 358
    :cond_6
    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->createSipProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    .line 359
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/sip/SipSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 360
    const-string v2, "sip_profile"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 361
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/sip/SipEditor;->setResult(ILandroid/content/Intent;)V

    .line 362
    const v1, 0x7f0d0217

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 365
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    invoke-direct {p0, v1, v0}, Lcom/android/phone/sip/SipEditor;->replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 367
    :catch_0
    move-exception v0

    .line 368
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    const-string v2, "Can not create new SipProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    invoke-direct {p0, v0}, Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    move-object v0, v4

    move v4, v5

    goto/16 :goto_1

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 161
    sget-object v4, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    const-string v5, "start profile editor"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 164
    invoke-static {p0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/sip/SipEditor;->mSipManager:Landroid/net/sip/SipManager;

    .line 165
    new-instance v4, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v4, p0}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 166
    new-instance v4, Lcom/android/phone/sip/SipProfileDb;

    invoke-direct {v4, p0}, Lcom/android/phone/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/sip/SipEditor;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    .line 167
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/sip/SipEditor;->mCallManager:Lcom/android/internal/telephony/CallManager;

    .line 169
    const v4, 0x7f03003e

    invoke-virtual {p0, v4}, Lcom/android/phone/sip/SipEditor;->setContentView(I)V

    .line 170
    const v4, 0x7f050011

    invoke-virtual {p0, v4}, Lcom/android/phone/sip/SipEditor;->addPreferencesFromResource(I)V

    .line 172
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "sip_profile"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v2, v4

    :goto_0
    check-cast v2, Landroid/net/sip/SipProfile;

    iput-object v2, p0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    .line 176
    .local v2, p:Landroid/net/sip/SipProfile;
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 177
    .local v3, screen:Landroid/preference/PreferenceGroup;
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 178
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/sip/SipEditor;->setupPreference(Landroid/preference/Preference;)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 172
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #p:Landroid/net/sip/SipProfile;
    .end local v3           #screen:Landroid/preference/PreferenceGroup;
    :cond_0
    const-string v4, "profile"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v2, v4

    goto :goto_0

    .line 181
    .restart local v0       #i:I
    .restart local v1       #n:I
    .restart local v2       #p:Landroid/net/sip/SipProfile;
    .restart local v3       #screen:Landroid/preference/PreferenceGroup;
    :cond_1
    if-nez v2, :cond_2

    .line 182
    const v4, 0x7f08010d

    invoke-virtual {p0, v4}, Lcom/android/phone/sip/SipEditor;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 184
    const v4, 0x7f0d0230

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 196
    :goto_2
    new-instance v4, Lcom/android/phone/sip/SipEditor$AdvancedSettings;

    invoke-direct {v4, p0}, Lcom/android/phone/sip/SipEditor$AdvancedSettings;-><init>(Lcom/android/phone/sip/SipEditor;)V

    iput-object v4, p0, Lcom/android/phone/sip/SipEditor;->mAdvancedSettings:Lcom/android/phone/sip/SipEditor$AdvancedSettings;

    .line 197
    new-instance v4, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;

    invoke-direct {v4, p0, v2}, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;-><init>(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;)V

    iput-object v4, p0, Lcom/android/phone/sip/SipEditor;->mPrimaryAccountSelector:Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;

    .line 199
    invoke-direct {p0, v2}, Lcom/android/phone/sip/SipEditor;->loadPreferencesFromProfile(Landroid/net/sip/SipProfile;)V

    .line 200
    return-void

    .line 186
    :cond_2
    const v4, 0x7f08010e

    invoke-virtual {p0, v4}, Lcom/android/phone/sip/SipEditor;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    .line 188
    iget-object v4, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    const v5, 0x7f0d0215

    invoke-virtual {p0, v5}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v4, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/phone/sip/SipEditor$1;

    invoke-direct {v5, p0}, Lcom/android/phone/sip/SipEditor$1;-><init>(Lcom/android/phone/sip/SipEditor;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 214
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 215
    const v0, 0x7f0d0219

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 217
    const/4 v0, 0x2

    const v1, 0x7f0d021a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 219
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 238
    packed-switch p1, :pswitch_data_0

    .line 243
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 240
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->validateAndSetResult()V

    .line 241
    const/4 v0, 0x1

    goto :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 224
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 233
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 226
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->validateAndSetResult()V

    move v0, v1

    .line 227
    goto :goto_0

    .line 230
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->finish()V

    move v0, v1

    .line 231
    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 204
    sget-object v0, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SipEditor onPause(): finishing? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/sip/SipEditor;->mHomeButtonClicked:Z

    .line 207
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->validateAndSetResult()V

    .line 209
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 210
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "pref"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    .line 432
    iget-boolean v1, p0, Lcom/android/phone/sip/SipEditor;->mUpdateRequired:Z

    if-nez v1, :cond_0

    .line 433
    iput-boolean v2, p0, Lcom/android/phone/sip/SipEditor;->mUpdateRequired:Z

    .line 434
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/sip/SipEditor;->unregisterProfile(Ljava/lang/String;)V

    .line 438
    :cond_0
    instance-of v1, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    move v1, v2

    .line 452
    .end local p1
    :goto_0
    return v1

    .line 439
    .restart local p1
    :cond_1
    if-nez p2, :cond_3

    const-string v1, ""

    move-object v0, v1

    .line 440
    .local v0, value:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 441
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipEditor;->getPreferenceKey(Landroid/preference/Preference;)Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v1

    iget v1, v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->defaultSummary:I

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 448
    :goto_2
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    iget-object v1, v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_2

    .line 449
    check-cast p1, Landroid/preference/EditTextPreference;

    .end local p1
    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 450
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->checkIfDisplayNameSet()V

    :cond_2
    move v1, v2

    .line 452
    goto :goto_0

    .line 439
    .end local v0           #value:Ljava/lang/String;
    .restart local p1
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 442
    .restart local v0       #value:Ljava/lang/String;
    :cond_4
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Password:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    iget-object v1, v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_5

    .line 443
    invoke-static {v0}, Lcom/android/phone/sip/SipEditor;->scramble(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 445
    :cond_5
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 148
    iput-boolean v2, p0, Lcom/android/phone/sip/SipEditor;->mHomeButtonClicked:Z

    .line 149
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mAdvancedSettings:Lcom/android/phone/sip/SipEditor$AdvancedSettings;

    invoke-virtual {v0}, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->show()V

    .line 151
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 155
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
