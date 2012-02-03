.class public Landroid/net/vpn/PptpProfile;
.super Landroid/net/vpn/VpnProfile;
.source "PptpProfile.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mEncryption:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/net/vpn/VpnProfile;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/vpn/PptpProfile;->mEncryption:Z

    return-void
.end method


# virtual methods
.method public getType()Landroid/net/vpn/VpnType;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Landroid/net/vpn/VpnType;->PPTP:Landroid/net/vpn/VpnType;

    return-object v0
.end method

.method public isEncryptionEnabled()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Landroid/net/vpn/PptpProfile;->mEncryption:Z

    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/net/vpn/VpnProfile;->readFromParcel(Landroid/os/Parcel;)V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/net/vpn/PptpProfile;->mEncryption:Z

    .line 49
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEncryptionEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 38
    iput-boolean p1, p0, Landroid/net/vpn/PptpProfile;->mEncryption:Z

    .line 39
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Landroid/net/vpn/VpnProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 54
    iget-boolean v0, p0, Landroid/net/vpn/PptpProfile;->mEncryption:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
