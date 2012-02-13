.class public Landroid/net/vpn/L2tpProfile;
.super Landroid/net/vpn/VpnProfile;
.source "L2tpProfile.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mSecret:Z

.field private mSecretString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/net/vpn/VpnProfile;-><init>()V

    return-void
.end method


# virtual methods
.method public getSecretString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/vpn/L2tpProfile;->mSecretString:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Landroid/net/vpn/VpnType;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/vpn/VpnType;->L2TP:Landroid/net/vpn/VpnType;

    return-object v0
.end method

.method public isSecretEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/net/vpn/L2tpProfile;->mSecret:Z

    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    invoke-super {p0, p1}, Landroid/net/vpn/VpnProfile;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/net/vpn/L2tpProfile;->mSecret:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vpn/L2tpProfile;->mSecretString:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSecretEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    iput-boolean p1, p0, Landroid/net/vpn/L2tpProfile;->mSecret:Z

    return-void
.end method

.method public setSecretString(Ljava/lang/String;)V
    .locals 0
    .parameter "secret"

    .prologue
    iput-object p1, p0, Landroid/net/vpn/L2tpProfile;->mSecretString:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flags"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/net/vpn/VpnProfile;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Landroid/net/vpn/L2tpProfile;->mSecret:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/vpn/L2tpProfile;->mSecretString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
