.class final Landroid/net/vpn/VpnProfile$1;
.super Ljava/lang/Object;
.source "VpnProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vpn/VpnProfile;
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
        "Landroid/net/vpn/VpnProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/vpn/VpnProfile;
    .locals 6
    .parameter "in"

    .prologue
    const/4 v5, 0x0

    const-class v3, Landroid/net/vpn/VpnType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Landroid/net/vpn/VpnType;

    .local v2, type:Landroid/net/vpn/VpnType;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .local v0, customized:Z
    :goto_0
    new-instance v3, Landroid/net/vpn/VpnManager;

    invoke-direct {v3, v5}, Landroid/net/vpn/VpnManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2, v0}, Landroid/net/vpn/VpnManager;->createVpnProfile(Landroid/net/vpn/VpnType;Z)Landroid/net/vpn/VpnProfile;

    move-result-object v1

    .local v1, p:Landroid/net/vpn/VpnProfile;
    if-nez v1, :cond_1

    move-object v3, v5

    :goto_1
    return-object v3

    .end local v0           #customized:Z
    .end local v1           #p:Landroid/net/vpn/VpnProfile;
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .restart local v0       #customized:Z
    .restart local v1       #p:Landroid/net/vpn/VpnProfile;
    :cond_1
    invoke-virtual {v1, p1}, Landroid/net/vpn/VpnProfile;->readFromParcel(Landroid/os/Parcel;)V

    move-object v3, v1

    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/vpn/VpnProfile$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/vpn/VpnProfile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/vpn/VpnProfile;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Landroid/net/vpn/VpnProfile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/vpn/VpnProfile$1;->newArray(I)[Landroid/net/vpn/VpnProfile;

    move-result-object v0

    return-object v0
.end method
