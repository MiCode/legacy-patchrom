.class public Lcom/android/phone/NetworkSettingENS;
.super Landroid/preference/PreferenceActivity;
.source "NetworkSettingENS.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# static fields
.field private static final BUTTON_SRCH_NETWRKS_KEY:Ljava/lang/String; = "button_srch_netwrks_key"

.field private static final CHECKBOX_AUTO_SELECT_KEY:Ljava/lang/String; = "button_auto_select_key_cb"

.field private static final DBG:Z = true

.field private static final DIALOG_NETWORK_AUTO_SELECT:I = 0x12c

.field private static final DIALOG_NETWORK_LIST_LOAD:I = 0xc8

.field private static final DIALOG_NETWORK_SELECTION:I = 0x64

.field private static final EVENT_AUTO_SELECT_DONE:I = 0x12c

.field private static final EVENT_NETWORK_SCAN_COMPLETED:I = 0x64

.field private static final EVENT_NETWORK_SELECTION_DONE:I = 0xc8

.field private static final EVENT_SET_NETWORK_TYPE_2G:I = 0x190

.field private static final EVENT_SET_NETWORK_TYPE_3G:I = 0x1f4

.field private static final EVENT_SET_NETWORK_TYPE_AUTOMATIC:I = 0x258

.field private static final LIST_NETWORKS_KEY:Ljava/lang/String; = "list_networks_key"

.field private static final LOG_TAG:Ljava/lang/String; = "NetworkSettingENS"


# instance fields
.field private mAutoSelectCheckbox:Landroid/preference/CheckBoxPreference;

.field private mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

.field private mDisplayNetworksWithoutNumber:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsAppendRatOnNetworkListEnabled:Z

.field private mIsExplicitManualSelect:Z

.field protected mIsForeground:Z

.field private mIsTriggerManualScan:Z

.field private mNetworkList:Landroid/preference/PreferenceGroup;

.field private mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

.field private final mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

.field mNetworkSelectMsg:Ljava/lang/String;

.field private mNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/WrappedNetworkInfo;",
            ">;"
        }
    .end annotation
.end field

.field mNoNetworkFoundMsg:Ljava/lang/String;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mSearchButton:Landroid/preference/Preference;

