.class public Lcom/android/phone/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Settings$MyHandler;
    }
.end annotation


# static fields
.field private static final AUTOMATIC:I = 0x2

.field private static final BUTTON_APN_KEY:Ljava/lang/String; = "button_apn_key"

.field private static final BUTTON_CARRIER_SEL_KEY:Ljava/lang/String; = "button_carrier_sel_key"

.field private static final BUTTON_PREFERED_NETWORK_MODE:Ljava/lang/String; = "preferred_network_mode_key"

.field private static final BUTTON_PREFERRED_NETWORKS_KEY:Ljava/lang/String; = "button_preferrednetworks_key"

.field private static final BUTTON_ROAMING_KEY:Ljava/lang/String; = "button_roaming_key"

.field private static final BUTTON_SELECT_NETWORK_KEY:Ljava/lang/String; = "button_select_network_key"

.field private static final BUTTON_SMSC_KEY:Ljava/lang/String; = "button_smsc_key"

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "NetworkSettings"

.field private static final MODE_CDMA:I = 0x64

.field private static final MODE_GLOBAL:I = 0x12c

.field private static final MODE_GSM:I = 0xc8

.field public static final NETWORK_TYPE_PREFERENCE_2G:Ljava/lang/String; = "2g"

.field public static final NETWORK_TYPE_PREFERENCE_3G:Ljava/lang/String; = "3g"

.field public static final NETWORK_TYPE_PREFERENCE_AUTOMATIC:Ljava/lang/String; = "automatic"

.field private static final ONLY_2G:I = 0x0

.field private static final ONLY_3G:I = 0x1

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x11

.field static final preferredNetworkMode:I

