.class public Lcom/android/settings/vpn/VpnSettings;
.super Landroid/preference/PreferenceActivity;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn/VpnSettings$21;,
        Lcom/android/settings/vpn/VpnSettings$StatusChecker;,
        Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;,
        Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final PROFILES_ROOT:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActiveProfile:Landroid/net/vpn/VpnProfile;

.field private mAddVpn:Landroid/preference/PreferenceScreen;

.field private mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

.field private mConnectingErrorCode:I

.field private mConnectivityReceiver:Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mShowingDialog:Landroid/app/Dialog;

.field private mStatusChecker:Lcom/android/settings/vpn/VpnSettings$StatusChecker;

.field private mUnlockAction:Ljava/lang/Runnable;

.field private mVpnListContainer:Landroid/preference/PreferenceCategory;

.field private mVpnManager:Landroid/net/vpn/VpnManager;

.field private mVpnPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/vpn/VpnSettings$VpnPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mVpnProfileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/vpn/VpnProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-class v1, Lcom/android/settings/vpn/VpnSettings;

    .line 75
    const-class v0, Lcom/android/settings/vpn/VpnSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/settings/vpn/VpnSettings;->$assertionsDisabled:Z

    .line 82
    const-class v0, Lcom/android/settings/vpn/VpnSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/net/vpn/VpnManager;->getProfilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/vpn/VpnSettings;->PROFILES_ROOT:Ljava/lang/String;

    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 136
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    .line 138
    new-instance v0, Landroid/net/vpn/VpnManager;

    invoke-direct {v0, p0}, Landroid/net/vpn/VpnManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnManager:Landroid/net/vpn/VpnManager;

    .line 140
    new-instance v0, Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;-><init>(Lcom/android/settings/vpn/VpnSettings;Lcom/android/settings/vpn/VpnSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectivityReceiver:Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingErrorCode:I

    .line 146
    new-instance v0, Lcom/android/settings/vpn/VpnSettings$StatusChecker;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/vpn/VpnSettings$StatusChecker;-><init>(Lcom/android/settings/vpn/VpnSettings;Lcom/android/settings/vpn/VpnSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mStatusChecker:Lcom/android/settings/vpn/VpnSettings$StatusChecker;

    .line 998
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/vpn/VpnSettings;)Landroid/preference/PreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnListContainer:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->removeProfileFromStorage(Landroid/net/vpn/VpnProfile;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->connect(Landroid/net/vpn/VpnProfile;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/vpn/VpnSettings;)Lcom/android/settings/vpn/VpnSettings$StatusChecker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mStatusChecker:Lcom/android/settings/vpn/VpnSettings$StatusChecker;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->getProfileSummaryString(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/vpn/VpnSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingErrorCode:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/settings/vpn/VpnSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingErrorCode:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/settings/vpn/VpnSettings;)Landroid/net/vpn/VpnManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnManager:Landroid/net/vpn/VpnManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/vpn/VpnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->startVpnTypeSelection()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/vpn/VpnSettings;)Landroid/net/vpn/VpnProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn/VpnSettings;->changeState(Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->startVpnEditor(Landroid/net/vpn/VpnProfile;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/vpn/VpnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->onIdle()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->connectOrDisconnect(Landroid/net/vpn/VpnProfile;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/vpn/VpnSettings;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/vpn/VpnSettings;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    return-object v0
.end method

.method private addPreferenceFor(Landroid/net/vpn/VpnProfile;)Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    .locals 1
    .parameter "p"

    .prologue
    .line 571
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/vpn/VpnSettings;->addPreferenceFor(Landroid/net/vpn/VpnProfile;Z)Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    move-result-object v0

    return-object v0
.end method

.method private addPreferenceFor(Landroid/net/vpn/VpnProfile;Z)Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    .locals 3
    .parameter "p"
    .parameter "addToContainer"

    .prologue
    .line 576
    new-instance v0, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/settings/vpn/VpnSettings$VpnPreference;-><init>(Lcom/android/settings/vpn/VpnSettings;Landroid/content/Context;Landroid/net/vpn/VpnProfile;)V

    .line 577
    .local v0, pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    if-eqz p2, :cond_0

    .line 579
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 580
    :cond_0
    new-instance v1, Lcom/android/settings/vpn/VpnSettings$17;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/VpnSettings$17;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 586
    return-object v0
.end method

.method private addProfile(Landroid/net/vpn/VpnProfile;)V
    .locals 1
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 562
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->setProfileId(Landroid/net/vpn/VpnProfile;)V

    .line 563
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->processSecrets(Landroid/net/vpn/VpnProfile;)V

    .line 564
    invoke-static {p1}, Lcom/android/settings/vpn/VpnSettings;->saveProfileToStorage(Landroid/net/vpn/VpnProfile;)V

    .line 565
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->addPreferenceFor(Landroid/net/vpn/VpnProfile;)Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    .line 567
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->disableProfilePreferencesIfOneActive()V

    .line 568
    return-void
.end method

.method private changeState(Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V
    .locals 3
    .parameter "p"
    .parameter "state"

    .prologue
    .line 709
    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getState()Landroid/net/vpn/VpnState;

    move-result-object v0

    .line 710
    .local v0, oldState:Landroid/net/vpn/VpnState;
    invoke-virtual {v0, p2}, Landroid/net/vpn/VpnState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 742
    :goto_0
    return-void

    .line 712
    :cond_0
    invoke-virtual {p1, p2}, Landroid/net/vpn/VpnProfile;->setState(Landroid/net/vpn/VpnState;)V

    .line 713
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->getProfileSummaryString(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 714
    sget-object v1, Lcom/android/settings/vpn/VpnSettings$21;->$SwitchMap$android$net$vpn$VpnState:[I

    invoke-virtual {p2}, Landroid/net/vpn/VpnState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 731
    :pswitch_0
    sget-boolean v1, Lcom/android/settings/vpn/VpnSettings;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 716
    :pswitch_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    .line 717
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    .line 718
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->disableProfilePreferencesIfOneActive()V

    goto :goto_0

    .line 721
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->getActor(Landroid/net/vpn/VpnProfile;)Lcom/android/settings/vpn/VpnProfileActor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    .line 724
    :pswitch_3
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    .line 725
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->disableProfilePreferencesIfOneActive()V

    goto :goto_0

    .line 728
    :pswitch_4
    sget-object v1, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/vpn/VpnSettings;->changeState(Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V

    goto :goto_0

    .line 732
    :cond_1
    iget v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingErrorCode:I

    if-nez v1, :cond_2

    .line 733
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->onIdle()V

    goto :goto_0

    .line 735
    :cond_2
    iget v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingErrorCode:I

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->showDialog(I)V

    .line 736
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingErrorCode:I

    goto :goto_0

    .line 714
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private checkDuplicateName(Landroid/net/vpn/VpnProfile;I)Z
    .locals 4
    .parameter "p"
    .parameter "index"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    .line 500
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/vpn/VpnProfile;>;"
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    .line 501
    .local v1, pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    if-eqz v1, :cond_0

    if-ltz p2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 503
    iget-object v2, v1, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 504
    const/4 v1, 0x0

    .line 506
    :cond_0
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkIdConsistency(Ljava/lang/String;Landroid/net/vpn/VpnProfile;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 841
    invoke-virtual {p2}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 842
    sget-object v0, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID inconsistent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const/4 v0, 0x0

    .line 845
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkSecrets(Landroid/net/vpn/VpnProfile;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 883
    .line 884
    instance-of v1, p1, Landroid/net/vpn/L2tpIpsecProfile;

    if-eqz v1, :cond_9

    .line 885
    move-object v0, p1

    check-cast v0, Landroid/net/vpn/L2tpIpsecProfile;

    move-object v1, v0

    .line 886
    invoke-virtual {v1}, Landroid/net/vpn/L2tpIpsecProfile;->getCaCertificate()Ljava/lang/String;

    move-result-object v2

    .line 887
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CACERT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 888
    :cond_0
    invoke-virtual {v1, v8}, Landroid/net/vpn/L2tpIpsecProfile;->setCaCertificate(Ljava/lang/String;)V

    move v2, v7

    .line 891
    :goto_0
    invoke-virtual {v1}, Landroid/net/vpn/L2tpIpsecProfile;->getUserCertificate()Ljava/lang/String;

    move-result-object v3

    .line 892
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/vpn/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRCERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 893
    :cond_1
    invoke-virtual {v1, v8}, Landroid/net/vpn/L2tpIpsecProfile;->setUserCertificate(Ljava/lang/String;)V

    move v2, v7

    .line 897
    :cond_2
    :goto_1
    instance-of v1, p1, Landroid/net/vpn/L2tpIpsecPskProfile;

    if-eqz v1, :cond_4

    .line 898
    move-object v0, p1

    check-cast v0, Landroid/net/vpn/L2tpIpsecPskProfile;

    move-object v1, v0

    .line 899
    invoke-virtual {v1}, Landroid/net/vpn/L2tpIpsecPskProfile;->getPresharedKey()Ljava/lang/String;

    move-result-object v3

    .line 900
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VPN_i"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 901
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 902
    :cond_3
    invoke-virtual {v1, v8}, Landroid/net/vpn/L2tpIpsecPskProfile;->setPresharedKey(Ljava/lang/String;)V

    move v2, v7

    .line 906
    :cond_4
    instance-of v1, p1, Landroid/net/vpn/L2tpProfile;

    if-eqz v1, :cond_7

    .line 907
    move-object v0, p1

    check-cast v0, Landroid/net/vpn/L2tpProfile;

    move-object v1, v0

    .line 908
    invoke-virtual {v1}, Landroid/net/vpn/L2tpProfile;->isSecretEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 909
    invoke-virtual {v1}, Landroid/net/vpn/L2tpProfile;->getSecretString()Ljava/lang/String;

    move-result-object v3

    .line 910
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VPN_l"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 911
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 912
    :cond_5
    invoke-virtual {v1, v8}, Landroid/net/vpn/L2tpProfile;->setSecretString(Ljava/lang/String;)V

    move v1, v7

    .line 917
    :goto_2
    if-eqz v1, :cond_6

    .line 918
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    .line 919
    const/16 v1, 0xca

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->showDialog(I)V

    move v1, v9

    .line 922
    :goto_3
    return v1

    :cond_6
    move v1, v7

    goto :goto_3

    :cond_7
    move v1, v2

    goto :goto_2

    :cond_8
    move v2, v9

    goto/16 :goto_0

    :cond_9
    move v2, v9

    goto/16 :goto_1
.end method

.method private checkVpnConnectionStatusInBackground()V
    .locals 2

    .prologue
    .line 831
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/vpn/VpnSettings$20;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/VpnSettings$20;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 836
    return-void
.end method

.method private declared-synchronized connect(Landroid/net/vpn/VpnProfile;)V
    .locals 3
    .parameter "p"

    .prologue
    .line 669
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->needKeyStoreToConnect(Landroid/net/vpn/VpnProfile;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 670
    new-instance v0, Lcom/android/settings/vpn/VpnSettings$18;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/vpn/VpnSettings$18;-><init>(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V

    .line 675
    .local v0, action:Ljava/lang/Runnable;
    invoke-direct {p0, p1, v0}, Lcom/android/settings/vpn/VpnSettings;->unlockKeyStore(Landroid/net/vpn/VpnProfile;Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 686
    .end local v0           #action:Ljava/lang/Runnable;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 678
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->checkSecrets(Landroid/net/vpn/VpnProfile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    sget-object v1, Landroid/net/vpn/VpnState;->CONNECTING:Landroid/net/vpn/VpnState;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/vpn/VpnSettings;->changeState(Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V

    .line 681
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    invoke-interface {v1}, Lcom/android/settings/vpn/VpnProfileActor;->isConnectDialogNeeded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 682
    const/16 v1, 0xc9

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->showDialog(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 669
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 684
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/settings/vpn/VpnProfileActor;->connect(Landroid/app/Dialog;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized connectOrDisconnect(Landroid/net/vpn/VpnProfile;)V
    .locals 3
    .parameter "p"

    .prologue
    .line 690
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    .line 691
    .local v0, pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    sget-object v1, Lcom/android/settings/vpn/VpnSettings$21;->$SwitchMap$android$net$vpn$VpnState:[I

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getState()Landroid/net/vpn/VpnState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/vpn/VpnState;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v1, :pswitch_data_0

    .line 706
    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    .line 693
    :pswitch_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->connect(Landroid/net/vpn/VpnProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 690
    .end local v0           #pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 700
    .restart local v0       #pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    :pswitch_2
    :try_start_2
    sget-object v1, Landroid/net/vpn/VpnState;->DISCONNECTING:Landroid/net/vpn/VpnState;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/vpn/VpnSettings;->changeState(Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V

    .line 701
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->getActor(Landroid/net/vpn/VpnProfile;)Lcom/android/settings/vpn/VpnProfileActor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/vpn/VpnProfileActor;->disconnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 691
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private createCommonDialogBuilder()Landroid/app/AlertDialog$Builder;
    .locals 3

    .prologue
    .line 292
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080496

    new-instance v2, Lcom/android/settings/vpn/VpnSettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/vpn/VpnSettings$9;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080497

    new-instance v2, Lcom/android/settings/vpn/VpnSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/vpn/VpnSettings$8;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/vpn/VpnSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/VpnSettings$7;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/vpn/VpnSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/VpnSettings$6;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private createCommonEditDialogBuilder()Landroid/app/AlertDialog$Builder;
    .locals 3

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createCommonDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080496

    new-instance v2, Lcom/android/settings/vpn/VpnSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/vpn/VpnSettings$5;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private createConnectDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 208
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    invoke-interface {v1}, Lcom/android/settings/vpn/VpnProfileActor;->createConnectView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08048f

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v4}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080495

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/vpn/VpnSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/VpnSettings$3;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/vpn/VpnSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/VpnSettings$2;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createEditDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 255
    sparse-switch p1, :sswitch_data_0

    .line 266
    const/4 v1, 0x0

    .line 268
    :goto_0
    return-object v1

    .line 257
    :sswitch_0
    const v0, 0x7f0804aa

    .line 268
    .local v0, msgId:I
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createCommonEditDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 260
    .end local v0           #msgId:I
    :sswitch_1
    const v0, 0x7f0804a9

    .line 261
    .restart local v0       #msgId:I
    goto :goto_1

    .line 263
    .end local v0           #msgId:I
    :sswitch_2
    const v0, 0x7f0804af

    .line 264
    .restart local v0       #msgId:I
    goto :goto_1

    .line 255
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x2a -> :sswitch_2
        0x66 -> :sswitch_1
    .end sparse-switch
.end method

.method private createReconnectDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 234
    sparse-switch p1, :sswitch_data_0

    .line 248
    const v0, 0x7f0804a7

    .line 250
    .local v0, msgId:I
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createCommonDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 236
    .end local v0           #msgId:I
    :sswitch_0
    const v0, 0x7f0804ac

    .line 237
    .restart local v0       #msgId:I
    goto :goto_0

    .line 239
    .end local v0           #msgId:I
    :sswitch_1
    const v0, 0x7f0804ad

    .line 240
    .restart local v0       #msgId:I
    goto :goto_0

    .line 242
    .end local v0           #msgId:I
    :sswitch_2
    const v0, 0x7f0804a8

    .line 243
    .restart local v0       #msgId:I
    goto :goto_0

    .line 245
    .end local v0           #msgId:I
    :sswitch_3
    const v0, 0x7f0804ae

    .line 246
    .restart local v0       #msgId:I
    goto :goto_0

    .line 234
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0x30 -> :sswitch_3
        0x33 -> :sswitch_0
        0x67 -> :sswitch_2
    .end sparse-switch
.end method

.method private createSecretNotSetDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createCommonDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0804ab

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080496

    new-instance v2, Lcom/android/settings/vpn/VpnSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/vpn/VpnSettings$4;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createVpnProfile(Ljava/lang/String;)Landroid/net/vpn/VpnProfile;
    .locals 2
    .parameter

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnManager:Landroid/net/vpn/VpnManager;

    const-class v1, Landroid/net/vpn/VpnType;

    invoke-static {v1, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/net/vpn/VpnType;

    invoke-virtual {v0, p0}, Landroid/net/vpn/VpnManager;->createVpnProfile(Landroid/net/vpn/VpnType;)Landroid/net/vpn/VpnProfile;

    move-result-object v0

    return-object v0
.end method

.method private deleteProfile(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 521
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    new-instance v0, Lcom/android/settings/vpn/VpnSettings$16;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/vpn/VpnSettings$16;-><init>(Lcom/android/settings/vpn/VpnSettings;I)V

    .line 534
    .local v0, onClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0804a4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080497

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mShowingDialog:Landroid/app/Dialog;

    .line 540
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mShowingDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private deserialize(Ljava/io/File;)Landroid/net/vpn/VpnProfile;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 851
    :try_start_0
    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 852
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/vpn/VpnProfile;

    .line 853
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .line 857
    :goto_0
    return-object v0

    .line 855
    :catch_0
    move-exception v0

    .line 856
    sget-object v1, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    const-string v2, "deserialize a profile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 857
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disableProfilePreferencesIfOneActive()V
    .locals 4

    .prologue
    .line 752
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    if-nez v2, :cond_1

    .line 765
    :cond_0
    return-void

    .line 754
    :cond_1
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vpn/VpnProfile;

    .line 755
    .local v1, p:Landroid/net/vpn/VpnProfile;
    sget-object v2, Lcom/android/settings/vpn/VpnSettings$21;->$SwitchMap$android$net$vpn$VpnState:[I

    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getState()Landroid/net/vpn/VpnState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/vpn/VpnState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 762
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->setEnabled(Z)V

    goto :goto_0

    .line 759
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->setEnabled(Z)V

    goto :goto_0

    .line 755
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private enableProfilePreferences()V
    .locals 4

    .prologue
    .line 768
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vpn/VpnProfile;

    .line 769
    .local v1, p:Landroid/net/vpn/VpnProfile;
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->setEnabled(Z)V

    goto :goto_0

    .line 771
    .end local v1           #p:Landroid/net/vpn/VpnProfile;
    :cond_0
    return-void
.end method

.method private getActor(Landroid/net/vpn/VpnProfile;)Lcom/android/settings/vpn/VpnProfileActor;
    .locals 1
    .parameter "p"

    .prologue
    .line 875
    new-instance v0, Lcom/android/settings/vpn/AuthenticationActor;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/vpn/AuthenticationActor;-><init>(Landroid/content/Context;Landroid/net/vpn/VpnProfile;)V

    return-object v0
.end method

.method private getProfile(I)Landroid/net/vpn/VpnProfile;
    .locals 1
    .parameter "position"

    .prologue
    .line 516
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/vpn/VpnProfile;

    move-object v0, p0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getProfileDir(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;
    .locals 2
    .parameter "p"

    .prologue
    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings/vpn/VpnSettings;->PROFILES_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProfileIndexFromId(Ljava/lang/String;)I
    .locals 4
    .parameter "id"

    .prologue
    .line 485
    const/4 v1, 0x0

    .line 486
    .local v1, index:I
    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vpn/VpnProfile;

    .line 487
    .local v2, p:Landroid/net/vpn/VpnProfile;
    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    .line 493
    .end local v2           #p:Landroid/net/vpn/VpnProfile;
    :goto_1
    return v3

    .line 490
    .restart local v2       #p:Landroid/net/vpn/VpnProfile;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    .end local v2           #p:Landroid/net/vpn/VpnProfile;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private getProfilePositionFrom(Landroid/widget/AdapterView$AdapterContextMenuInfo;)I
    .locals 2
    .parameter "menuInfo"

    .prologue
    .line 511
    iget v0, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->getOrder()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getProfileSummaryString(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 862
    sget-object v0, Lcom/android/settings/vpn/VpnSettings$21;->$SwitchMap$android$net$vpn$VpnState:[I

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getState()Landroid/net/vpn/VpnState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/vpn/VpnState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 870
    const v0, 0x7f0804b8

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 864
    :pswitch_0
    const v0, 0x7f0804b5

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 866
    :pswitch_1
    const v0, 0x7f0804b6

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 868
    :pswitch_2
    const v0, 0x7f0804b7

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 862
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private isKeyStoreUnlocked()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 616
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->test()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needKeyStoreToConnect(Landroid/net/vpn/VpnProfile;)Z
    .locals 2
    .parameter "p"

    .prologue
    .line 642
    sget-object v0, Lcom/android/settings/vpn/VpnSettings$21;->$SwitchMap$android$net$vpn$VpnType:[I

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/vpn/VpnType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 649
    const/4 v0, 0x0

    .end local p1
    :goto_0
    return v0

    .line 645
    .restart local p1
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 647
    :pswitch_1
    check-cast p1, Landroid/net/vpn/L2tpProfile;

    .end local p1
    invoke-virtual {p1}, Landroid/net/vpn/L2tpProfile;->isSecretEnabled()Z

    move-result v0

    goto :goto_0

    .line 642
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private needKeyStoreToSave(Landroid/net/vpn/VpnProfile;)Z
    .locals 7
    .parameter "p"

    .prologue
    const/4 v6, 0x1

    .line 621
    sget-object v4, Lcom/android/settings/vpn/VpnSettings$21;->$SwitchMap$android$net$vpn$VpnType:[I

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/vpn/VpnType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 636
    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 623
    :pswitch_0
    move-object v0, p1

    check-cast v0, Landroid/net/vpn/L2tpIpsecPskProfile;

    move-object v3, v0

    .line 624
    .local v3, pskProfile:Landroid/net/vpn/L2tpIpsecPskProfile;
    invoke-virtual {v3}, Landroid/net/vpn/L2tpIpsecPskProfile;->getPresharedKey()Ljava/lang/String;

    move-result-object v2

    .line 625
    .local v2, presharedKey:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v6

    .line 626
    goto :goto_0

    .line 629
    .end local v2           #presharedKey:Ljava/lang/String;
    .end local v3           #pskProfile:Landroid/net/vpn/L2tpIpsecPskProfile;
    :cond_1
    :pswitch_1
    move-object v0, p1

    check-cast v0, Landroid/net/vpn/L2tpProfile;

    move-object v1, v0

    .line 630
    .local v1, l2tpProfile:Landroid/net/vpn/L2tpProfile;
    invoke-virtual {v1}, Landroid/net/vpn/L2tpProfile;->isSecretEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/net/vpn/L2tpProfile;->getSecretString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v6

    .line 632
    goto :goto_0

    .line 621
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onIdle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 745
    sget-object v0, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    const-string v1, "   onIdle()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iput-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    .line 747
    iput-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    .line 748
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->enableProfilePreferences()V

    .line 749
    return-void
.end method

.method private processSecrets(Landroid/net/vpn/VpnProfile;)V
    .locals 7
    .parameter

    .prologue
    const-string v6, "keystore write failed: key="

    .line 927
    sget-object v1, Lcom/android/settings/vpn/VpnSettings$21;->$SwitchMap$android$net$vpn$VpnType:[I

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/vpn/VpnType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 954
    :goto_0
    return-void

    .line 929
    :pswitch_0
    move-object v0, p1

    check-cast v0, Landroid/net/vpn/L2tpIpsecPskProfile;

    move-object v1, v0

    .line 930
    invoke-virtual {v1}, Landroid/net/vpn/L2tpIpsecPskProfile;->getPresharedKey()Ljava/lang/String;

    move-result-object v2

    .line 931
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VPN_i"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 932
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/vpn/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v4, v3, v2}, Landroid/security/KeyStore;->put(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 933
    sget-object v2, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore write failed: key="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_0
    invoke-virtual {v1, v3}, Landroid/net/vpn/L2tpIpsecPskProfile;->setPresharedKey(Ljava/lang/String;)V

    .line 939
    :pswitch_1
    move-object v0, p1

    check-cast v0, Landroid/net/vpn/L2tpProfile;

    move-object v1, v0

    .line 940
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VPN_l"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 941
    invoke-virtual {v1}, Landroid/net/vpn/L2tpProfile;->isSecretEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 942
    invoke-virtual {v1}, Landroid/net/vpn/L2tpProfile;->getSecretString()Ljava/lang/String;

    move-result-object v3

    .line 943
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/vpn/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v4, v2, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 944
    sget-object v3, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore write failed: key="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_1
    invoke-virtual {v1, v2}, Landroid/net/vpn/L2tpProfile;->setSecretString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 948
    :cond_2
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 927
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private removeProfileFromStorage(Landroid/net/vpn/VpnProfile;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 788
    invoke-static {p1}, Lcom/android/settings/vpn/VpnSettings;->getProfileDir(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/vpn/Util;->deleteFile(Ljava/lang/String;)V

    .line 789
    return-void
.end method

.method private replaceProfile(ILandroid/net/vpn/VpnProfile;)V
    .locals 5
    .parameter "index"
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    .line 592
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/vpn/VpnSettings$VpnPreference;>;"
    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    invoke-interface {v3, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vpn/VpnProfile;

    .line 593
    .local v1, oldProfile:Landroid/net/vpn/VpnProfile;
    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    .line 594
    .local v2, pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    iget-object v3, v2, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->mProfile:Landroid/net/vpn/VpnProfile;

    if-eq v3, v1, :cond_0

    .line 595
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "inconsistent state!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 597
    :cond_0
    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/net/vpn/VpnProfile;->setId(Ljava/lang/String;)V

    .line 598
    invoke-direct {p0, p2}, Lcom/android/settings/vpn/VpnSettings;->processSecrets(Landroid/net/vpn/VpnProfile;)V

    .line 602
    invoke-static {v1}, Lcom/android/settings/vpn/VpnSettings;->getProfileDir(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/android/settings/vpn/VpnSettings;->getProfileDir(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/vpn/Util;->copyFiles(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 603
    invoke-direct {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->removeProfileFromStorage(Landroid/net/vpn/VpnProfile;)V

    .line 605
    :cond_1
    invoke-static {p2}, Lcom/android/settings/vpn/VpnSettings;->saveProfileToStorage(Landroid/net/vpn/VpnProfile;)V

    .line 606
    invoke-virtual {v2, p2}, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->setProfile(Landroid/net/vpn/VpnProfile;)V

    .line 607
    invoke-virtual {p2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    return-void
.end method

.method private retrieveVpnListFromStorage()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 792
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    .line 793
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    .line 794
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 795
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/settings/vpn/VpnSettings;->PROFILES_ROOT:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 796
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 797
    if-nez v1, :cond_0

    .line 828
    :goto_0
    return-void

    .line 799
    :cond_0
    array-length v2, v1

    move v3, v8

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 800
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v7, ".pobj"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 801
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 799
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 804
    :cond_2
    :try_start_0
    invoke-direct {p0, v5}, Lcom/android/settings/vpn/VpnSettings;->deserialize(Ljava/io/File;)Landroid/net/vpn/VpnProfile;

    move-result-object v5

    .line 805
    if-eqz v5, :cond_1

    .line 807
    invoke-direct {p0, v4, v5}, Lcom/android/settings/vpn/VpnSettings;->checkIdConsistency(Ljava/lang/String;Landroid/net/vpn/VpnProfile;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 809
    iget-object v4, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 810
    :catch_0
    move-exception v4

    .line 811
    sget-object v5, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    const-string v6, "retrieveVpnListFromStorage()"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 814
    :cond_3
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    new-instance v1, Lcom/android/settings/vpn/VpnSettings$19;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/VpnSettings$19;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 824
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/vpn/VpnProfile;

    .line 825
    invoke-direct {p0, v0, v8}, Lcom/android/settings/vpn/VpnSettings;->addPreferenceFor(Landroid/net/vpn/VpnProfile;Z)Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    goto :goto_3

    .line 827
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->disableProfilePreferencesIfOneActive()V

    goto :goto_0
.end method

.method static saveProfileToStorage(Landroid/net/vpn/VpnProfile;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 778
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/android/settings/vpn/VpnSettings;->getProfileDir(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 780
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 781
    :cond_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, ".pobj"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 783
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 784
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 785
    return-void
.end method

.method private setProfileId(Landroid/net/vpn/VpnProfile;)V
    .locals 5
    .parameter "profile"

    .prologue
    .line 548
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, id:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    .line 552
    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vpn/VpnProfile;

    .line 553
    .local v2, p:Landroid/net/vpn/VpnProfile;
    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 554
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->setProfileId(Landroid/net/vpn/VpnProfile;)V

    .line 559
    .end local v2           #p:Landroid/net/vpn/VpnProfile;
    :goto_0
    return-void

    .line 558
    :cond_2
    invoke-virtual {p1, v1}, Landroid/net/vpn/VpnProfile;->setId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startVpnEditor(Landroid/net/vpn/VpnProfile;)V
    .locals 2
    .parameter

    .prologue
    .line 663
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/vpn/VpnEditor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 664
    const-string v1, "vpn_profile"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 665
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/vpn/VpnSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 666
    return-void
.end method

.method private startVpnTypeSelection()V
    .locals 2

    .prologue
    .line 611
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/vpn/VpnTypeSelection;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 612
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/vpn/VpnSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 613
    return-void
.end method

.method private unlockKeyStore(Landroid/net/vpn/VpnProfile;Ljava/lang/Runnable;)Z
    .locals 1
    .parameter "p"
    .parameter "action"

    .prologue
    .line 655
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->isKeyStoreUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    const/4 v0, 0x1

    .line 659
    :goto_0
    return v0

    .line 657
    :cond_0
    iput-object p2, p0, Lcom/android/settings/vpn/VpnSettings;->mUnlockAction:Ljava/lang/Runnable;

    .line 658
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 659
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 361
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 362
    :cond_0
    sget-object v6, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    const-string v7, "no result returned by editor"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_1
    :goto_0
    return-void

    .line 365
    :cond_2
    const/4 v6, 0x2

    if-ne p1, v6, :cond_3

    .line 366
    const-string v6, "vpn_type"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 367
    .local v5, typeName:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/settings/vpn/VpnSettings;->createVpnProfile(Ljava/lang/String;)Landroid/net/vpn/VpnProfile;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/vpn/VpnSettings;->startVpnEditor(Landroid/net/vpn/VpnProfile;)V

    goto :goto_0

    .line 368
    .end local v5           #typeName:Ljava/lang/String;
    :cond_3
    if-ne p1, v7, :cond_8

    .line 369
    const-string v6, "vpn_profile"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/vpn/VpnProfile;

    .line 370
    .local v3, p:Landroid/net/vpn/VpnProfile;
    if-nez v3, :cond_4

    .line 371
    sget-object v6, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    const-string v7, "null object returned by editor"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 374
    :cond_4
    invoke-virtual {v3}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/vpn/VpnSettings;->getProfileIndexFromId(Ljava/lang/String;)I

    move-result v2

    .line 375
    .local v2, index:I
    invoke-direct {p0, v3, v2}, Lcom/android/settings/vpn/VpnSettings;->checkDuplicateName(Landroid/net/vpn/VpnProfile;I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 376
    move-object v4, v3

    .line 377
    .local v4, profile:Landroid/net/vpn/VpnProfile;
    const v6, 0x7f0804a3

    invoke-virtual {p0, v6}, Lcom/android/settings/vpn/VpnSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings/vpn/VpnSettings$10;

    invoke-direct {v7, p0, v4}, Lcom/android/settings/vpn/VpnSettings$10;-><init>(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V

    invoke-static {p0, v6, v7}, Lcom/android/settings/vpn/Util;->showErrorMessage(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 386
    .end local v4           #profile:Landroid/net/vpn/VpnProfile;
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/settings/vpn/VpnSettings;->needKeyStoreToSave(Landroid/net/vpn/VpnProfile;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 387
    new-instance v0, Lcom/android/settings/vpn/VpnSettings$11;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/settings/vpn/VpnSettings$11;-><init>(Lcom/android/settings/vpn/VpnSettings;IILandroid/content/Intent;)V

    .line 392
    .local v0, action:Ljava/lang/Runnable;
    invoke-direct {p0, v3, v0}, Lcom/android/settings/vpn/VpnSettings;->unlockKeyStore(Landroid/net/vpn/VpnProfile;Ljava/lang/Runnable;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 396
    .end local v0           #action:Ljava/lang/Runnable;
    :cond_6
    if-gez v2, :cond_7

    .line 397
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/settings/vpn/VpnSettings;->addProfile(Landroid/net/vpn/VpnProfile;)V

    .line 398
    const v6, 0x7f0804bb

    invoke-virtual {p0, v6}, Lcom/android/settings/vpn/VpnSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v3}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/settings/vpn/Util;->showShortToastMessage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 405
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 406
    .local v1, e:Ljava/io/IOException;
    move-object v4, v3

    .line 407
    .restart local v4       #profile:Landroid/net/vpn/VpnProfile;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings/vpn/VpnSettings$12;

    invoke-direct {v7, p0, v4}, Lcom/android/settings/vpn/VpnSettings$12;-><init>(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V

    invoke-static {p0, v6, v7}, Lcom/android/settings/vpn/Util;->showErrorMessage(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 401
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #profile:Landroid/net/vpn/VpnProfile;
    :cond_7
    :try_start_1
    invoke-direct {p0, v2, v3}, Lcom/android/settings/vpn/VpnSettings;->replaceProfile(ILandroid/net/vpn/VpnProfile;)V

    .line 402
    const v6, 0x7f0804bc

    invoke-virtual {p0, v6}, Lcom/android/settings/vpn/VpnSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v3}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/settings/vpn/Util;->showShortToastMessage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 415
    .end local v2           #index:I
    .end local v3           #p:Landroid/net/vpn/VpnProfile;
    :cond_8
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown request code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public declared-synchronized onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 422
    monitor-enter p0

    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 445
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    move-object v1, v0

    .line 446
    .local v1, d:Landroid/app/Dialog;
    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    invoke-interface {v3, v1}, Lcom/android/settings/vpn/VpnProfileActor;->validateInputs(Landroid/app/Dialog;)Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, error:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 448
    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    invoke-interface {v3, v1}, Lcom/android/settings/vpn/VpnProfileActor;->connect(Landroid/app/Dialog;)V

    .line 449
    const/16 v3, 0xc9

    invoke-virtual {p0, v3}, Lcom/android/settings/vpn/VpnSettings;->removeDialog(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    .end local v1           #d:Landroid/app/Dialog;
    .end local v2           #error:Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 452
    .restart local v1       #d:Landroid/app/Dialog;
    .restart local v2       #error:Ljava/lang/String;
    :cond_0
    const/16 v3, 0xc9

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/android/settings/vpn/VpnSettings;->dismissDialog(I)V

    .line 454
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0804a1

    invoke-virtual {p0, v4}, Lcom/android/settings/vpn/VpnSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080498

    new-instance v5, Lcom/android/settings/vpn/VpnSettings$15;

    invoke-direct {v5, p0}, Lcom/android/settings/vpn/VpnSettings$15;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/vpn/VpnSettings$14;

    invoke-direct {v4, p0}, Lcom/android/settings/vpn/VpnSettings$14;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/vpn/VpnSettings;->mShowingDialog:Landroid/app/Dialog;

    .line 476
    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings;->mShowingDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 422
    .end local v1           #d:Landroid/app/Dialog;
    .end local v2           #error:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 479
    :cond_1
    const/16 v3, 0xc9

    :try_start_2
    invoke-virtual {p0, v3}, Lcom/android/settings/vpn/VpnSettings;->removeDialog(I)V

    .line 480
    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    sget-object v4, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/vpn/VpnSettings;->changeState(Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 336
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {p0, v2}, Lcom/android/settings/vpn/VpnSettings;->getProfilePositionFrom(Landroid/widget/AdapterView$AdapterContextMenuInfo;)I

    move-result v1

    .line 337
    .local v1, position:I
    invoke-direct {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->getProfile(I)Landroid/net/vpn/VpnProfile;

    move-result-object v0

    .line 338
    .local v0, p:Landroid/net/vpn/VpnProfile;
    if-nez v0, :cond_0

    .line 339
    sget-object v2, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProfile("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v2, 0x0

    .line 356
    :goto_0
    return v2

    .line 342
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 356
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 345
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->connectOrDisconnect(Landroid/net/vpn/VpnProfile;)V

    move v2, v3

    .line 346
    goto :goto_0

    .line 348
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->startVpnEditor(Landroid/net/vpn/VpnProfile;)V

    move v2, v3

    .line 349
    goto :goto_0

    .line 351
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->deleteProfile(I)V

    move v2, v3

    .line 352
    goto :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    const v0, 0x7f040031

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->addPreferencesFromResource(I)V

    .line 153
    const-string v0, "vpn_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnListContainer:Landroid/preference/PreferenceCategory;

    .line 155
    const-string v0, "add_new_vpn"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mAddVpn:Landroid/preference/PreferenceScreen;

    .line 156
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mAddVpn:Landroid/preference/PreferenceScreen;

    new-instance v1, Lcom/android/settings/vpn/VpnSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/VpnSettings$1;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnManager:Landroid/net/vpn/VpnManager;

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectivityReceiver:Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnManager;->registerConnectivityReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->retrieveVpnListFromStorage()V

    .line 167
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->checkVpnConnectionStatusInBackground()V

    .line 168
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 317
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 318
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    invoke-direct {p0, p3}, Lcom/android/settings/vpn/VpnSettings;->getProfilePositionFrom(Landroid/widget/AdapterView$AdapterContextMenuInfo;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/vpn/VpnSettings;->getProfile(I)Landroid/net/vpn/VpnProfile;

    move-result-object v2

    .line 319
    .local v2, p:Landroid/net/vpn/VpnProfile;
    if-eqz v2, :cond_1

    .line 320
    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getState()Landroid/net/vpn/VpnState;

    move-result-object v3

    .line 321
    .local v3, state:Landroid/net/vpn/VpnState;
    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 322
    sget-object v4, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    if-ne v3, v4, :cond_2

    move v0, v7

    .line 323
    .local v0, isIdle:Z
    :goto_0
    if-nez v0, :cond_0

    sget-object v4, Landroid/net/vpn/VpnState;->DISCONNECTING:Landroid/net/vpn/VpnState;

    if-eq v3, v4, :cond_0

    sget-object v4, Landroid/net/vpn/VpnState;->CANCELLED:Landroid/net/vpn/VpnState;

    if-ne v3, v4, :cond_3

    :cond_0
    move v1, v7

    .line 324
    .local v1, isNotConnect:Z
    :goto_1
    const v4, 0x7f08049d

    invoke-interface {p1, v6, v7, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    if-nez v5, :cond_4

    move v5, v7

    :goto_2
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 326
    const/4 v4, 0x2

    const v5, 0x7f08049e

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    sget-object v5, Landroid/net/vpn/VpnState;->CONNECTED:Landroid/net/vpn/VpnState;

    if-ne v3, v5, :cond_5

    move v5, v7

    :goto_3
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 328
    const/4 v4, 0x3

    const v5, 0x7f08049f

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 329
    const/4 v4, 0x4

    const v5, 0x7f0804a0

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 332
    .end local v0           #isIdle:Z
    .end local v1           #isNotConnect:Z
    .end local v3           #state:Landroid/net/vpn/VpnState;
    :cond_1
    return-void

    .restart local v3       #state:Landroid/net/vpn/VpnState;
    :cond_2
    move v0, v6

    .line 322
    goto :goto_0

    .restart local v0       #isIdle:Z
    :cond_3
    move v1, v6

    .line 323
    goto :goto_1

    .restart local v1       #isNotConnect:Z
    :cond_4
    move v5, v6

    .line 324
    goto :goto_2

    :cond_5
    move v5, v6

    .line 326
    goto :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 192
    sparse-switch p1, :sswitch_data_0

    .line 202
    sget-object v0, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create reconnect dialog for event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->createReconnectDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 194
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createConnectDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 196
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createSecretNotSetDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 200
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->createEditDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 192
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_2
        0x2a -> :sswitch_2
        0x66 -> :sswitch_2
        0xc9 -> :sswitch_0
        0xca -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->unregisterForContextMenu(Landroid/view/View;)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnManager:Landroid/net/vpn/VpnManager;

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectivityReceiver:Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnManager;->unregisterConnectivityReceiver(Landroid/content/BroadcastReceiver;)V

    .line 185
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mShowingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mShowingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mShowingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 188
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 173
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mUnlockAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->isKeyStoreUnlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mUnlockAction:Ljava/lang/Runnable;

    .line 175
    .local v0, action:Ljava/lang/Runnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mUnlockAction:Ljava/lang/Runnable;

    .line 176
    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 178
    .end local v0           #action:Ljava/lang/Runnable;
    :cond_0
    return-void
.end method
