.class public Lcom/android/phone/Use2GOnlyCheckBoxPreference;
.super Landroid/preference/ListPreference;
.source "Use2GOnlyCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

.field private mIsDisconnectingData:Z

.field private mNetworkType:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 37
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-boolean v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mIsDisconnectingData:Z

    .line 44
    iput v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkType:I

    .line 47
    new-instance v0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;

    invoke-direct {v0, p0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;-><init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 129
    new-instance v0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$2;

    invoke-direct {v0, p0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$2;-><init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 74
    iput-object p1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mContext:Landroid/content/Context;

    .line 76
    new-instance v0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    .line 78
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 79
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mIsDisconnectingData:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/Use2GOnlyCheckBoxPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mIsDisconnectingData:Z

    return p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->changeNetworkType()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkType:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/phone/Use2GOnlyCheckBoxPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkType:I

    return p1
.end method

.method private changeNetworkType()V
    .locals 4

    .prologue
    .line 122
    sget-boolean v0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Use2GOnlyCheckBoxPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeNetworkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkType:I

    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 126
    return-void
.end method


# virtual methods
.method public getPreferredNetworkType()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 86
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 92
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkType:I

    invoke-virtual {p0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkType:I

    .line 102
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 104
    .local v0, state:I
    const-string v1, "Use2GOnlyCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDialogClosed : change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Data state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 108
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0d02ca

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0d02cd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0d003e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0030

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 117
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->changeNetworkType()V

    goto/16 :goto_0
.end method
