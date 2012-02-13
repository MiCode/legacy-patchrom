.class public Lcom/android/phone/CmasChannelReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CmasChannelReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private registerCmasAlerts(Ljava/util/ArrayList;Z)V
    .locals 10
    .parameter
    .parameter "toRegister"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, channels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 52
    if-nez p1, :cond_1

    .line 68
    :cond_0
    return-void

    .line 56
    :cond_1
    new-array v7, v3, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 57
    .local v7, config:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move v2, v1

    move v4, v3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    aput-object v0, v7, v1

    .line 61
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 62
    .local v6, channel:Ljava/lang/Integer;
    aget-object v0, v7, v1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->setFromServiceId(I)V

    .line 63
    aget-object v0, v7, v1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->setToServiceId(I)V

    .line 64
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, v7, v9}, Lcom/android/internal/telephony/Phone;->setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V

    .line 65
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p2, v9}, Lcom/android/internal/telephony/Phone;->setGsmBroadcastActivation(ZLandroid/os/Message;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.motorola.cmas.REGISTER_CHANNELS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "deactivateChannels"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CmasChannelReceiver;->registerCmasAlerts(Ljava/util/ArrayList;Z)V

    .line 36
    const-string v0, "activateChannels"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CmasChannelReceiver;->registerCmasAlerts(Ljava/util/ArrayList;Z)V

    .line 39
    :cond_0
    return-void
.end method
