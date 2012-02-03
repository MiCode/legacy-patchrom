.class public Lcom/android/settings/SecuritySettings;
.super Landroid/preference/PreferenceActivity;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SecuritySettings$CredentialStorage;,
        Lcom/android/settings/SecuritySettings$SettingsObserver;,
        Lcom/android/settings/SecuritySettings$PWState;
    }
.end annotation


# instance fields
.field private ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

.field private RemoteControls:Landroid/preference/CheckBoxPreference;

.field ad:Landroid/app/AlertDialog$Builder;

.field confirmPhPwd:Ljava/lang/String;

.field enterPhPwd:Ljava/lang/String;

.field firstSet:Z

.field private mAssistedGps:Landroid/preference/CheckBoxPreference;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mConfirmPhonePwdET:Landroid/widget/EditText;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDialog:Landroid/app/Dialog;

.field private mEnterPhonePwdET:Landroid/widget/EditText;

.field private mFirstSignin:Z

.field private mGps:Landroid/preference/CheckBoxPreference;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsEnterPhonePwdDlgOn:Z

.field private mIsNewPhonePwdDlgOn:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLostContact:Landroid/widget/EditText;

.field private mLostPhoneContact:Landroid/preference/CheckBoxPreference;

.field private mNetwork:Landroid/preference/CheckBoxPreference;

.field private mNewPhonePwdET:Landroid/widget/EditText;

.field private mPWState:Lcom/android/settings/SecuritySettings$PWState;

.field private mPdr:Landroid/preference/CheckBoxPreference;

.field private mPhLockCheckPref:Landroid/preference/CheckBoxPreference;

.field private mRemoteControlReceiver:Landroid/content/BroadcastReceiver;

.field private mSIMChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mShowPassword:Landroid/preference/CheckBoxPreference;

.field private mSimlockPreferences:Landroid/preference/PreferenceScreen;

.field private mTactileFeedback:Landroid/preference/CheckBoxPreference;

.field private mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

.field private mTrackerPreferences:Landroid/preference/Preference;

.field mView:Landroid/webkit/WebView;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field mshowDlg:Z

.field newPhPwd:Ljava/lang/String;

