.class public Lcom/android/phone/CdmaSystemSelectListPreference;
.super Landroid/preference/ListPreference;
.source "CdmaSystemSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaSystemSelectListPreference$1;,
        Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "CdmaRoamingListPreference"


# instance fields
.field private mCdmaVZWSs:Z

.field private mEnableSysSelect:Z

.field private mHandled:Z

.field private mHandler:Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefOnly:Z

.field private mShowDialogLater:Z

.field private oemCdmaTm:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaSystemSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "CdmaRoamingListPreference"

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v1, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;-><init>(Lcom/android/phone/CdmaSystemSelectListPreference;Lcom/android/phone/CdmaSystemSelectListPreference$1;)V

    iput-object v1, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mHandler:Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;

    .line 53
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mPrefOnly:Z

    .line 54
    iput-boolean v3, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mCdmaVZWSs:Z

    .line 55
    iput-boolean v3, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mHandled:Z

    .line 56
    iput-boolean v3, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mShowDialogLater:Z

    .line 57
    iput-boolean v3, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mEnableSysSelect:Z

    .line 58
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->getInstance()Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->oemCdmaTm:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    .line 64
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 65
    new-instance v1, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;-><init>(Lcom/android/phone/CdmaSystemSelectListPreference;Lcom/android/phone/CdmaSystemSelectListPreference$1;)V

    iput-object v1, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mHandler:Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mEnableSysSelect:Z

    .line 69
    const v1, 0x7f060023

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaSystemSelectListPreference;->setEntries(I)V

    .line 70
    const v1, 0x7f060025

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaSystemSelectListPreference;->setEntryValues(I)V

    .line 72
    iget-boolean v1, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mEnableSysSelect:Z

    if-eqz v1, :cond_0

    .line 73
    const-string v1, "CdmaRoamingListPreference"

    const-string v1, "feature 33986 if opened"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->oemCdmaTm:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    iget-object v2, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mHandler:Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;

    invoke-virtual {v1, v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->getVZWSystemSelection(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    move-result-object v0

    .line 75
    .local v0, er:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    const-string v1, "CdmaRoamingListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVZWSystemSelection returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v0           #er:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string v1, "CdmaRoamingListPreference"

    const-string v1, "feature 33986 is not opened"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v1, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mHandler:Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;

    invoke-virtual {v2, v3}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CdmaSystemSelectListPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mEnableSysSelect:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/CdmaSystemSelectListPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mPrefOnly:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/CdmaSystemSelectListPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mPrefOnly:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/phone/CdmaSystemSelectListPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mHandled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/phone/CdmaSystemSelectListPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mShowDialogLater:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/phone/CdmaSystemSelectListPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mShowDialogLater:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/CdmaSystemSelectListPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mCdmaVZWSs:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/phone/CdmaSystemSelectListPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mCdmaVZWSs:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mHandler:Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->oemCdmaTm:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    return-object v0
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 8
    .parameter "positiveResult"

    .prologue
    const/4 v6, 0x1

    const-string v7, "roaming_settings"

    .line 103
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/android/phone/CdmaSystemSelectListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, value:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 111
    .local v0, buttonCdmaRoamingMode:I
    iget-object v4, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "roaming_settings"

    const/4 v5, 0x0

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 114
    .local v1, settingsCdmaRoamingMode:I
    if-eq v0, v1, :cond_0

    .line 116
    packed-switch v0, :pswitch_data_0

    .line 131
    :pswitch_0
    iget-boolean v4, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mCdmaVZWSs:Z

    if-ne v4, v6, :cond_2

    iget-boolean v4, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mPrefOnly:Z

    if-nez v4, :cond_2

    .line 132
    const/4 v2, 0x4

    .line 138
    .local v2, statusCdmaRoamingMode:I
    :goto_1
    iget-object v4, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "roaming_settings"

    invoke-static {v4, v7, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    iget-object v4, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mHandler:Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;

    invoke-virtual {v5, v6}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    goto :goto_0

    .line 118
    .end local v2           #statusCdmaRoamingMode:I
    :pswitch_1
    const/4 v2, 0x2

    .line 119
    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_1

    .line 122
    .end local v2           #statusCdmaRoamingMode:I
    :pswitch_2
    const/4 v2, 0x3

    .line 123
    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_1

    .line 125
    .end local v2           #statusCdmaRoamingMode:I
    :pswitch_3
    const/4 v2, 0x4

    .line 126
    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_1

    .line 128
    .end local v2           #statusCdmaRoamingMode:I
    :pswitch_4
    const/4 v2, 0x0

    .line 129
    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_1

    .line 135
    .end local v2           #statusCdmaRoamingMode:I
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_1

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 90
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mHandled:Z

    if-nez v0, :cond_1

    .line 94
    const-string v0, "CdmaRoamingListPreference"

    const-string v1, "Asyn message don\'t hanled, will show dialog in handler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mShowDialogLater:Z

    goto :goto_0

    .line 97
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method