.field private mSelectNetworkManually:Lcom/android/phone/WrappedNetworkInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 99
    iput-boolean v0, p0, Lcom/android/phone/NetworkSettingENS;->mIsForeground:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/phone/NetworkSettingENS;->mIsExplicitManualSelect:Z

    .line 111
    iput-boolean v0, p0, Lcom/android/phone/NetworkSettingENS;->mIsTriggerManualScan:Z

    .line 113
    iput-boolean v0, p0, Lcom/android/phone/NetworkSettingENS;->mIsAppendRatOnNetworkListEnabled:Z

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NetworkSettingENS;->mDisplayNetworksWithoutNumber:Z

    .line 117
    new-instance v0, Lcom/android/phone/NetworkSettingENS$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSettingENS$1;-><init>(Lcom/android/phone/NetworkSettingENS;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSettingENS;->mHandler:Landroid/os/Handler;

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NetworkSettingENS;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    .line 253
    new-instance v0, Lcom/android/phone/NetworkSettingENS$2;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSettingENS$2;-><init>(Lcom/android/phone/NetworkSettingENS;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSettingENS;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    .line 283
    new-instance v0, Lcom/android/phone/NetworkSettingENS$3;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSettingENS$3;-><init>(Lcom/android/phone/NetworkSettingENS;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSettingENS;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    return-void
.end method

.method private CheckNetworkToForbidden(Lcom/android/internal/telephony/gsm/NetworkInfo;)V
    .locals 3
    .parameter "SelectedNI"

    .prologue
    .line 766
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 767
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getState()Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/gsm/NetworkInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getState()Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/gsm/NetworkInfo$State;->UNKNOWN:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    if-ne v1, v2, :cond_1

    .line 770
    :cond_0
    const-string v1, "SelectedNetworkToForbidden"

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->createManagedRoamingDialog()V

    .line 773
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NetworkSettingENS;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/phone/NetworkSettingENS;->mNetworks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/NetworkSettingENS;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/phone/NetworkSettingENS;->mNetworks:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/NetworkSettingENS;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSettingENS;->networksListLoaded(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/NetworkSettingENS;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/phone/NetworkSettingENS;->mIsTriggerManualScan:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/phone/NetworkSettingENS;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/phone/NetworkSettingENS;->mIsTriggerManualScan:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/NetworkSettingENS;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/phone/NetworkSettingENS;->loadNetworksList()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/NetworkSettingENS;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/phone/NetworkSettingENS;->mIsAppendRatOnNetworkListEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/phone/NetworkSettingENS;Lcom/android/internal/telephony/gsm/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSettingENS;->CheckNetworkToForbidden(Lcom/android/internal/telephony/gsm/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/NetworkSettingENS;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/phone/NetworkSettingENS;->updateAutoSelect()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/NetworkSettingENS;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/NetworkSettingENS;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSettingENS;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/NetworkSettingENS;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/phone/NetworkSettingENS;->mAutoSelectCheckbox:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/NetworkSettingENS;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSettingENS;->saveNetworkTypePreference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/NetworkSettingENS;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/phone/NetworkSettingENS;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/NetworkSettingENS;)Lcom/android/phone/WrappedNetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/phone/NetworkSettingENS;->mSelectNetworkManually:Lcom/android/phone/WrappedNetworkInfo;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/phone/NetworkSettingENS;Lcom/android/phone/WrappedNetworkInfo;)Lcom/android/phone/WrappedNetworkInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/phone/NetworkSettingENS;->mSelectNetworkManually:Lcom/android/phone/WrappedNetworkInfo;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/phone/NetworkSettingENS;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSettingENS;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/phone/NetworkSettingENS;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/phone/NetworkSettingENS;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    return-object p1
.end method

.method private displayEmptyNetworkList()V
    .locals 3

    .prologue
    .line 533
    iget-boolean v1, p0, Lcom/android/phone/NetworkSettingENS;->mIsExplicitManualSelect:Z

    if-eqz v1, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b023f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, status:Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 544
    return-void

    .line 539
    .end local v0           #status:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0213

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #status:Ljava/lang/String;
    goto :goto_0
.end method

.method private displayNetworkQueryFailed(I)V
    .locals 3
    .parameter "error"

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0215

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, status:Ljava/lang/String;
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 565
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0216

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 587
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 589
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 566
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 567
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0217

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 568
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 569
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0218

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 570
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_PIN2:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_6

    .line 571
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0219

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 572
    :cond_6
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_7

    .line 573
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b021a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 574
    :cond_7
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_8

    .line 575
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b021b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 576
    :cond_8
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_DURING_VOICE_CALL:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_9

    .line 577
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b021c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 578
    :cond_9
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_a

    .line 579
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b021d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 580
    :cond_a
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_b

    .line 581
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b021e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 582
    :cond_b
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_c

    .line 583
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b021f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 584
    :cond_c
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 585
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0220

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "ex"

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0222

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, status:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 599
    return-void
.end method

.method private displayNetworkSeletionInProgress(Ljava/lang/String;)V
    .locals 4
    .parameter "networkStr"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 547
    iget-object v0, p0, Lcom/android/phone/NetworkSettingENS;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/NetworkSettingENS;->mIsExplicitManualSelect:Z

    if-nez v0, :cond_1

    .line 548
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b023e

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSettingENS;->mNetworkSelectMsg:Ljava/lang/String;

    .line 553
    :goto_0
    iget-boolean v0, p0, Lcom/android/phone/NetworkSettingENS;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 554
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSettingENS;->showDialog(I)V

    .line 557
    :cond_0
    return-void

    .line 550
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0221

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSettingENS;->mNetworkSelectMsg:Ljava/lang/String;

    goto :goto_0
.end method

.method private loadNetworksList()V
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/phone/NetworkSettingENS;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-nez v0, :cond_0

    .line 604
    const-string v0, "quit loadNetworksList, mNetworkQueryService is not ready"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V

    .line 621
    :goto_0
    return-void

    .line 609
    :cond_0
    const-string v0, "load networks list..."

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V

    .line 611
    iget-boolean v0, p0, Lcom/android/phone/NetworkSettingENS;->mIsForeground:Z

    if-eqz v0, :cond_1

    .line 612
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSettingENS;->showDialog(I)V

    .line 618
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/NetworkSettingENS;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v1, p0, Lcom/android/phone/NetworkSettingENS;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v0, v1}, Lcom/android/phone/INetworkQueryService;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 619
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 777
    const-string v0, "NetworkSettingENS"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    return-void
.end method

.method private networksListLoaded(I)V
    .locals 9
    .parameter "status"

    .prologue
    .line 646
    const-string v7, "networks list dialog loaded"

    invoke-direct {p0, v7}, Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V

    .line 649
    const-string v7, "hideProgressPanel"

    invoke-direct {p0, v7}, Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V

    .line 651
    iget-boolean v7, p0, Lcom/android/phone/NetworkSettingENS;->mIsForeground:Z

    if-eqz v7, :cond_0

    .line 653
    const/16 v7, 0xc8

    :try_start_0
    invoke-virtual {p0, v7}, Lcom/android/phone/NetworkSettingENS;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 661
    const-string v7, "error while querying available networks"

    invoke-direct {p0, v7}, Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V

    .line 662
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSettingENS;->displayNetworkQueryFailed(I)V

    .line 663
    invoke-direct {p0}, Lcom/android/phone/NetworkSettingENS;->updateAutoSelect()V

    .line 752
    :goto_1
    return-void

    .line 665
    :cond_1
    iget-object v7, p0, Lcom/android/phone/NetworkSettingENS;->mNetworks:Ljava/util/List;

    if-eqz v7, :cond_6

    .line 666
    const/4 v2, 0x0

    .line 669
    .local v2, i:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .local v1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 672
    .local v5, plmnSet:Ljava/util/HashSet;
    iget-object v7, p0, Lcom/android/phone/NetworkSettingENS;->mNetworks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/WrappedNetworkInfo;

    .line 673
    .local v6, wni:Lcom/android/phone/WrappedNetworkInfo;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 674
    .local v0, buf:Ljava/lang/StringBuffer;
    iget-object v7, v6, Lcom/android/phone/WrappedNetworkInfo;->carrierDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 676
    iget-boolean v7, p0, Lcom/android/phone/NetworkSettingENS;->mIsAppendRatOnNetworkListEnabled:Z

    if-eqz v7, :cond_3

    .line 678
    iget-boolean v7, v6, Lcom/android/phone/WrappedNetworkInfo;->isCurrent:Z

    if-eqz v7, :cond_2

    const-string v7, " \u2714"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 679
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "34387 normalized [NetworkList]:  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lcom/android/phone/WrappedNetworkInfo;->ni:Lcom/android/internal/telephony/gsm/NetworkInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 681
    :cond_3
    iget-object v7, v6, Lcom/android/phone/WrappedNetworkInfo;->ni:Lcom/android/internal/telephony/gsm/NetworkInfo;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    :cond_4
    iget-object v7, v6, Lcom/android/phone/WrappedNetworkInfo;->ni:Lcom/android/internal/telephony/gsm/NetworkInfo;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 690
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v6           #wni:Lcom/android/phone/WrappedNetworkInfo;
    :cond_5
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 691
    .local v4, mNetworkListDialog:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0b0211

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 693
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    new-instance v8, Lcom/android/phone/NetworkSettingENS$4;

    invoke-direct {v8, p0}, Lcom/android/phone/NetworkSettingENS$4;-><init>(Lcom/android/phone/NetworkSettingENS;)V

    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 734
    new-instance v7, Lcom/android/phone/NetworkSettingENS$5;

    invoke-direct {v7, p0}, Lcom/android/phone/NetworkSettingENS$5;-><init>(Lcom/android/phone/NetworkSettingENS;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 743
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 744
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 747
    .end local v1           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #mNetworkListDialog:Landroid/app/AlertDialog$Builder;
    .end local v5           #plmnSet:Ljava/util/HashSet;
    :cond_6
    const-string v7, "No Networks found"

    invoke-direct {p0, v7}, Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V

    .line 748
    invoke-direct {p0}, Lcom/android/phone/NetworkSettingENS;->displayEmptyNetworkList()V

    .line 749
    invoke-direct {p0}, Lcom/android/phone/NetworkSettingENS;->updateAutoSelect()V

    goto/16 :goto_1

    .line 654
    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method

.method private saveNetworkTypePreference(Ljava/lang/String;)V
    .locals 3
    .parameter "networkType"

    .prologue
    .line 639
    const-string v1, "Settings"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/NetworkSettingENS;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 640
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "network.type.default.preference"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 641
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 642
    return-void
.end method

.method private selectNetworkAutomatic()V
    .locals 4

    .prologue
    .line 624
    const-string v0, "select network automatically..."

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V

    .line 626
    iget-boolean v0, p0, Lcom/android/phone/NetworkSettingENS;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 627
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSettingENS;->showDialog(I)V

    .line 632
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->setManualNetworkSelectionTime()V

    .line 633
    iget-object v0, p0, Lcom/android/phone/NetworkSettingENS;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/NetworkSettingENS;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x258

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 635
    return-void
.end method

.method private triggerScan(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 418
    if-eqz p1, :cond_1

    const-string v0, "com.android.phone.networksettingens.MANUAL_SCAN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/android/phone/NetworkSettingENS;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v0, :cond_2

    .line 422
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iput-boolean v2, p0, Lcom/android/phone/NetworkSettingENS;->mIsForeground:Z

    .line 426
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NetworkSettingENS;->loadNetworksList()V

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NetworkSettingENS;->mIsTriggerManualScan:Z

    .line 434
    :cond_1
    :goto_0
    return-void

    .line 431
    :cond_2
    iput-boolean v2, p0, Lcom/android/phone/NetworkSettingENS;->mIsTriggerManualScan:Z

    goto :goto_0
.end method

.method private updateAutoSelect()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 756
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 758
    iget-object v1, p0, Lcom/android/phone/NetworkSettingENS;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 759
    .local v0, isAutomatic:Z
    :goto_0
    iget-object v1, p0, Lcom/android/phone/NetworkSettingENS;->mAutoSelectCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsAutomatic : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V

    .line 761
    return-void

    .end local v0           #isAutomatic:Z
    :cond_0
    move v0, v2

    .line 758
    goto :goto_0
.end method


# virtual methods
.method public getNormalizedCarrierName(Lcom/android/internal/telephony/gsm/NetworkInfo;)Ljava/lang/String;
    .locals 5
    .parameter "ni"

    .prologue
    const/4 v4, 0x3

    .line 352
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/NetworkSettingENS;->mDisplayNetworksWithoutNumber:Z

    .line 353
    if-eqz p1, :cond_2

    .line 355
    iget-boolean v1, p0, Lcom/android/phone/NetworkSettingENS;->mDisplayNetworksWithoutNumber:Z

    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 370
    :goto_0
    return-object v1

    .line 361
    :cond_0
    const-string v0, ""

    .line 362
    .local v0, mccMncNumber:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v4, :cond_1

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 370
    .end local v0           #mccMncNumber:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/NetworkSettingENS;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/NetworkSettingENS;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    const/16 v1, 0xc8

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSettingENS;->dismissDialog(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 336
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/NetworkSettingENS;->updateAutoSelect()V

    .line 337
    return-void

    .line 327
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 328
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 333
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const-class v3, Lcom/android/phone/NetworkQueryService;

    .line 375
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 377
    const v1, 0x7f050004

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSettingENS;->addPreferencesFromResource(I)V

    .line 379
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/phone/NetworkSettingENS;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 381
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "list_networks_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/phone/NetworkSettingENS;->mNetworkList:Landroid/preference/PreferenceGroup;

    .line 383
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "button_srch_netwrks_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NetworkSettingENS;->mSearchButton:Landroid/preference/Preference;

    .line 384
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "button_auto_select_key_cb"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/NetworkSettingENS;->mAutoSelectCheckbox:Landroid/preference/CheckBoxPreference;

    .line 391
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSettingENS;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 392
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/android/phone/NetworkSettingENS;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/phone/NetworkSettingENS;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 397
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSettingENS;->triggerScan(Landroid/content/Intent;)V

    .line 401
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 402
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "append_rat_to_network_list"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/NetworkSettingENS;->mIsAppendRatOnNetworkListEnabled:Z

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate> append_rat_to_network_list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/NetworkSettingENS;->mIsAppendRatOnNetworkListEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 483
    const/16 v1, 0x64

    if-eq p1, v1, :cond_0

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_0

    const/16 v1, 0x12c

    if-ne p1, v1, :cond_1

    .line 485
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 486
    .local v0, dialog:Landroid/app/ProgressDialog;
    sparse-switch p1, :sswitch_data_0

    :goto_0
    move-object v1, v0

    .line 517
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_1
    return-object v1

    .line 493
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/NetworkSettingENS;->mNetworkSelectMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 494
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 495
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 496
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 499
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0228

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 500
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 501
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 502
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 506
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0212

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 507
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 508
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 509
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 517
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 486
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 459
    iget-object v1, p0, Lcom/android/phone/NetworkSettingENS;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v1, :cond_0

    .line 461
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/NetworkSettingENS;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/NetworkSettingENS;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    .line 462
    const-string v1, "onDestroy> stopNetworkQuery"

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/android/phone/NetworkSettingENS;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 471
    iget-object v1, p0, Lcom/android/phone/NetworkSettingENS;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSettingENS;->unbindService(Landroid/content/ServiceConnection;)V

    .line 472
    const-string v1, "unbind QueryService"

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V

    .line 477
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 478
    return-void

    .line 463
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 464
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 341
    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    .line 342
    const-string v0, "key code is search key, ignore it"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V

    .line 343
    const/4 v0, 0x1

    .line 345
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Lcom/android/phone/NetworkSettingENS;->setIntent(Landroid/content/Intent;)V

    .line 411
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSettingENS;->triggerScan(Landroid/content/Intent;)V

    .line 412
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 447
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NetworkSettingENS;->mIsForeground:Z

    .line 449
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 299
    .local v0, handled:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/NetworkSettingENS;->mIsExplicitManualSelect:Z

    .line 301
    iget-object v1, p0, Lcom/android/phone/NetworkSettingENS;->mSearchButton:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 302
    invoke-direct {p0}, Lcom/android/phone/NetworkSettingENS;->loadNetworksList()V

    .line 303
    const/4 v0, 0x1

    .line 319
    :goto_0
    return v0

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/android/phone/NetworkSettingENS;->mAutoSelectCheckbox:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 305
    iget-object v1, p0, Lcom/android/phone/NetworkSettingENS;->mAutoSelectCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    invoke-direct {p0}, Lcom/android/phone/NetworkSettingENS;->selectNetworkAutomatic()V

    .line 314
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 309
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/NetworkSettingENS;->loadNetworksList()V

    .line 312
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/NetworkSettingENS;->mIsExplicitManualSelect:Z

    goto :goto_1

    .line 316
    :cond_2
    const-string v1, "Can\'t come here"

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 522
    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12c

    if-ne p1, v0, :cond_1

    .line 526
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NetworkSettingENS;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 528
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 439
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NetworkSettingENS;->mIsForeground:Z

    .line 441
    invoke-direct {p0}, Lcom/android/phone/NetworkSettingENS;->updateAutoSelect()V

    .line 442
    return-void
.end method
