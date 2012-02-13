.class public Landroid/net/MobileDataStateTracker;
.super Landroid/net/NetworkStateTracker;
.source "MobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/MobileDataStateTracker$1;,
        Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "MobileDataStateTracker"


# instance fields
.field private mApnName:Ljava/lang/String;

.field private mApnType:Ljava/lang/String;

.field private mApnTypeToWatchFor:Ljava/lang/String;

.field private mCid:I

.field private mDnsAddr:[Ljava/net/InetAddress;

.field private mEnabled:Z

.field private mIpAddr:[Ljava/net/InetAddress;

.field private mIsDefaultOrHipri:Z

.field private mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field private mStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILjava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "target"
    .parameter "netType"
    .parameter "tag"

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mIpAddr:[Ljava/net/InetAddress;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mDnsAddr:[Ljava/net/InetAddress;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mIsDefaultOrHipri:Z

    invoke-static {p3}, Landroid/net/MobileDataStateTracker;->networkTypeToApnType(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkStateTracker;->mIpType:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/MobileDataStateTracker;->mCid:I

    invoke-direct {p0, p3}, Landroid/net/MobileDataStateTracker;->convertNetworkTypeToFeature(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStateTracker;->mFeature:Ljava/lang/String;

    const/4 v8, 0x0

    .local v8, isDedicatedHiPri:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :goto_0
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dedicated Hipri type in apns table? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_2

    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnTypeToWatchFor:Ljava/lang/String;

    :goto_1
    if-eqz p3, :cond_0

    const/4 v0, 0x5

    if-ne p3, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mIsDefaultOrHipri:Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez p3, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    :goto_2
    const/16 v0, 0x2c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "net.rmnet0.dns1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "net.rmnet0.dns2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "net.rmnet0.dns3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "net.rmnet0.dns4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "net.rmnet1.dns1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "net.rmnet1.dns2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "net.rmnet1.dns3"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "net.rmnet1.dns4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "net.rmnet2.dns1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "net.rmnet2.dns2"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "net.rmnet2.dns3"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "net.rmnet2.dns4"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "net.rmnet3.dns1"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "net.rmnet3.dns2"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "net.rmnet3.dns3"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "net.rmnet3.dns4"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "net.rmnet4.dns1"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "net.rmnet4.dns2"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "net.eth0.dns1"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "net.eth0.dns2"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "net.eth0.dns3"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "net.eth0.dns4"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "net.gprs.dns1"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "net.gprs.dns2"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "net.ppp0.dns1"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "net.ppp0.dns2"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "net.gannet0.dns1"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "net.gannet0.dns2"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "net.qmi0.dns1"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "net.qmi0.dns2"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "net.qmi0.dns3"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "net.qmi0.dns4"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "net.qmi1.dns1"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "net.qmi1.dns2"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "net.qmi1.dns3"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "net.qmi1.dns4"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "net.qmi2.dns1"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "net.qmi2.dns2"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "net.qmi2.dns3"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "net.qmi2.dns4"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "net.qmi3.dns1"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "net.qmi3.dns2"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "net.qmi3.dns3"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "net.qmi3.dns4"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/net/NetworkStateTracker;->mDnsPropNames:[Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    move-object v7, v0

    .local v7, e:Ljava/lang/Exception;
    const/4 v8, 0x0

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const-string v1, "hipri"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "default"

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnTypeToWatchFor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnTypeToWatchFor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    goto/16 :goto_2
.end method

.method static synthetic access$100(Landroid/net/MobileDataStateTracker;Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/MobileDataStateTracker;)[Ljava/net/InetAddress;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDnsAddr:[Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic access$202(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mApnName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->isApnTypeIncluded(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/net/MobileDataStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    return v0
.end method

.method static synthetic access$402(Landroid/net/MobileDataStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    return p1
.end method

.method static synthetic access$500(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    return-object v0
.end method

.method static synthetic access$602(Landroid/net/MobileDataStateTracker;Lcom/android/internal/telephony/Phone$DataState;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    return-object p1
.end method

.method static synthetic access$700(Landroid/net/MobileDataStateTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/MobileDataStateTracker;->getActivePhoneType()I

    move-result v0

    return v0
.end method

.method static synthetic access$802(Landroid/net/MobileDataStateTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/net/MobileDataStateTracker;->mCid:I

    return p1
.end method

.method static synthetic access$900(Landroid/net/MobileDataStateTracker;)[Ljava/net/InetAddress;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mIpAddr:[Ljava/net/InetAddress;

    return-object v0
.end method

.method private convertNetworkTypeToFeature(I)Ljava/lang/String;
    .locals 1
    .parameter "networkType"

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string v0, "enableMMS"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const-string v0, "enableSUPL"

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    const-string v0, "enableDUN"

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    const-string v0, "enableHIPRI"

    goto :goto_0

    :cond_3
    const/16 v0, 0x1e

    if-ne p1, v0, :cond_4

    const-string v0, "enableAGPS"

    goto :goto_0

    :cond_4
    const/16 v0, 0x1f

    if-ne p1, v0, :cond_5

    const-string v0, "enableFOTA"

    goto :goto_0

    :cond_5
    const/16 v0, 0x22

    if-ne p1, v0, :cond_6

    const-string v0, "enableENTITLE"

    goto :goto_0

    :cond_6
    const/16 v0, 0x20

    if-ne p1, v0, :cond_7

    const-string v0, "enableIMS"

    goto :goto_0

    :cond_7
    const/16 v0, 0x21

    if-ne p1, v0, :cond_8

    const-string v0, "enableCBS"

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getActivePhoneType()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    const/4 v1, 0x0

    .local v1, retry:I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    :goto_1
    return v2

    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 3
    .parameter "intent"

    .prologue
    const-string v2, "state"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "apnType"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, apnTypeList:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/net/MobileDataStateTracker;->isApnTypeIncluded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v2, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v2, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/Phone$DataState;

    move-object v2, p0

    .end local v0           #apnTypeList:Ljava/lang/String;
    :goto_0
    return-object v2

    .restart local p0
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0
.end method

.method protected static getNameServerList([Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .parameter "propertyNames"

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, dnsNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, p0

    if-ge v4, v8, :cond_2

    aget-object v8, p0, v4

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, values:Ljava/lang/String;
    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, dnsList:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v3, v0, v5

    .local v3, dnsValue:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "0.0.0.0"

    invoke-static {v3, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v3           #dnsValue:Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dnsList:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #values:Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private getPhoneService(Z)V
    .locals 1
    .parameter "forceRefresh"

    .prologue
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    :cond_1
    return-void
.end method

.method private isApnTypeIncluded(Ljava/lang/String;)Z
    .locals 5
    .parameter "typeList"

    .prologue
    const/4 v4, 0x0

    if-nez p1, :cond_0

    move v2, v4

    :goto_0
    return v2

    :cond_0
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, list:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v2, v1, v0

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mApnTypeToWatchFor:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, v1, v0

    const-string v3, "*"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const-string v3, "entitle"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_0
.end method

.method public static networkTypeToApnType(I)Ljava/lang/String;
    .locals 3
    .parameter "netType"

    .prologue
    sparse-switch p0, :sswitch_data_0

    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error mapping networkType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to apnType."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "default"

    goto :goto_0

    :sswitch_1
    const-string v0, "mms"

    goto :goto_0

    :sswitch_2
    const-string v0, "supl"

    goto :goto_0

    :sswitch_3
    const-string v0, "dun"

    goto :goto_0

    :sswitch_4
    const-string v0, "hipri"

    goto :goto_0

    :sswitch_5
    const-string v0, "entitle"

    goto :goto_0

    :sswitch_6
    const-string v0, "agps"

    goto :goto_0

    :sswitch_7
    const-string v0, "fota"

    goto :goto_0

    :sswitch_8
    const-string v0, "ims"

    goto :goto_0

    :sswitch_9
    const-string v0, "cbs"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x1e -> :sswitch_6
        0x1f -> :sswitch_7
        0x20 -> :sswitch_8
        0x21 -> :sswitch_9
        0x22 -> :sswitch_5
    .end sparse-switch
.end method

.method private setEnableApn(Ljava/lang/String;Z)I
    .locals 6
    .parameter "apnType"
    .parameter "enable"

    .prologue
    const-string v5, "MobileDataStateTracker"

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    const/4 v1, 0x0

    .local v1, retry:I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_1

    const-string v2, "MobileDataStateTracker"

    const-string v2, "Ignoring feature request because could not acquire PhoneService"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "MobileDataStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_4

    const-string v3, "enable"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " APN type \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    :goto_2
    return v2

    :cond_1
    if-eqz p2, :cond_2

    :try_start_0
    const-string v2, "MobileDataStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before enableApnType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    :cond_2
    const-string v2, "MobileDataStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before disableApnType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_3

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    const-string v3, "disable"

    goto :goto_1
.end method


# virtual methods
.method public getApnni()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnName:Ljava/lang/String;

    return-object v0
.end method

.method public getCid()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/MobileDataStateTracker;->mCid:I

    return v0
.end method

.method public getDnsAddr()[Ljava/net/InetAddress;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDnsAddr:[Ljava/net/InetAddress;

    return-object v0
.end method

.method public getGwAddr()[Ljava/net/InetAddress;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    return-object v0
.end method

.method public getIpAddr()[Ljava/net/InetAddress;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mIpAddr:[Ljava/net/InetAddress;

    return-object v0
.end method

.method public getNameServers()[Ljava/lang/String;
    .locals 7

    .prologue
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, dnsPropNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mDnsPropNames:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .local v4, propName:Ljava/lang/String;
    iget-object v5, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4           #propName:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    invoke-static {p0}, Landroid/net/MobileDataStateTracker;->getNameServerList([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    :goto_1
    return-object v5

    .restart local p0
    :cond_3
    iget-object v5, p0, Landroid/net/NetworkStateTracker;->mDnsPropNames:[Ljava/lang/String;

    invoke-static {v5}, Landroid/net/MobileDataStateTracker;->getNameServerList([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public getNetworkSubtype()I
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v0, "unknown"

    .local v0, networkTypeStr:Ljava/lang/String;
    new-instance v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "net.tcp.buffersize."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_1
    const-string v0, "gprs"

    goto :goto_0

    :pswitch_2
    const-string v0, "edge"

    goto :goto_0

    :pswitch_3
    const-string v0, "umts"

    goto :goto_0

    :pswitch_4
    const-string v0, "hsdpa"

    goto :goto_0

    :pswitch_5
    const-string v0, "hsupa"

    goto :goto_0

    :pswitch_6
    const-string v0, "hspa"

    goto :goto_0

    :pswitch_7
    const-string v0, "cdma"

    goto :goto_0

    :pswitch_8
    const-string v0, "1xrtt"

    goto :goto_0

    :pswitch_9
    const-string v0, "evdo"

    goto :goto_0

    :pswitch_a
    const-string v0, "evdo"

    goto :goto_0

    :pswitch_b
    const-string v0, "evdo"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method public isAvailable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    const/4 v1, 0x0

    .local v1, retry:I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    :goto_1
    return v2

    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public reconnect()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v9, "default"

    const-string v8, "apnChanged"

    const-string v7, "MobileDataStateTracker"

    invoke-virtual {p0, v5}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    iput-boolean v6, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-direct {p0, v1, v6}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string v1, "MobileDataStateTracker"

    const-string v1, "Error in reconnect - unexpected response."

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    :cond_1
    :goto_0
    :pswitch_0
    iget-boolean v1, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    :goto_1
    return v1

    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    iput-object v1, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v2, "apnChanged"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v8, v2}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "reason"

    const-string v2, "apnChanged"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "apnType"

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnTypeToWatchFor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "apn"

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ipVersion"

    iget v2, p0, Landroid/net/NetworkStateTracker;->mIpType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "iface"

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "networkUnvailable"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "gateway"

    iget v2, p0, Landroid/net/NetworkStateTracker;->mDefaultGatewayAddr:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const-string v2, "default"

    invoke-static {v1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v6, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    move v1, v5

    goto :goto_1

    :cond_2
    const-string v1, "MobileDataStateTracker"

    const-string v1, "Set mEnabled=false, reconnect APN_REQUEST_FAILED"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const-string v2, "default"

    invoke-static {v1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "MobileDataStateTracker"

    const-string v1, "Set mEnabled=false, reconnect APN_TYPE_NOT_AVAILABLE"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public requestRouteToHost(I)Z
    .locals 4
    .parameter "hostAddress"

    .prologue
    const/4 v3, 0x0

    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested host route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/net/NetworkUtils;->addHostRoute(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method public requestRouteToHost(Ljava/net/InetAddress;I)Z
    .locals 8
    .parameter "hostAddress"
    .parameter "mask"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "MobileDataStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested host route to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v2, v2, v5

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v2, v2, v6

    if-eqz v2, :cond_9

    :cond_0
    const/4 v1, 0x0

    .local v1, gwV6:Ljava/net/InetAddress;
    const/4 v0, 0x0

    .local v0, gwV4:Ljava/net/InetAddress;
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v2, v2, v5

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v2, v2, v5

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v0, v2, v5

    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v2, v2, v6

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v2, v2, v6

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v0, v2, v6

    :cond_2
    :goto_1
    instance-of v2, p1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_6

    iget v2, p0, Landroid/net/NetworkStateTracker;->mIpType:I

    if-eq v2, v6, :cond_3

    iget v2, p0, Landroid/net/NetworkStateTracker;->mIpType:I

    if-ne v2, v7, :cond_6

    :cond_3
    if-eqz v1, :cond_6

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v2, p1, v1, p2}, Landroid/net/NetworkUtils;->addHostRoute(Ljava/lang/String;Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z

    move-result v2

    .end local v0           #gwV4:Ljava/net/InetAddress;
    .end local v1           #gwV6:Ljava/net/InetAddress;
    :goto_2
    return v2

    .restart local v0       #gwV4:Ljava/net/InetAddress;
    .restart local v1       #gwV6:Ljava/net/InetAddress;
    :cond_4
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v1, v2, v5

    goto :goto_0

    :cond_5
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v1, v2, v6

    goto :goto_1

    :cond_6
    instance-of v2, p1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_8

    iget v2, p0, Landroid/net/NetworkStateTracker;->mIpType:I

    if-eqz v2, :cond_7

    iget v2, p0, Landroid/net/NetworkStateTracker;->mIpType:I

    if-ne v2, v7, :cond_8

    :cond_7
    if-eqz v0, :cond_8

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v2, p1, v0, p2}, Landroid/net/NetworkUtils;->addHostRoute(Ljava/lang/String;Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z

    move-result v2

    goto :goto_2

    :cond_8
    move v2, v5

    goto :goto_2

    .end local v0           #gwV4:Ljava/net/InetAddress;
    .end local v1           #gwV6:Ljava/net/InetAddress;
    :cond_9
    move v2, v5

    goto :goto_2
.end method

.method public resetConnectionsInTracker(Z)V
    .locals 3
    .parameter "isShared"

    .prologue
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetConnections ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setRadio(Z)Z
    .locals 6
    .parameter "turnOn"

    .prologue
    const/4 v4, 0x0

    const-string v5, "MobileDataStateTracker"

    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    const/4 v1, 0x0

    .local v1, retry:I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_1

    const-string v2, "MobileDataStateTracker"

    const-string v2, "Ignoring mobile radio request because could not acquire PhoneService"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "MobileDataStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set radio power to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_3

    const-string v3, "on"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    :goto_2
    return v2

    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    const-string v3, "off"

    goto :goto_1
.end method

.method public startMonitoring()V
    .locals 4

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;-><init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker$1;)V

    iput-object v2, p0, Landroid/net/MobileDataStateTracker;->mStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v2

    iput-object v2, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    iput-object v2, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0
.end method

.method public startUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 1
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public stopUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 1
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public teardown()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "MobileDataStateTracker"

    const-string v1, "apnType=null, when teardown, ignore it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Mobile data state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .local v0, sb:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
