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


# instance fields
.field private mHandler:Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaSystemSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;-><init>(Lcom/android/phone/CdmaSystemSelectListPreference;Lcom/android/phone/CdmaSystemSelectListPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mHandler:Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;

    .line 45
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 46
    new-instance v0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;-><init>(Lcom/android/phone/CdmaSystemSelectListPreference;Lcom/android/phone/CdmaSystemSelectListPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mHandler:Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;

    .line 47
    iget-object v0, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mHandler:Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 49
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 9
    .parameter "positiveResult"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v5, "roaming_settings"

    .line 67
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 69
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/CdmaSystemSelectListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/android/phone/CdmaSystemSelectListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 71
    .local v0, buttonCdmaRoamingMode:I
    iget-object v3, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_settings"

    invoke-static {v3, v5, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 74
    .local v1, settingsCdmaRoamingMode:I
    if-eq v0, v1, :cond_0

    .line 76
    packed-switch v0, :pswitch_data_0

    .line 82
    const/4 v2, 0x0

    .line 85
    .local v2, statusCdmaRoamingMode:I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_settings"

    invoke-static {v3, v5, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    iget-object v3, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/CdmaSystemSelectListPreference;->mHandler:Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;

    invoke-virtual {v4, v8}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 96
    .end local v0           #buttonCdmaRoamingMode:I
    .end local v1           #settingsCdmaRoamingMode:I
    .end local v2           #statusCdmaRoamingMode:I
    :cond_0
    :goto_1
    return-void

    .line 78
    .restart local v0       #buttonCdmaRoamingMode:I
    .restart local v1       #settingsCdmaRoamingMode:I
    :pswitch_0
    const/4 v2, 0x2

    .line 79
    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_0

    .line 93
    .end local v0           #buttonCdmaRoamingMode:I
    .end local v1           #settingsCdmaRoamingMode:I
    .end local v2           #statusCdmaRoamingMode:I
    :cond_1
    const-string v3, "CdmaRoamingListPreference"

    const-string v4, "onDialogClosed: positiveResult=%b value=%s -- do nothing"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0}, Lcom/android/phone/CdmaSystemSelectListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 57
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method