.field private shop:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 145
    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->newPhPwd:Ljava/lang/String;

    .line 147
    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->confirmPhPwd:Ljava/lang/String;

    .line 149
    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->enterPhPwd:Ljava/lang/String;

    .line 163
    iput-boolean v2, p0, Lcom/android/settings/SecuritySettings;->mIsNewPhonePwdDlgOn:Z

    .line 165
    iput-boolean v2, p0, Lcom/android/settings/SecuritySettings;->mIsEnterPhonePwdDlgOn:Z

    .line 189
    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mDialog:Landroid/app/Dialog;

    .line 192
    new-instance v0, Lcom/android/settings/SecuritySettings$CredentialStorage;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;-><init>(Lcom/android/settings/SecuritySettings;Lcom/android/settings/SecuritySettings$1;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

    .line 218
    iput-boolean v2, p0, Lcom/android/settings/SecuritySettings;->mFirstSignin:Z

    .line 243
    sget-object v0, Lcom/android/settings/SecuritySettings$PWState;->CURRENT:Lcom/android/settings/SecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mPWState:Lcom/android/settings/SecuritySettings$PWState;

    .line 269
    new-instance v0, Lcom/android/settings/SecuritySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SecuritySettings$1;-><init>(Lcom/android/settings/SecuritySettings;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mSIMChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 283
    new-instance v0, Lcom/android/settings/SecuritySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SecuritySettings$2;-><init>(Lcom/android/settings/SecuritySettings;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mRemoteControlReceiver:Landroid/content/BroadcastReceiver;

    .line 308
    new-instance v0, Lcom/android/settings/SecuritySettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/SecuritySettings$3;-><init>(Lcom/android/settings/SecuritySettings;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1095
    return-void
.end method

.method private ValidateMTData()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1483
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0, p0}, Lcom/android/internal/util/NVStore;-><init>(Landroid/content/Context;)V

    .line 1485
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetSenderName()Ljava/lang/String;

    move-result-object v1

    .line 1486
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Not Mentioned"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v0, v4

    .line 1507
    :goto_0
    return v0

    .line 1489
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v1

    .line 1490
    const-string v2, "none"

    .line 1492
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 1493
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v1

    .line 1494
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 1495
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v1

    .line 1496
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 1497
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v1

    .line 1498
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 1499
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v0

    .line 1500
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    move v0, v4

    .line 1501
    goto :goto_0

    .line 1507
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/settings/SecuritySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateToggles()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/SecuritySettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLostContact:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLostPhoneContact:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/SecuritySettings;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/SecuritySettings;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SecuritySettings;->selectPDRDescription(ZZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/SecuritySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateMTStatusSummary()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/SecuritySettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mNewPhonePwdET:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/SecuritySettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mConfirmPhonePwdET:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/SecuritySettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mEnterPhonePwdET:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SecuritySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/settings/SecuritySettings;->mFirstSignin:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/SecuritySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->ValidateMTData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/SecuritySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/settings/SecuritySettings;->mFirstSignin:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/SecuritySettings;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mSIMChangeReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/SecuritySettings;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mRemoteControlReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/SecuritySettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/settings/SecuritySettings;->updateSimlockPreferenceState(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/SecuritySettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mSimlockPreferences:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method private createPhonePasswordDialog(Z)Landroid/app/Dialog;
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f0b0038

    const v7, 0x7f0b0034

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 1522
    const v0, 0x7f030039

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1525
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getPhonePassword()Ljava/lang/String;

    move-result-object v3

    .line 1526
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1527
    iput-boolean v6, p0, Lcom/android/settings/SecuritySettings;->firstSet:Z

    .line 1528
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080547

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1529
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1530
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1531
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1533
    iput-boolean v6, p0, Lcom/android/settings/SecuritySettings;->mIsNewPhonePwdDlgOn:Z

    .line 1535
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mNewPhonePwdET:Landroid/widget/EditText;

    .line 1536
    const v0, 0x7f0b0039

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mConfirmPhonePwdET:Landroid/widget/EditText;

    .line 1538
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mNewPhonePwdET:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mNewPhonePwdET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1539
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mNewPhonePwdET:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1541
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mConfirmPhonePwdET:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mConfirmPhonePwdET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1542
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mConfirmPhonePwdET:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1544
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mNewPhonePwdET:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1545
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mConfirmPhonePwdET:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1567
    :goto_0
    new-instance v4, Lcom/android/internal/util/NVStore;

    invoke-direct {v4, p0}, Lcom/android/internal/util/NVStore;-><init>(Landroid/content/Context;)V

    .line 1569
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08054d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v0, Lcom/android/settings/SecuritySettings$17;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/SecuritySettings$17;-><init>(Lcom/android/settings/SecuritySettings;Landroid/view/View;Ljava/lang/String;Lcom/android/internal/util/NVStore;Z)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/SecuritySettings$16;

    invoke-direct {v2, p0}, Lcom/android/settings/SecuritySettings$16;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1643
    iget-boolean v1, p0, Lcom/android/settings/SecuritySettings;->firstSet:Z

    if-nez v1, :cond_0

    .line 1644
    const v1, 0x7f08054e

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 1646
    :cond_0
    new-instance v1, Lcom/android/settings/SecuritySettings$18;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/SecuritySettings$18;-><init>(Lcom/android/settings/SecuritySettings;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1660
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1661
    return-object v0

    .line 1547
    :cond_1
    iput-boolean v5, p0, Lcom/android/settings/SecuritySettings;->firstSet:Z

    .line 1548
    const v0, 0x7f0b00a1

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1549
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1550
    const v0, 0x7f0b00a2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1552
    const v0, 0x7f0b0039

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1553
    const v0, 0x7f0b00a3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1555
    const v0, 0x7f0b00a4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1557
    iput-boolean v6, p0, Lcom/android/settings/SecuritySettings;->mIsEnterPhonePwdDlgOn:Z

    .line 1559
    const v0, 0x7f0b00a4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mEnterPhonePwdET:Landroid/widget/EditText;

    .line 1561
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mEnterPhonePwdET:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mEnterPhonePwdET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1562
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mEnterPhonePwdET:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1563
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mEnterPhonePwdET:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "SIMAlert"

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 378
    :cond_0
    const v0, 0x7f040020

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 379
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "location_network"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "location_gps"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "assisted_gps"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "location_pdr"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mPdr:Landroid/preference/CheckBoxPreference;

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "location_category"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 393
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    .line 399
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_3

    .line 400
    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 435
    :goto_0
    const-string v0, "visiblepattern"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 438
    const-string v0, "unlock_tactile_feedback"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    .line 440
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 443
    const/4 v2, 0x2

    if-eq v2, v0, :cond_2

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mSimlockPreferences:Landroid/preference/PreferenceScreen;

    .line 458
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mSimlockPreferences:Landroid/preference/PreferenceScreen;

    const v2, 0x7f080256

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 460
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 461
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.IccLockSettings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mSimlockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 464
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 465
    const v2, 0x7f080257

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 466
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 467
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mSimlockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 469
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 470
    if-eqz v0, :cond_1

    if-ne v0, v6, :cond_4

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mSimlockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 480
    :cond_2
    :goto_1
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 481
    const v2, 0x7f0805db

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 482
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 484
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

    .line 485
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

    const-string v3, "SIMAlert"

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 486
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0805dc

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 487
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0805dd

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 488
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "change_alert"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_6

    .line 489
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 492
    :goto_2
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

    new-instance v3, Lcom/android/settings/SecuritySettings$5;

    invoke-direct {v3, p0}, Lcom/android/settings/SecuritySettings$5;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 511
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 513
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 514
    const v3, 0x7f0805de

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 515
    const v3, 0x7f0805df

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 516
    new-instance v3, Lcom/android/settings/SecuritySettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings/SecuritySettings$6;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 525
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 526
    const-string v3, "SIMAlert"

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 528
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;

    .line 529
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0805e2

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 530
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0805e1

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 531
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "remote_control"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_7

    .line 532
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 535
    :goto_3
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;

    new-instance v3, Lcom/android/settings/SecuritySettings$7;

    invoke-direct {v3, p0}, Lcom/android/settings/SecuritySettings$7;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 554
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/SecuritySettings;->mView:Landroid/webkit/WebView;

    .line 555
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/SecuritySettings;->ad:Landroid/app/AlertDialog$Builder;

    .line 557
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 564
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 573
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    .line 574
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    const-string v2, "mobiletrackerchecker"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f080539

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 576
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f08053c

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 578
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrackerPreferences:Landroid/preference/Preference;

    .line 579
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrackerPreferences:Landroid/preference/Preference;

    const v2, 0x7f08053a

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 581
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrackerPreferences:Landroid/preference/Preference;

    const v2, 0x7f08053d

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 583
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 584
    const v2, 0x7f080538

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 585
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 586
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 587
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mTrackerPreferences:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 591
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 592
    const v2, 0x7f080101

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 593
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 595
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    .line 596
    const-string v3, "show_password"

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 597
    const v3, 0x7f0803d6

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 598
    const v3, 0x7f0803d7

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 599
    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 600
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 619
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 620
    const v2, 0x7f080125

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 621
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 623
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 624
    const v3, 0x7f080126

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 625
    const v3, 0x7f080127

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 626
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 627
    const-class v4, Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 628
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 629
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 632
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 633
    const v2, 0x7f0804dc

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 634
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 635
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

    #calls: Lcom/android/settings/SecuritySettings$CredentialStorage;->createPreferences(Landroid/preference/PreferenceCategory;I)V
    invoke-static {v2, v0, v5}, Lcom/android/settings/SecuritySettings$CredentialStorage;->access$1000(Lcom/android/settings/SecuritySettings$CredentialStorage;Landroid/preference/PreferenceCategory;I)V

    .line 638
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 639
    const v2, 0x7f0804f8

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 641
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

    #calls: Lcom/android/settings/SecuritySettings$CredentialStorage;->createPreferences(Landroid/preference/PreferenceCategory;I)V
    invoke-static {v2, v0, v6}, Lcom/android/settings/SecuritySettings$CredentialStorage;->access$1000(Lcom/android/settings/SecuritySettings$CredentialStorage;Landroid/preference/PreferenceCategory;I)V

    .line 642
    return-object v1

    .line 402
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 404
    :sswitch_0
    const v0, 0x7f040023

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 407
    :sswitch_1
    const v0, 0x7f040025

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 411
    :sswitch_2
    const v0, 0x7f040022

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 474
    :cond_4
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mSimlockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v6

    :goto_4
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_5
    move v2, v5

    goto :goto_4

    .line 491
    :cond_6
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_2

    .line 534
    :cond_7
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_3

    .line 402
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
    .end sparse-switch
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 985
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private selectPDRDescription(ZZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "location_pdr_enabled"

    .line 1051
    const-string v0, "SecuritySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectPdrDescription : selection is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and dont\'ask is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    if-ne p2, v3, :cond_0

    .line 1055
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "need_location_pdr_desc"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1059
    :cond_0
    if-ne p1, v3, :cond_1

    .line 1060
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_pdr_enabled"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1061
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mPdr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1066
    :goto_0
    return-void

    .line 1063
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_pdr_enabled"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1064
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mPdr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private showPDRDescription()V
    .locals 4

    .prologue
    .line 1069
    const v0, 0x7f030059

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1071
    const v0, 0x7f0b0121

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1072
    const v0, 0x7f0b0122

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1073
    new-instance v2, Lcom/android/settings/SecuritySettings$12;

    invoke-direct {v2, p0}, Lcom/android/settings/SecuritySettings$12;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1078
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080319

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/SecuritySettings$15;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/SecuritySettings$15;-><init>(Lcom/android/settings/SecuritySettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/SecuritySettings$14;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/SecuritySettings$14;-><init>(Lcom/android/settings/SecuritySettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/SecuritySettings$13;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/SecuritySettings$13;-><init>(Lcom/android/settings/SecuritySettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1092
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1093
    return-void
.end method

.method private updateMTStatusSummary()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1457
    const-string v0, "MT_Setting_Pref"

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/SecuritySettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "MT_OPS_Signed_in"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1462
    if-nez v0, :cond_0

    .line 1463
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->ValidateMTData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1465
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1480
    :goto_0
    return-void

    .line 1471
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1473
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->GetMTStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1474
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1475
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f08053b

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 1477
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1478
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f08053c

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateSimlockPreferenceState(Z)V
    .locals 4
    .parameter "isAirplaneModeOn"

    .prologue
    const/4 v2, 0x0

    .line 316
    if-eqz p1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mSimlockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 336
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mSimlockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 321
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 322
    .local v0, mHandler:Landroid/os/Handler;
    new-instance v1, Lcom/android/settings/SecuritySettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/SecuritySettings$4;-><init>(Lcom/android/settings/SecuritySettings;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private updateToggles()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 957
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 958
    .local v1, res:Landroid/content/ContentResolver;
    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 960
    .local v0, gpsEnabled:Z
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 961
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const-string v3, "network"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 963
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 964
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 965
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    const-string v3, "assisted_gps_enabled"

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_3

    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 967
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 970
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mPdr:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    .line 971
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mPdr:Landroid/preference/CheckBoxPreference;

    const-string v3, "location_pdr_enabled"

    invoke-static {v1, v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_4

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 973
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mPdr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 982
    :cond_2
    return-void

    :cond_3
    move v3, v6

    .line 965
    goto :goto_0

    :cond_4
    move v3, v6

    .line 971
    goto :goto_1
.end method


# virtual methods
.method public GetMTStatus()Z
    .locals 2

    .prologue
    .line 1514
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0, p0}, Lcom/android/internal/util/NVStore;-><init>(Landroid/content/Context;)V

    .line 1515
    .local v0, filenv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v1

    return v1
.end method

.method ValidatePhPwd(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f08054c

    const v4, 0x7f08054b

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 1666
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1667
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1668
    :cond_0
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1669
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move v0, v3

    .line 1701
    :goto_0
    return v0

    .line 1671
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 1672
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1674
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1675
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move v0, v3

    .line 1676
    goto :goto_0

    .line 1678
    :cond_3
    invoke-virtual {p3, p4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 1679
    const v0, 0x7f08054a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1680
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move v0, v3

    .line 1681
    goto :goto_0

    .line 1685
    :cond_4
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1686
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1687
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move v0, v3

    .line 1688
    goto :goto_0

    .line 1689
    :cond_5
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v2, :cond_6

    .line 1690
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1692
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1693
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move v0, v3

    .line 1694
    goto :goto_0

    .line 1695
    :cond_6
    invoke-virtual {p5, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 1696
    const v0, 0x7f080549

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1697
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move v0, v3

    .line 1698
    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 1701
    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "change_alert"

    const-string v5, "SecuritySettings"

    .line 993
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1010
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 1012
    const-string v0, "PCW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_2

    .line 1016
    if-ne p2, v6, :cond_0

    .line 1017
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "change_alert"

    invoke-static {v0, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1018
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1019
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "change_alert"

    invoke-static {v0, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1020
    const-string v0, "SecuritySettings"

    const-string v0, "change_alert : 1"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 1022
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1023
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "change_alert"

    invoke-static {v0, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1024
    const-string v0, "SecuritySettings"

    const-string v0, "change_alert : 0"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1027
    :cond_2
    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_3

    .line 1028
    if-ne p2, v6, :cond_0

    .line 1029
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1030
    const-string v1, "com.samsung.AlertRecipients"

    const-string v2, "com.samsung.AlertRecipients.AlertRecipients"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1032
    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1034
    :cond_3
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_0

    .line 1035
    if-ne p2, v6, :cond_0

    .line 1036
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    .line 1037
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1038
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1039
    const-string v0, "SecuritySettings"

    const-string v0, "remote_control : 1"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1041
    :cond_4
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1042
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1043
    const-string v0, "SecuritySettings"

    const-string v0, "remote_control : 0"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    const-string v10, "security_category"

    .line 342
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 344
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 346
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 348
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 350
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "location_providers_allowed"

    aput-object v5, v4, v9

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 357
    .local v7, settingsCursor:Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v7, v1, v8, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 358
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    new-instance v1, Lcom/android/settings/SecuritySettings$SettingsObserver;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/SecuritySettings$SettingsObserver;-><init>(Lcom/android/settings/SecuritySettings;Lcom/android/settings/SecuritySettings$1;)V

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "shopdemo"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/SecuritySettings;->shop:I

    .line 360
    iget v0, p0, Lcom/android/settings/SecuritySettings;->shop:I

    if-ne v0, v8, :cond_1

    .line 361
    const-string v0, "security_category"

    invoke-virtual {p0, v10}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 362
    .local v6, p:Landroid/preference/PreferenceCategory;
    if-eqz v6, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 371
    .end local v6           #p:Landroid/preference/PreferenceCategory;
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget v0, p0, Lcom/android/settings/SecuritySettings;->shop:I

    if-nez v0, :cond_0

    .line 366
    const-string v0, "security_category"

    invoke-virtual {p0, v10}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 367
    .restart local v6       #p:Landroid/preference/PreferenceCategory;
    if-nez v6, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mDialog:Landroid/app/Dialog;

    .line 950
    :goto_0
    return-object v0

    .line 910
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 911
    const v0, 0x7f0b0086

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mLostContact:Landroid/widget/EditText;

    .line 912
    const v0, 0x7f0b0087

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 913
    new-instance v2, Lcom/android/settings/SecuritySettings$10;

    invoke-direct {v2, p0}, Lcom/android/settings/SecuritySettings$10;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 935
    const v0, 0x7f0b0088

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 936
    new-instance v2, Lcom/android/settings/SecuritySettings$11;

    invoke-direct {v2, p0}, Lcom/android/settings/SecuritySettings$11;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 943
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLostContact:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lostphone_contact_number"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 946
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 947
    const v2, 0x7f08060f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 948
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 949
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mDialog:Landroid/app/Dialog;

    .line 950
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 698
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 699
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 690
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 691
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 692
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "location_pdr_enabled"

    const-string v5, "SecuritySettings"

    .line 703
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 705
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 706
    const-string v2, "unlock_set_or_change"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 707
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 708
    const/16 v1, 0x7b

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    move v0, v3

    .line 825
    :goto_1
    return v0

    .line 709
    :cond_1
    const-string v2, "lockenabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 710
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_0

    .line 711
    :cond_2
    const-string v2, "visiblepattern"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 712
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_0

    .line 713
    :cond_3
    const-string v2, "unlock_tactile_feedback"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 714
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setTactileFeedbackEnabled(Z)V

    goto :goto_0

    .line 715
    :cond_4
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLostPhoneContact:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 716
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLostPhoneContact:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 717
    if-eqz v0, :cond_5

    .line 718
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLostPhoneContact:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 719
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->showDialog(I)V

    goto :goto_0

    .line 721
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_lostphone_contact"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 724
    :cond_6
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 725
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_password"

    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v4

    :goto_2
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_7
    move v2, v3

    goto :goto_2

    .line 727
    :cond_8
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 728
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 730
    :cond_9
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 731
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 732
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 735
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.GPS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 736
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 737
    const-string v1, "SecuritySettings"

    const-string v1, "sendBroadcast : android.settings.GPS_CHANGED"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 740
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 742
    :cond_a
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 743
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 744
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 746
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080612

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080611

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/SecuritySettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/SecuritySettings$8;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 759
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 762
    :cond_c
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mPdr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 763
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mPdr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-ne v0, v4, :cond_e

    .line 764
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "need_location_pdr_desc"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 766
    const-string v1, "SecuritySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Need to ask for pdr : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    if-ne v0, v4, :cond_d

    .line 768
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mPdr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 769
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->showPDRDescription()V

    goto/16 :goto_0

    .line 772
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_pdr_enabled"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 776
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_pdr_enabled"

    invoke-static {v0, v6, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 779
    :cond_f
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_10

    .line 780
    invoke-direct {p0, v4}, Lcom/android/settings/SecuritySettings;->createPhonePasswordDialog(Z)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 781
    :cond_10
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrackerPreferences:Landroid/preference/Preference;

    if-ne p2, v0, :cond_12

    .line 783
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->ValidateMTData()Z

    move-result v0

    if-nez v0, :cond_11

    .line 784
    const-string v0, "ril.IMSI"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 785
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 786
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 787
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080568

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 788
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080569

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 789
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 790
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08038b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/settings/SecuritySettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/SecuritySettings$9;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 795
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v3

    .line 796
    goto/16 :goto_1

    .line 799
    :cond_11
    invoke-direct {p0, v3}, Lcom/android/settings/SecuritySettings;->createPhonePasswordDialog(Z)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 800
    :cond_12
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mPhLockCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getPhonePassword()Ljava/lang/String;

    move-result-object v0

    .line 803
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 807
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.CALLFWD_SMS_RECEIVED_SER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 808
    const-string v1, "nv_storephpwdstate"

    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mPhLockCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "1"

    :goto_3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 810
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 808
    :cond_13
    const-string v2, "0"

    goto :goto_3
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 892
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLostContact:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lostphone_contact_number"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 895
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLostContact:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 896
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLostContact:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mLostContact:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 897
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 902
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 903
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 647
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 649
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateToggles()V

    .line 652
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 653
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 654
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1, v4, v4}, Lcom/android/settings/SecuritySettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 656
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    .line 657
    .local v2, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 658
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 660
    :cond_0
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    .line 661
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 663
    :cond_1
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mLostPhoneContact:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    .line 664
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_lostphone_contact"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_3

    move v0, v7

    .line 666
    .local v0, checked:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mLostPhoneContact:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 669
    .end local v0           #checked:Z
    :cond_2
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_password"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v7

    :goto_1
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 672
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

    invoke-virtual {v3}, Lcom/android/settings/SecuritySettings$CredentialStorage;->resume()V

    .line 675
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "change_alert"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_5

    .line 676
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 679
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "remote_control"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_6

    .line 680
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 685
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateMTStatusSummary()V

    .line 686
    return-void

    :cond_3
    move v0, v6

    .line 664
    goto :goto_0

    :cond_4
    move v4, v6

    .line 669
    goto :goto_1

    .line 678
    :cond_5
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    .line 682
    :cond_6
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_3
.end method
