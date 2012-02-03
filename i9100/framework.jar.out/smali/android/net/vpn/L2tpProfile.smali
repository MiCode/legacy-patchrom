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
    .line 25
    invoke-direct {p0}, Landroid/net/vpn/VpnProfile;-><init>()V

    return-void
.end method


# virtual methods
.method public getSecretString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/vpn/L2tpProfile;->mSecretString:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Landroid/net/vpn/VpnType;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Landroid/net/vpn/VpnType;->L2TP:Landroid/net/vpn/VpnType;

    return-object v0
.end method

.method public isSecretEnabled()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Landroid/net/vpn/L2tpProfile;->mSecret:Z

    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/net/vpn/VpnProfile;->readFromParcel(Landroid/os/Parcel;)V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/net/vpn/L2tpProfile;->mSecret:Z

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vpn/L2tpProfile;->mSecretString:Ljava/lang/String;

    .line 60
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSecretEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 40
    iput-boolean p1, p0, Landroid/net/vpn/L2tpProfile;->mSecret:Z

    .line 41
    return-void
.end method

.method public setSecretString(Ljava/lang/String;)V
    .locals 0
    .parameter "secret"

    .prologue
    .line 48
    iput-object p1, p0, Landroid/net/vpn/L2tpProfile;->mSecretString:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Landroid/net/vpn/VpnProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 65
    iget-boolean v0, p0, Landroid/net/vpn/L2tpProfile;->mSecret:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Landroid/net/vpn/L2tpProfile;->mSecretString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
