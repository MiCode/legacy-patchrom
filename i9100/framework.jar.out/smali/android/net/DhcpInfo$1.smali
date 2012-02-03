.class final Landroid/net/DhcpInfo$1;
.super Ljava/lang/Object;
.source "DhcpInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/DhcpInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/DhcpInfo;
    .locals 2
    .parameter "in"

    .prologue
    .line 81
    new-instance v0, Landroid/net/DhcpInfo;

    invoke-direct {v0}, Landroid/net/DhcpInfo;-><init>()V

    .line 82
    .local v0, info:Landroid/net/DhcpInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/DhcpInfo;->ipAddress:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/DhcpInfo;->gateway:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/DhcpInfo;->netmask:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/DhcpInfo;->dns1:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/DhcpInfo;->dns2:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/DhcpInfo;->serverAddress:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/DhcpInfo;->leaseDuration:I

    .line 89
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Landroid/net/DhcpInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/DhcpInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 93
    new-array v0, p1, [Landroid/net/DhcpInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Landroid/net/DhcpInfo$1;->newArray(I)[Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method