.field private static final selectNWSummary:[I

.field private static final selectNWSummary_34387:[I


# instance fields
.field final FID_34387_MULTIMODE:Ljava/lang/String;

.field private mButtonCarrierSelKey:Landroid/preference/PreferenceScreen;

.field private mButtonDataRoam:Landroid/preference/CheckBoxPreference;

.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field private mButtonSelectNetwork:Landroid/preference/ListPreference;

.field private mButtonSmscKey:Landroid/preference/PreferenceScreen;

.field mCdmaOptions:Lcom/android/phone/CdmaOptions;

.field private mClickedPreference:Landroid/preference/Preference;

.field private mHandler:Lcom/android/phone/Settings$MyHandler;

.field private mIsNetworkSelectMenuOn:Z

.field private mIsNetworkSettingENS:Z

.field private mOkClicked:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreferredNetworks:Landroid/preference/Preference;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSelectedNetwork:I

.field private mSetPrefModeInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 101
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/Settings;->selectNWSummary:[I

    .line 130
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/phone/Settings;->selectNWSummary_34387:[I

    return-void

    .line 101
    :array_0
    .array-data 0x4
        0x9ft 0x2t 0xbt 0x7ft
        0xa0t 0x2t 0xbt 0x7ft
        0xa1t 0x2t 0xbt 0x7ft
    .end array-data

    .line 130
    :array_1
    .array-data 0x4
        0x3at 0x2t 0xbt 0x7ft
        0x3bt 0x2t 0xbt 0x7ft
        0x3ct 0x2t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 96
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/Settings;->mSelectedNetwork:I

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/Settings;->mSetPrefModeInProgress:Z

    .line 125
    const-string v0, "fid_34387_multimode"

    iput-object v0, p0, Lcom/android/phone/Settings;->FID_34387_MULTIMODE:Ljava/lang/String;

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/Settings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 580
    return-void
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .locals 6
    .parameter "NetworkMode"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "fid_34387_multimode"

    .line 859
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b023d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 860
    .local v0, chosen:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 891
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Global"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 894
    :goto_0
    return-void

    .line 863
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fid_34387_multimode"

    invoke-static {v1, v5, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 864
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " GSM / UMTS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 865
    :cond_0
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WCDMA pref"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 868
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " GSM only"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 871
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WCDMA only"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 874
    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " GSM/WCDMA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 877
    :pswitch_4
    iget-object v1, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fid_34387_multimode"

    invoke-static {v1, v5, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_1

    const-string v1, "ro.mot.phonemode.vzw4gphone"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 880
    :cond_1
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CDMA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 881
    :cond_2
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CDMA / EvDo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 884
    :pswitch_5
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CDMA only"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 887
    :pswitch_6
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " EvDo only"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 860
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/phone/Settings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/phone/Settings;->mSetPrefModeInProgress:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/Settings;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/Settings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/Settings;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/phone/Settings;->map2g3gNetworkMode(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/Settings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/phone/Settings;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/Settings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/Settings;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/phone/Settings;->map2g3gValue(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/Settings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/phone/Settings;->setPreferredNetworkUI(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/Settings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/phone/Settings;->displaySettingsPerNetworkMode(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/Settings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/phone/Settings;->displayCdmaSystemSelectionSettings(I)V

    return-void
.end method

.method private checkModeCategory(I)I
    .locals 3
    .parameter "settingsNetworkMode"

    .prologue
    .line 947
    const/4 v0, 0x0

    .line 948
    .local v0, rtn:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkModeCategory input: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 950
    packed-switch p1, :pswitch_data_0

    .line 964
    const/16 v0, 0x12c

    .line 967
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkModeCategory output: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 968
    return v0

    .line 954
    :pswitch_0
    const/16 v0, 0x64

    .line 955
    goto :goto_0

    .line 960
    :pswitch_1
    const/16 v0, 0xc8

    .line 961
    goto :goto_0

    .line 950
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private constructDialog(I)Landroid/app/ProgressDialog;
    .locals 4
    .parameter "NW_MODE"

    .prologue
    const/4 v3, 0x1

    .line 972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructDialog() with mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 973
    const/16 v1, 0x12c

    if-ne v1, p1, :cond_0

    const/4 v1, 0x0

    .line 986
    :goto_0
    return-object v1

    .line 975
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 976
    .local v0, pd:Landroid/app/ProgressDialog;
    const/16 v1, 0x64

    if-ne v1, p1, :cond_2

    const v1, 0x7f0b0233

    invoke-virtual {p0, v1}, Lcom/android/phone/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 978
    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 979
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 980
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 981
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 984
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    move-object v1, v0

    .line 986
    goto :goto_0

    .line 977
    :cond_2
    const/16 v1, 0xc8

    if-ne v1, p1, :cond_1

    const v1, 0x7f0b0232

    invoke-virtual {p0, v1}, Lcom/android/phone/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private displayCdmaSystemSelectionSettings(I)V
    .locals 2
    .parameter "settingsNetworkMode"

    .prologue
    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayCdmaSystemSelectionSettings as: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 932
    packed-switch p1, :pswitch_data_0

    .line 940
    iget-object v0, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaOptions;->setSystemSelectButtonEnabled(Z)V

    .line 943
    :goto_0
    return-void

    .line 936
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaOptions;->setSystemSelectButtonEnabled(Z)V

    goto :goto_0

    .line 932
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private displaySettingsPerNetworkMode(I)V
    .locals 5
    .parameter "settingsNetworkMode"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 897
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "button_apn_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 898
    .local v0, APNMenu:Landroid/preference/Preference;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displaySettingsPerNetworkMode as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 900
    packed-switch p1, :pswitch_data_0

    .line 920
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonCarrierSelKey:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 921
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 922
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 923
    iget-object v1, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v1, v3}, Lcom/android/phone/CdmaOptions;->setSystemSelectButtonEnabled(Z)V

    .line 926
    :goto_0
    return-void

    .line 904
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonCarrierSelKey:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 905
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 906
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 907
    iget-object v1, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v1, v4}, Lcom/android/phone/CdmaOptions;->setSystemSelectButtonEnabled(Z)V

    goto :goto_0

    .line 913
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonCarrierSelKey:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 914
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 915
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 916
    iget-object v1, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v1, v3}, Lcom/android/phone/CdmaOptions;->setSystemSelectButtonEnabled(Z)V

    goto :goto_0

    .line 900
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleNetworkPreferenceChange(I)V
    .locals 4
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNetworkPreferenceChange to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 757
    iget v1, p0, Lcom/android/phone/Settings;->mSelectedNetwork:I

    if-ne p1, v1, :cond_0

    .line 758
    const-string v1, "No Change in preferred network"

    invoke-static {v1}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 786
    :goto_0
    return-void

    .line 761
    :cond_0
    const/4 v0, 0x0

    .line 762
    .local v0, networkType:I
    packed-switch p1, :pswitch_data_0

    .line 776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: handleNetworkPreferenceChange : unknown item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 764
    :pswitch_0
    const-string v1, "2G_ONLY/GSM"

    invoke-static {v1}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 765
    const/4 v0, 0x1

    .line 780
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->setManualNetworkSelectionTime()V

    .line 782
    iget-object v1, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-virtual {v2, v3}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 784
    iput-boolean v3, p0, Lcom/android/phone/Settings;->mSetPrefModeInProgress:Z

    .line 785
    invoke-direct {p0, p1}, Lcom/android/phone/Settings;->setPreferredNetworkUI(I)V

    goto :goto_0

    .line 768
    :pswitch_1
    const-string v1, "3G_ONLY/UMTS"

    invoke-static {v1}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 769
    const/4 v0, 0x2

    .line 770
    goto :goto_1

    .line 772
    :pswitch_2
    const/4 v0, 0x0

    .line 773
    const-string v1, "AUTOMATIC/GSM&UMTS"

    invoke-static {v1}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 762
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1088
    const-string v0, "NetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    return-void
.end method

.method private map2g3gNetworkMode(I)I
    .locals 3
    .parameter "settingsNetworkMode"

    .prologue
    .line 1044
    const/4 v0, 0x0

    .line 1045
    .local v0, newMode:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map2g3gNetworkMode input: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 1047
    packed-switch p1, :pswitch_data_0

    .line 1061
    const/4 v0, 0x7

    .line 1064
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map2g3gNetworkMode output: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 1065
    return v0

    .line 1051
    :pswitch_0
    const/4 v0, 0x4

    .line 1052
    goto :goto_0

    .line 1057
    :pswitch_1
    const/4 v0, 0x0

    .line 1058
    goto :goto_0

    .line 1047
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private map2g3gValue(I)I
    .locals 2
    .parameter "settingsNetworkMode"

    .prologue
    .line 1024
    const/4 v0, 0x2

    .line 1025
    .local v0, newValue:I
    packed-switch p1, :pswitch_data_0

    .line 1036
    const-string v1, "AUTOMATIC"

    invoke-static {v1}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 1037
    const/4 v0, 0x2

    .line 1040
    :goto_0
    return v0

    .line 1027
    :pswitch_0
    const-string v1, "2G_ONLY"

    invoke-static {v1}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 1028
    const/4 v0, 0x0

    .line 1029
    goto :goto_0

    .line 1031
    :pswitch_1
    const-string v1, "3G_ONLY"

    invoke-static {v1}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 1032
    const/4 v0, 0x1

    .line 1033
    goto :goto_0

    .line 1025
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private networkSelectFlexNUserSetting()V
    .locals 11

    .prologue
    .line 799
    iget-object v8, p0, Lcom/android/phone/Settings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 800
    .local v0, allEntries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/phone/Settings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 802
    .local v1, allEntryValues:[Ljava/lang/CharSequence;
    move-object v6, v0

    .line 803
    .local v6, visibleEntries:[Ljava/lang/CharSequence;
    move-object v7, v1

    .line 806
    .local v7, visibleEntryValues:[Ljava/lang/CharSequence;
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/phone/Settings;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "network.type.hide.usersettingui"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 808
    .local v3, networkSelectUI:Ljava/lang/String;
    const-string v8, "2g_3g"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 809
    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/CharSequence;

    .end local v6           #visibleEntries:[Ljava/lang/CharSequence;
    const/4 v8, 0x0

    const/4 v9, 0x2

    aget-object v9, v0, v9

    aput-object v9, v6, v8

    .line 810
    .restart local v6       #visibleEntries:[Ljava/lang/CharSequence;
    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/CharSequence;

    .end local v7           #visibleEntryValues:[Ljava/lang/CharSequence;
    const/4 v8, 0x0

    const/4 v9, 0x2

    aget-object v9, v1, v9

    aput-object v9, v7, v8

    .line 811
    .restart local v7       #visibleEntryValues:[Ljava/lang/CharSequence;
    const-string v8, "hide:2g_3g"

    invoke-static {v8}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 824
    :goto_0
    iget-object v8, p0, Lcom/android/phone/Settings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v8, v6}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 825
    iget-object v8, p0, Lcom/android/phone/Settings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 828
    const/4 v4, 0x0

    .line 829
    .local v4, networkType:I
    const/4 v5, 0x2

    .line 831
    .local v5, networkTypeUIId:I
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/phone/Settings;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "network.type.default.preference"

    const-string v10, "automatic"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 833
    .local v2, networkSelectPrefernce:Ljava/lang/String;
    const-string v8, "2g"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 834
    const/4 v4, 0x1

    .line 835
    const/4 v5, 0x0

    .line 836
    const-string v8, "default:2g"

    invoke-static {v8}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 849
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->setManualNetworkSelectionTime()V

    .line 851
    iget-object v8, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v9, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v4, v9}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 853
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/phone/Settings;->mSetPrefModeInProgress:Z

    .line 854
    invoke-direct {p0, v5}, Lcom/android/phone/Settings;->setPreferredNetworkUI(I)V

    .line 855
    return-void

    .line 812
    .end local v2           #networkSelectPrefernce:Ljava/lang/String;
    .end local v4           #networkType:I
    .end local v5           #networkTypeUIId:I
    :cond_0
    const-string v8, "2g"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 813
    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/CharSequence;

    .end local v6           #visibleEntries:[Ljava/lang/CharSequence;
    const/4 v8, 0x0

    const/4 v9, 0x1

    aget-object v9, v0, v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x2

    aget-object v9, v0, v9

    aput-object v9, v6, v8

    .line 814
    .restart local v6       #visibleEntries:[Ljava/lang/CharSequence;
    const/4 v8, 0x2

    new-array v7, v8, [Ljava/lang/CharSequence;

    .end local v7           #visibleEntryValues:[Ljava/lang/CharSequence;
    const/4 v8, 0x0

    const/4 v9, 0x1

    aget-object v9, v1, v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x2

    aget-object v9, v1, v9

    aput-object v9, v7, v8

    .line 815
    .restart local v7       #visibleEntryValues:[Ljava/lang/CharSequence;
    const-string v8, "hide:2g"

    invoke-static {v8}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 816
    :cond_1
    const-string v8, "3g"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 817
    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/CharSequence;

    .end local v6           #visibleEntries:[Ljava/lang/CharSequence;
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, v0, v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x2

    aget-object v9, v0, v9

    aput-object v9, v6, v8

    .line 818
    .restart local v6       #visibleEntries:[Ljava/lang/CharSequence;
    const/4 v8, 0x2

    new-array v7, v8, [Ljava/lang/CharSequence;

    .end local v7           #visibleEntryValues:[Ljava/lang/CharSequence;
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, v1, v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x2

    aget-object v9, v1, v9

    aput-object v9, v7, v8

    .line 819
    .restart local v7       #visibleEntryValues:[Ljava/lang/CharSequence;
    const-string v8, "hide:3g"

    invoke-static {v8}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 822
    :cond_2
    const-string v8, "NetworkSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hide: skipping unknown/empty value \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 837
    .restart local v2       #networkSelectPrefernce:Ljava/lang/String;
    .restart local v4       #networkType:I
    .restart local v5       #networkTypeUIId:I
    :cond_3
    const-string v8, "3g"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 838
    const/4 v4, 0x2

    .line 839
    const/4 v5, 0x1

    .line 840
    const-string v8, "default:3g"

    invoke-static {v8}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 841
    :cond_4
    const-string v8, "automatic"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 842
    const/4 v4, 0x0

    .line 843
    const/4 v5, 0x2

    .line 844
    const-string v8, "default:auto"

    invoke-static {v8}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 846
    :cond_5
    const-string v8, "NetworkSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "default: skipping unknown value \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private setPreferredNetworkUI(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fid_34387_multimode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    sget-object v1, Lcom/android/phone/Settings;->selectNWSummary_34387:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 795
    :goto_0
    iput p1, p0, Lcom/android/phone/Settings;->mSelectedNetwork:I

    .line 796
    return-void

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    sget-object v1, Lcom/android/phone/Settings;->selectNWSummary:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private showNoSIMDialog()V
    .locals 4

    .prologue
    .line 990
    const-string v2, "showNoSIMDialog()...."

    invoke-static {v2}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 994
    new-instance v0, Lcom/android/phone/Settings$1;

    invoke-direct {v0, p0}, Lcom/android/phone/Settings$1;-><init>(Lcom/android/phone/Settings;)V

    .line 1000
    .local v0, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0234

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b016e

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0239

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1007
    .local v1, noSIMDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 1009
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1012
    const-string v2, "ro.mot.phonemode.vzw4gphone"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1013
    new-instance v2, Lcom/android/phone/Settings$2;

    invoke-direct {v2, p0}, Lcom/android/phone/Settings$2;-><init>(Lcom/android/phone/Settings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1021
    :cond_0
    return-void
.end method


# virtual methods
.method public isLatamPackageAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "mPackageName"
    .parameter "mActivityName"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1094
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 1096
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1097
    .local v2, info:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v4, v4

    if-nez v4, :cond_1

    :cond_0
    move v4, v6

    .line 1111
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return v4

    .line 1100
    .restart local v2       #info:Landroid/content/pm/PackageInfo;
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 1101
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v4, v4, v1

    iget-object v3, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1102
    .local v3, target:Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    move v4, v7

    .line 1103
    goto :goto_0

    .line 1100
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #target:Ljava/lang/String;
    :cond_3
    move v4, v6

    .line 1106
    goto :goto_0

    .line 1107
    .end local v1           #i:I
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move v4, v6

    .line 1108
    goto :goto_0

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    move v4, v6

    .line 1111
    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1070
    packed-switch p1, :pswitch_data_0

    .line 1085
    :cond_0
    :goto_0
    return-void

    .line 1072
    :pswitch_0
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1074
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1076
    iget-object v1, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    iget-object v2, p0, Lcom/android/phone/Settings;->mClickedPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaOptions;->showDialog(Landroid/preference/Preference;)V

    goto :goto_0

    .line 1070
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 140
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 142
    iput-boolean v1, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v11, "preferred_network_mode"

    const-string v10, "button_select_network_key"

    const-string v9, "button_carrier_sel_key"

    .line 249
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 251
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 252
    new-instance v5, Lcom/android/phone/Settings$MyHandler;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/phone/Settings$MyHandler;-><init>(Lcom/android/phone/Settings;Lcom/android/phone/Settings$1;)V

    iput-object v5, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    .line 255
    iget-object v5, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "fid_34387_multimode"

    invoke-static {v5, v6, v8}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_4

    .line 256
    const v5, 0x7f050010

    invoke-virtual {p0, v5}, Lcom/android/phone/Settings;->addPreferencesFromResource(I)V

    .line 262
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 266
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "data_roaming_menu"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 268
    .local v0, dataRoamMenu:Z
    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 269
    :cond_0
    const-string v5, "button_roaming_key"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    .line 274
    :goto_1
    const-string v5, "preferred_network_mode_key"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    .line 278
    const-string v5, "button_preferrednetworks_key"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/phone/Settings;->mPreferredNetworks:Landroid/preference/Preference;

    .line 279
    iget-object v5, p0, Lcom/android/phone/Settings;->mPreferredNetworks:Landroid/preference/Preference;

    if-eqz v5, :cond_1

    const-string v5, "com.motorola.PreferredNetwork"

    const-string v6, "com.motorola.PreferredNetwork.PreferredNetworks"

    invoke-virtual {p0, v5, v6}, Lcom/android/phone/Settings;->isLatamPackageAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 280
    iget-object v5, p0, Lcom/android/phone/Settings;->mPreferredNetworks:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 281
    const-string v5, "Phone_umts"

    const-string v6, "PREFFERED NETWORK REMOVED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_1
    iget-object v5, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "fid_34387_multimode"

    invoke-static {v5, v6, v8}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_6

    .line 289
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 291
    iget-object v5, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preferred_network_mode"

    invoke-static {v5, v11, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 294
    .local v4, settingsNetworkMode:I
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-direct {p0, v4}, Lcom/android/phone/Settings;->map2g3gNetworkMode(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 299
    new-instance v5, Lcom/android/phone/CdmaOptions;

    invoke-direct {v5, p0, v3}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v5, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 301
    const-string v5, "button_carrier_sel_key"

    invoke-virtual {v3, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/phone/Settings;->mButtonCarrierSelKey:Landroid/preference/PreferenceScreen;

    .line 302
    const-string v5, "button_select_network_key"

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/phone/Settings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    .line 303
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 305
    invoke-direct {p0, v4}, Lcom/android/phone/Settings;->displaySettingsPerNetworkMode(I)V

    .line 371
    .end local v4           #settingsNetworkMode:I
    :cond_2
    :goto_2
    const-string v5, "button_carrier_sel_key"

    invoke-virtual {v3, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/phone/Settings;->mButtonCarrierSelKey:Landroid/preference/PreferenceScreen;

    .line 377
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "network_setting_ens"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/phone/Settings;->mIsNetworkSettingENS:Z

    .line 378
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "network_select_menu"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/phone/Settings;->mIsNetworkSelectMenuOn:Z

    .line 382
    const-string v5, "button_smsc_key"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/phone/Settings;->mButtonSmscKey:Landroid/preference/PreferenceScreen;

    .line 383
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "SMSC_menu"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 384
    .local v1, ifShowSMSCMenu:Z
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonSmscKey:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_3

    if-nez v1, :cond_3

    .line 385
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonSmscKey:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 386
    const-string v5, "NetworkSettings"

    const-string v6, "SMSC memu removed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_3
    return-void

    .line 258
    .end local v0           #dataRoamMenu:Z
    .end local v1           #ifShowSMSCMenu:Z
    .end local v3           #prefSet:Landroid/preference/PreferenceScreen;
    :cond_4
    const v5, 0x7f05000f

    invoke-virtual {p0, v5}, Lcom/android/phone/Settings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 271
    .restart local v0       #dataRoamMenu:Z
    .restart local v3       #prefSet:Landroid/preference/PreferenceScreen;
    :cond_5
    const-string v5, "button_roaming_key"

    invoke-virtual {p0, v5}, Lcom/android/phone/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 308
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-ne v5, v7, :cond_7

    .line 311
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 314
    iget-object v5, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preferred_network_mode"

    invoke-static {v5, v11, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 317
    .restart local v4       #settingsNetworkMode:I
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 318
    const v5, 0x7f050006

    invoke-virtual {p0, v5}, Lcom/android/phone/Settings;->addPreferencesFromResource(I)V

    .line 319
    new-instance v5, Lcom/android/phone/CdmaOptions;

    invoke-direct {v5, p0, v3}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v5, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    goto/16 :goto_2

    .line 326
    .end local v4           #settingsNetworkMode:I
    :cond_7
    const-string v5, "ro.mot.phonemode.vzw4gphone"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v7, :cond_8

    .line 327
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 329
    :cond_8
    iget-object v5, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 330
    .local v2, phoneType:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_a

    .line 332
    const-string v5, "button_select_network_key"

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 333
    const-string v5, "button_carrier_sel_key"

    invoke-virtual {v3, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 334
    const-string v5, "button_apn_key"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 336
    const v5, 0x7f050006

    invoke-virtual {p0, v5}, Lcom/android/phone/Settings;->addPreferencesFromResource(I)V

    .line 337
    new-instance v5, Lcom/android/phone/CdmaOptions;

    invoke-direct {v5, p0, v3}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v5, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 339
    const-string v5, "ro.mot.phonemode.vzw4gphone"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 340
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 341
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v6, 0x7f06001c

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 343
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v6, 0x7f06001d

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 345
    iget-object v5, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preferred_network_mode"

    invoke-static {v5, v11, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 349
    .restart local v4       #settingsNetworkMode:I
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-direct {p0, v4}, Lcom/android/phone/Settings;->map2g3gNetworkMode(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 351
    iget-object v5, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v5, v6, :cond_9

    .line 352
    invoke-direct {p0}, Lcom/android/phone/Settings;->showNoSIMDialog()V

    goto/16 :goto_2

    .line 354
    :cond_9
    invoke-direct {p0, v4}, Lcom/android/phone/Settings;->displayCdmaSystemSelectionSettings(I)V

    goto/16 :goto_2

    .line 358
    .end local v4           #settingsNetworkMode:I
    :cond_a
    if-ne v2, v7, :cond_b

    .line 359
    const-string v5, "button_select_network_key"

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/phone/Settings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    .line 360
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_2

    .line 365
    :cond_b
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 154
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 397
    const-string v0, ""

    .line 398
    .local v0, networkSelectPrefernce:Ljava/lang/String;
    iget v1, p0, Lcom/android/phone/Settings;->mSelectedNetwork:I

    if-nez v1, :cond_0

    .line 399
    const-string v0, "2g"

    .line 405
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/phone/Settings;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "network.type.default.preference"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 409
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 410
    return-void

    .line 400
    :cond_0
    iget v1, p0, Lcom/android/phone/Settings;->mSelectedNetwork:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 401
    const-string v0, "3g"

    goto :goto_0

    .line 403
    :cond_1
    const-string v0, "automatic"

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v9, "preferred_network_mode"

    const-string v8, "fid_34387_multimode"

    .line 491
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_6

    .line 494
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 496
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 497
    .local v1, buttonNetworkMode:I
    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 500
    .local v3, settingsNetworkMode:I
    if-eq v1, v3, :cond_3

    .line 502
    packed-switch v1, :pswitch_data_0

    .line 528
    const/4 v2, 0x0

    .line 531
    .local v2, modemNetworkMode:I
    :goto_0
    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "fid_34387_multimode"

    invoke-static {v4, v8, v7}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 534
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM getIccCardState status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 535
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM getState status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 537
    const/16 v4, 0xc8

    invoke-direct {p0, v2}, Lcom/android/phone/Settings;->checkModeCategory(I)I

    move-result v5

    if-eq v4, v5, :cond_0

    const/16 v4, 0x12c

    invoke-direct {p0, v2}, Lcom/android/phone/Settings;->checkModeCategory(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_1

    .line 539
    invoke-direct {p0}, Lcom/android/phone/Settings;->showNoSIMDialog()V

    move v4, v6

    .line 577
    .end local v1           #buttonNetworkMode:I
    .end local v2           #modemNetworkMode:I
    .end local v3           #settingsNetworkMode:I
    :goto_1
    return v4

    .line 504
    .restart local v1       #buttonNetworkMode:I
    .restart local v3       #settingsNetworkMode:I
    :pswitch_0
    const/4 v2, 0x7

    .line 505
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 507
    .end local v2           #modemNetworkMode:I
    :pswitch_1
    const/4 v2, 0x6

    .line 508
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 510
    .end local v2           #modemNetworkMode:I
    :pswitch_2
    const/4 v2, 0x5

    .line 511
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 513
    .end local v2           #modemNetworkMode:I
    :pswitch_3
    const/4 v2, 0x4

    .line 514
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 516
    .end local v2           #modemNetworkMode:I
    :pswitch_4
    const/4 v2, 0x3

    .line 517
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 519
    .end local v2           #modemNetworkMode:I
    :pswitch_5
    const/4 v2, 0x2

    .line 520
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 522
    .end local v2           #modemNetworkMode:I
    :pswitch_6
    const/4 v2, 0x1

    .line 523
    .restart local v2       #modemNetworkMode:I
    goto/16 :goto_0

    .line 525
    .end local v2           #modemNetworkMode:I
    :pswitch_7
    const/4 v2, 0x0

    .line 526
    .restart local v2       #modemNetworkMode:I
    goto/16 :goto_0

    .line 542
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/phone/Settings;->checkModeCategory(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/phone/Settings;->constructDialog(I)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/Settings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 543
    invoke-direct {p0, v2}, Lcom/android/phone/Settings;->displaySettingsPerNetworkMode(I)V

    .line 545
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "preferred_network_mode_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 546
    invoke-direct {p0, v2}, Lcom/android/phone/Settings;->map2g3gValue(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/phone/Settings;->setPreferredNetworkUI(I)V

    .line 549
    :cond_2
    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "fid_34387_multimode"

    invoke-static {v4, v8, v7}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_4

    .line 550
    invoke-direct {p0, v1}, Lcom/android/phone/Settings;->map2g3gNetworkMode(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/phone/Settings;->UpdatePreferredNetworkModeSummary(I)V

    .line 559
    :goto_2
    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v9, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 563
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->setManualNetworkSelectionTime()V

    .line 566
    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-virtual {v5, v6}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 568
    iput-boolean v6, p0, Lcom/android/phone/Settings;->mSetPrefModeInProgress:Z

    .end local v1           #buttonNetworkMode:I
    .end local v2           #modemNetworkMode:I
    .end local v3           #settingsNetworkMode:I
    :cond_3
    :goto_3
    move v4, v6

    .line 577
    goto :goto_1

    .line 552
    .restart local v1       #buttonNetworkMode:I
    .restart local v2       #modemNetworkMode:I
    .restart local v3       #settingsNetworkMode:I
    :cond_4
    const-string v4, "ro.mot.phonemode.vzw4gphone"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 553
    invoke-direct {p0, v2}, Lcom/android/phone/Settings;->displayCdmaSystemSelectionSettings(I)V

    .line 554
    invoke-direct {p0, v1}, Lcom/android/phone/Settings;->map2g3gNetworkMode(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/phone/Settings;->UpdatePreferredNetworkModeSummary(I)V

    goto :goto_2

    .line 557
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/phone/Settings;->UpdatePreferredNetworkModeSummary(I)V

    goto :goto_2

    .line 571
    .end local v1           #buttonNetworkMode:I
    .end local v2           #modemNetworkMode:I
    .end local v3           #settingsNetworkMode:I
    .restart local p2
    :cond_6
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_3

    .line 573
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/phone/Settings;->handleNetworkPreferenceChange(I)V

    goto :goto_3

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, "preferred_network_mode"

    const-string v7, "fid_34387_multimode"

    const-string v4, "android.intent.action.MAIN"

    .line 163
    iget-object v3, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v3, p2}, Lcom/android/phone/CdmaOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v3

    if-ne v3, v6, :cond_1

    .line 165
    const-string v3, "ril.cdma.inecmmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    iput-object p2, p0, Lcom/android/phone/Settings;->mClickedPreference:Landroid/preference/Preference;

    .line 169
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v4, 0x11

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/Settings;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    move v3, v6

    .line 243
    :goto_0
    return v3

    .line 174
    :cond_1
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p2, v3, :cond_4

    .line 176
    iget-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 179
    .local v2, settingsNetworkMode:I
    iget-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "fid_34387_multimode"

    invoke-static {v3, v7, v5}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v6, :cond_2

    const-string v3, "ro.mot.phonemode.vzw4gphone"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 182
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/phone/Settings;->map2g3gNetworkMode(I)I

    move-result v2

    .line 183
    :cond_3
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move v3, v6

    .line 184
    goto :goto_0

    .line 186
    .end local v2           #settingsNetworkMode:I
    :cond_4
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_6

    .line 187
    const-string v3, "onPreferenceTreeClick: preference == mButtonDataRoam."

    invoke-static {v3}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 190
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 192
    iput-boolean v5, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    .line 193
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0245

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040013

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_1
    move v3, v6

    .line 204
    goto/16 :goto_0

    .line 202
    :cond_5
    iget-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_1

    .line 207
    :cond_6
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonSmscKey:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_7

    .line 208
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/phone/SmscSettings;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .local v1, intent_smsc:Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v1}, Lcom/android/phone/Settings;->startActivity(Landroid/content/Intent;)V

    move v3, v6

    .line 211
    goto/16 :goto_0

    .line 214
    .end local v1           #intent_smsc:Landroid/content/Intent;
    :cond_7
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    if-ne p2, v3, :cond_9

    .line 215
    iget-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "fid_34387_multimode"

    invoke-static {v3, v7, v5}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_8

    .line 216
    iget-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 219
    .restart local v2       #settingsNetworkMode:I
    const-string v3, "onPreferenceTreeClick: preference == mButtonSelectNetwork."

    invoke-static {v3}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 220
    invoke-direct {p0, v2}, Lcom/android/phone/Settings;->map2g3gValue(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/phone/Settings;->setPreferredNetworkUI(I)V

    move v3, v6

    .line 221
    goto/16 :goto_0

    .end local v2           #settingsNetworkMode:I
    :cond_8
    move v3, v5

    .line 224
    goto/16 :goto_0

    .line 228
    :cond_9
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonCarrierSelKey:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_a

    iget-boolean v3, p0, Lcom/android/phone/Settings;->mIsNetworkSettingENS:Z

    if-eqz v3, :cond_a

    .line 230
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/phone/NetworkSettingENS;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 232
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v0}, Lcom/android/phone/Settings;->startActivity(Landroid/content/Intent;)V

    move v3, v6

    .line 234
    goto/16 :goto_0

    .line 241
    .end local v0           #intent:Landroid/content/Intent;
    :cond_a
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    move v3, v5

    .line 243
    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, "automatic"

    const-string v7, "NetworkSettings"

    .line 424
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 427
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 429
    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 433
    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 437
    :cond_0
    iget-boolean v2, p0, Lcom/android/phone/Settings;->mIsNetworkSettingENS:Z

    if-eqz v2, :cond_1

    .line 438
    iget-object v2, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getReadPlmnModeFlag()Z

    move-result v0

    .line 439
    .local v0, plmnModeFlag:Z
    const-string v2, "NetworkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*plmnModeFlag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " *mIsNetworkSelectMenuOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/Settings;->mIsNetworkSelectMenuOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v2, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getReadPlmnModeFlag()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/phone/Settings;->mIsNetworkSelectMenuOn:Z

    if-nez v2, :cond_3

    .line 445
    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonCarrierSelKey:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 446
    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 462
    .end local v0           #plmnModeFlag:Z
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/phone/Settings;->mSetPrefModeInProgress:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "preferred_network_mode_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 463
    iget-object v2, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-virtual {v3, v5}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 468
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/phone/Settings;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "network.type.default.preference"

    const-string v4, "automatic"

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, pref:Ljava/lang/String;
    const-string v2, "2g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 471
    invoke-direct {p0, v5}, Lcom/android/phone/Settings;->setPreferredNetworkUI(I)V

    .line 480
    :goto_1
    return-void

    .line 450
    .end local v1           #pref:Ljava/lang/String;
    .restart local v0       #plmnModeFlag:Z
    :cond_3
    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonCarrierSelKey:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 453
    iget-boolean v2, p0, Lcom/android/phone/Settings;->mIsNetworkSelectMenuOn:Z

    if-ne v2, v6, :cond_4

    .line 454
    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v2, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 456
    :cond_4
    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 472
    .end local v0           #plmnModeFlag:Z
    .restart local v1       #pref:Ljava/lang/String;
    :cond_5
    const-string v2, "3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 473
    invoke-direct {p0, v6}, Lcom/android/phone/Settings;->setPreferredNetworkUI(I)V

    goto :goto_1

    .line 474
    :cond_6
    const-string v2, "automatic"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 475
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/phone/Settings;->setPreferredNetworkUI(I)V

    goto :goto_1

    .line 477
    :cond_7
    const-string v2, "NetworkSettings"

    const-string v2, "invalid preference"

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 416
    iget-boolean v0, p0, Lcom/android/phone/Settings;->mSetPrefModeInProgress:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "preferred_network_mode_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 420
    :cond_0
    return-void
.end method
