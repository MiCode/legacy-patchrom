.class public Lcom/android/phone/WrappedNetworkInfoBuilder;
.super Ljava/lang/Object;
.source "WrappedNetworkInfoBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isCurrentNetwork3g(Landroid/telephony/TelephonyManager;)Z
    .locals 1
    .parameter "man"

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 41
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 38
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method get(Landroid/telephony/TelephonyManager;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter "man"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/TelephonyManager;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/WrappedNetworkInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/NetworkInfo;>;"
    if-nez p2, :cond_0

    const/4 v4, 0x0

    .line 29
    :goto_0
    return-object v4

    .line 21
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/WrappedNetworkInfoBuilder;->isCurrentNetwork3g(Landroid/telephony/TelephonyManager;)Z

    move-result v1

    .line 23
    .local v1, isCurrentNetwork3g:Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v3, wList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/WrappedNetworkInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/NetworkInfo;

    .line 26
    .local v2, ni:Lcom/android/internal/telephony/gsm/NetworkInfo;
    new-instance v4, Lcom/android/phone/WrappedNetworkInfo;

    invoke-direct {v4, v2, v1}, Lcom/android/phone/WrappedNetworkInfo;-><init>(Lcom/android/internal/telephony/gsm/NetworkInfo;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2           #ni:Lcom/android/internal/telephony/gsm/NetworkInfo;
    :cond_1
    move-object v4, v3

    .line 29
    goto :goto_0
.end method
