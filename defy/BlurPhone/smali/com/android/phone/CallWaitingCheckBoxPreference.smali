.class public Lcom/android/phone/CallWaitingCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "CallWaitingCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallWaitingCheckBoxPreference$1;,
        Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CallWaitingCheckBoxPreference"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

.field phone:Lcom/android/internal/telephony/Phone;

.field tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/CallWaitingCheckBoxPreference;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallWaitingCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/CallWaitingCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance v0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/CallWaitingCheckBoxPreference;Lcom/android/phone/CallWaitingCheckBoxPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    .line 28
    iput-object p1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    .line 31
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/android/phone/CallWaitingCheckBoxPreference;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallWaitingCheckBoxPreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V
    .locals 3
    .parameter "listener"
    .parameter "skipReading"

    .prologue
    const/4 v2, 0x0

    .line 42
    iput-object p1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 43
    if-nez p2, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    invoke-virtual {v1, v2, v2, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 46
    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 50
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 4

    .prologue
    .line 54
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    .line 56
    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/CallWaitingCheckBoxPreference;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 58
    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 61
    :cond_0
    return-void
.end method
