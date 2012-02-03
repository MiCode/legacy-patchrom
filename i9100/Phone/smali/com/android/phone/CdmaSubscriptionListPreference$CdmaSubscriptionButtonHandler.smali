.class Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;
.super Landroid/os/Handler;
.source "CdmaSubscriptionListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaSubscriptionListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CdmaSubscriptionButtonHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaSubscriptionListPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CdmaSubscriptionListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;->this$0:Lcom/android/phone/CdmaSubscriptionListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CdmaSubscriptionListPreference;Lcom/android/phone/CdmaSubscriptionListPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;-><init>(Lcom/android/phone/CdmaSubscriptionListPreference;)V

    return-void
.end method

.method private handleSetCdmaSubscriptionMode(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 117
    iget-object v2, p0, Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;->this$0:Lcom/android/phone/CdmaSubscriptionListPreference;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    #setter for: Lcom/android/phone/CdmaSubscriptionListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2, v3}, Lcom/android/phone/CdmaSubscriptionListPreference;->access$102(Lcom/android/phone/CdmaSubscriptionListPreference;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 118
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 120
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 122
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 123
    .local v1, cdmaSubscriptionMode:I
    iget-object v2, p0, Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;->this$0:Lcom/android/phone/CdmaSubscriptionListPreference;

    #getter for: Lcom/android/phone/CdmaSubscriptionListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/CdmaSubscriptionListPreference;->access$100(Lcom/android/phone/CdmaSubscriptionListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "subscription_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    .end local v1           #cdmaSubscriptionMode:I
    :goto_0
    return-void

    .line 127
    :cond_0
    const-string v2, "CdmaSubscriptionListPreference"

    const-string v3, "Setting Cdma subscription source failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 111
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;->handleSetCdmaSubscriptionMode(Landroid/os/Message;)V

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
