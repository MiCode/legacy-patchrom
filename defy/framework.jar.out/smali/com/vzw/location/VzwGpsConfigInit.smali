.class public Lcom/vzw/location/VzwGpsConfigInit;
.super Ljava/lang/Object;
.source "VzwGpsConfigInit.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwGpsConfigInit;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VzwGpsConfigInit"


# instance fields
.field private mAppId:J

.field private mAppPasswd:Ljava/lang/String;

.field private mLastMpcHost:Ljava/net/InetAddress;

.field private mLastMpcPort:I

.field private mMpcHost:Ljava/net/InetAddress;

.field private mMpcPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/vzw/location/VzwGpsConfigInit$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsConfigInit$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwGpsConfigInit;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    iput v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    iput-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mLastMpcHost:Ljava/net/InetAddress;

    iput v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mLastMpcPort:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppPasswd:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, name:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v4

    :goto_0
    iput-object v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #name:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    return-void

    .restart local v1       #name:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .end local v1           #name:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/net/UnknownHostException;
    const-string v2, "VzwGpsConfigInit"

    const-string v3, "reading mMpcHost from parcel, caught UnknownHostException!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vzw/location/VzwGpsConfigInit$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwGpsConfigInit;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getApplicationId()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppId:J

    return-wide v0
.end method

.method public getApplicationPassword()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppPasswd:Ljava/lang/String;

    return-object v0
.end method

.method public getMpcHost()Ljava/net/InetAddress;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getMpcPort()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    return v0
.end method

.method public getSmsPrefixInfo()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, ""

    return-object v0
.end method

.method public resetMpc()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mLastMpcHost:Ljava/net/InetAddress;

    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    iget v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mLastMpcPort:I

    iput v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    return-void
.end method

.method public setCredentials(JLjava/lang/String;)V
    .locals 0
    .parameter "appId"
    .parameter "appPasswd"

    .prologue
    iput-wide p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppId:J

    iput-object p3, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppPasswd:Ljava/lang/String;

    return-void
.end method

.method public setMpc(Ljava/lang/String;I)V
    .locals 1
    .parameter "mpcHost"
    .parameter "mpcPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .local v0, host:Ljava/net/InetAddress;
    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwGpsConfigInit;->setMpcHost(Ljava/net/InetAddress;)V

    invoke-virtual {p0, p2}, Lcom/vzw/location/VzwGpsConfigInit;->setMpcPort(I)V

    return-void
.end method

.method public setMpc(Ljava/net/InetAddress;I)V
    .locals 0
    .parameter "mpcHost"
    .parameter "mpcPort"

    .prologue
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsConfigInit;->setMpcHost(Ljava/net/InetAddress;)V

    invoke-virtual {p0, p2}, Lcom/vzw/location/VzwGpsConfigInit;->setMpcPort(I)V

    return-void
.end method

.method public setMpcHost(Ljava/lang/String;)V
    .locals 1
    .parameter "mpcHost"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .local v0, host:Ljava/net/InetAddress;
    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwGpsConfigInit;->setMpcHost(Ljava/net/InetAddress;)V

    return-void
.end method

.method public setMpcHost(Ljava/net/InetAddress;)V
    .locals 1
    .parameter "mpcHost"

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mLastMpcHost:Ljava/net/InetAddress;

    iput-object p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    return-void
.end method

.method public setMpcPort(I)V
    .locals 1
    .parameter "mpcPort"

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    iput v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mLastMpcPort:I

    iput p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    return-void
.end method

.method public setSmsPrefixInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "appPrefix"
    .parameter "fqan"

    .prologue
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    iget-wide v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppId:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppPasswd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    if-nez v1, :cond_0

    const-string v1, ""

    move-object v0, v1

    .local v0, hostAddr:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .end local v0           #hostAddr:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method
