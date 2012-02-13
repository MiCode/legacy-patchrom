.class public abstract Landroid/net/vpn/VpnProfile;
.super Ljava/lang/Object;
.source "VpnProfile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/vpn/VpnProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mDomainSuffices:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mIsCustomized:Z

.field private mName:Ljava/lang/String;

.field private mRouteList:Ljava/lang/String;

.field private mSavedUsername:Ljava/lang/String;

.field private mServerName:Ljava/lang/String;

.field private transient mState:Landroid/net/vpn/VpnState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/vpn/VpnProfile$1;

    invoke-direct {v0}, Landroid/net/vpn/VpnProfile$1;-><init>()V

    sput-object v0, Landroid/net/vpn/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    iput-object v0, p0, Landroid/net/vpn/VpnProfile;->mState:Landroid/net/vpn/VpnState;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getDomainSuffices()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mDomainSuffices:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRouteList()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mRouteList:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedUsername()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mSavedUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mServerName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Landroid/net/vpn/VpnState;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mState:Landroid/net/vpn/VpnState;

    if-nez v0, :cond_0

    sget-object v0, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mState:Landroid/net/vpn/VpnState;

    goto :goto_0
.end method

.method public abstract getType()Landroid/net/vpn/VpnType;
.end method

.method public isCustomized()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/net/vpn/VpnProfile;->mIsCustomized:Z

    return v0
.end method

.method public isIdle()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mState:Landroid/net/vpn/VpnState;

    sget-object v1, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vpn/VpnProfile;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vpn/VpnProfile;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vpn/VpnProfile;->mServerName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vpn/VpnProfile;->mDomainSuffices:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vpn/VpnProfile;->mRouteList:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vpn/VpnProfile;->mSavedUsername:Ljava/lang/String;

    return-void
.end method

.method setCustomized(Z)V
    .locals 0
    .parameter "customized"

    .prologue
    iput-boolean p1, p0, Landroid/net/vpn/VpnProfile;->mIsCustomized:Z

    return-void
.end method

.method public setDomainSuffices(Ljava/lang/String;)V
    .locals 0
    .parameter "entries"

    .prologue
    iput-object p1, p0, Landroid/net/vpn/VpnProfile;->mDomainSuffices:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    iput-object p1, p0, Landroid/net/vpn/VpnProfile;->mId:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    iput-object p1, p0, Landroid/net/vpn/VpnProfile;->mName:Ljava/lang/String;

    return-void
.end method

.method public setRouteList(Ljava/lang/String;)V
    .locals 0
    .parameter "entries"

    .prologue
    iput-object p1, p0, Landroid/net/vpn/VpnProfile;->mRouteList:Ljava/lang/String;

    return-void
.end method

.method public setSavedUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    iput-object p1, p0, Landroid/net/vpn/VpnProfile;->mSavedUsername:Ljava/lang/String;

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    iput-object p1, p0, Landroid/net/vpn/VpnProfile;->mServerName:Ljava/lang/String;

    return-void
.end method

.method public setState(Landroid/net/vpn/VpnState;)V
    .locals 0
    .parameter "state"

    .prologue
    iput-object p1, p0, Landroid/net/vpn/VpnProfile;->mState:Landroid/net/vpn/VpnState;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flags"

    .prologue
    invoke-virtual {p0}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/vpn/VpnType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/net/vpn/VpnProfile;->mIsCustomized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mServerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mDomainSuffices:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mRouteList:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mSavedUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
