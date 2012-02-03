.class public Lcom/android/phone/CdmaSubscriptionListPreference;
.super Landroid/preference/ListPreference;
.source "CdmaSubscriptionListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaSubscriptionListPreference$1;,
        Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaSubscriptionListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 51
    new-instance v0, Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;-><init>(Lcom/android/phone/CdmaSubscriptionListPreference;Lcom/android/phone/CdmaSubscriptionListPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mHandler:Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;

    .line 52
    invoke-direct {p0}, Lcom/android/phone/CdmaSubscriptionListPreference;->setCurrentCdmaSubscriptionModeValue()V

    .line 53
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CdmaSubscriptionListPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/CdmaSubscriptionListPreference;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method private setCurrentCdmaSubscriptionModeValue()V
    .locals 4

    .prologue
    .line 56
    iget-object v1, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "subscription_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 58
    .local v0, cdmaSubscriptionMode:I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaSubscriptionListPreference;->setValue(Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 6
    .parameter "positiveResult"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 76
    if-nez p1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CdmaSubscriptionListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 82
    .local v0, buttonCdmaSubscriptionMode:I
    const-string v2, "CdmaSubscriptionListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting new value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    packed-switch v0, :pswitch_data_0

    .line 92
    const/4 v1, 0x1

    .line 97
    .local v1, statusCdmaSubscriptionMode:I
    :goto_1
    iget-object v2, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mHandler:Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CdmaSubscriptionListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    goto :goto_0

    .line 86
    .end local v1           #statusCdmaSubscriptionMode:I
    :pswitch_0
    const/4 v1, 0x1

    .line 87
    .restart local v1       #statusCdmaSubscriptionMode:I
    goto :goto_1

    .line 89
    .end local v1           #statusCdmaSubscriptionMode:I
    :pswitch_1
    const/4 v1, 0x0

    .line 90
    .restart local v1       #statusCdmaSubscriptionMode:I
    goto :goto_1

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/phone/CdmaSubscriptionListPreference;->setCurrentCdmaSubscriptionModeValue()V

    .line 69
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 70
    return-void
.end method
