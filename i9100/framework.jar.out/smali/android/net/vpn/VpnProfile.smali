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

.field private mExcludeRouteList:Ljava/lang/String;

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
    .line 162
    new-instance v0, Landroid/net/vpn/VpnProfile$1;

    invoke-direct {v0}, Landroid/net/vpn/VpnProfile$1;-><init>()V

    sput-object v0, Landroid/net/vpn/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    iput-object v0, p0, Landroid/net/vpn/VpnProfile;->mState:Landroid/net/vpn/VpnState;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public getDomainSuffices()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mDomainSuffices:Ljava/lang/String;

    return-object v0
.end method

.method public getExcludeRouteList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mExcludeRouteList:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRouteList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mRouteList:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mSavedUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mServerName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Landroid/net/vpn/VpnState;
    .locals 1

    .prologue
    .line 128
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
    .line 140
    iget-boolean v0, p0, Landroid/net/vpn/VpnProfile;->mIsCustomized:Z

    return v0
.end method

.method public isIdle()Z
    .locals 2

    .prologue
    .line 132
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
    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vpn/VpnProfile;->mName:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vpn/VpnProfile;->mId:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vpn/VpnProfile;->mServerName:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vpn/VpnProfile;->mDomainSuffices:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vpn/VpnProfile;->mRouteList:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vpn/VpnProfile;->mExcludeRouteList:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vpn/VpnProfile;->mSavedUsername:Ljava/lang/String;

    .line 160
    return-void
.end method

.method setCustomized(Z)V
    .locals 0
    .parameter "customized"

    .prologue
    .line 149
    iput-boolean p1, p0, Landroid/net/vpn/VpnProfile;->mIsCustomized:Z

    .line 150
    return-void
.end method

.method public setDomainSuffices(Ljava/lang/String;)V
    .locals 0
    .parameter "entries"

    .prologue
    .line 80
    iput-object p1, p0, Landroid/net/vpn/VpnProfile;->mDomainSuffices:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setExcludeRouteList(Ljava/lang/String;)V
    .locals 0
    .parameter "entries"

    .prologue
    .line 108
    iput-object p1, p0, Landroid/net/vpn/VpnProfile;->mExcludeRouteList:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 56
    iput-object p1, p0, Landroid/net/vpn/VpnProfile;->mId:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 44
    iput-object p1, p0, Landroid/net/vpn/VpnProfile;->mName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setRouteList(Ljava/lang/String;)V
    .locals 0
    .parameter "entries"

    .prologue
    .line 94
    iput-object p1, p0, Landroid/net/vpn/VpnProfile;->mRouteList:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setSavedUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 116
    iput-object p1, p0, Landroid/net/vpn/VpnProfile;->mSavedUsername:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 67
    iput-object p1, p0, Landroid/net/vpn/VpnProfile;->mServerName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setState(Landroid/net/vpn/VpnState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 124
    iput-object p1, p0, Landroid/net/vpn/VpnProfile;->mState:Landroid/net/vpn/VpnState;

    .line 125
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/vpn/VpnType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-boolean v0, p0, Landroid/net/vpn/VpnProfile;->mIsCustomized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mServerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mDomainSuffices:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mRouteList:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mExcludeRouteList:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Landroid/net/vpn/VpnProfile;->mSavedUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    return-void

    .line 181
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
