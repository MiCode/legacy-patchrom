.class public Landroid/net/sip/SipProfile;
.super Ljava/lang/Object;
.source "SipProfile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/sip/SipProfile$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_PORT:I = 0x13c4

.field private static final TCP:Ljava/lang/String; = "TCP"

.field private static final UDP:Ljava/lang/String; = "UDP"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mAddress:Ljavax/sip/address/Address;

.field private mAuthUserName:Ljava/lang/String;

.field private mAutoRegistration:Z

.field private transient mCallingUid:I

.field private mDomain:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPort:I

.field private mProfileName:Ljava/lang/String;

.field private mProtocol:Ljava/lang/String;

.field private mProxyAddress:Ljava/lang/String;

.field private mSendKeepAlive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/sip/SipProfile$1;

    invoke-direct {v0}, Landroid/net/sip/SipProfile$1;-><init>()V

    sput-object v0, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UDP"

    iput-object v0, p0, Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;

    const/16 v0, 0x13c4

    iput v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    iput-boolean v1, p0, Landroid/net/sip/SipProfile;->mSendKeepAlive:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/sip/SipProfile;->mAutoRegistration:Z

    iput v1, p0, Landroid/net/sip/SipProfile;->mCallingUid:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/sip/SipProfile$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/sip/SipProfile;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UDP"

    iput-object v0, p0, Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;

    const/16 v0, 0x13c4

    iput v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    iput-boolean v1, p0, Landroid/net/sip/SipProfile;->mSendKeepAlive:Z

    iput-boolean v2, p0, Landroid/net/sip/SipProfile;->mAutoRegistration:Z

    iput v1, p0, Landroid/net/sip/SipProfile;->mCallingUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljavax/sip/address/Address;

    iput-object v0, p0, Landroid/net/sip/SipProfile;->mAddress:Ljavax/sip/address/Address;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/sip/SipProfile;->mProxyAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/sip/SipProfile;->mPassword:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/sip/SipProfile;->mDomain:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/sip/SipProfile;->mProfileName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/net/sip/SipProfile;->mSendKeepAlive:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/net/sip/SipProfile;->mAutoRegistration:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/sip/SipProfile;->mCallingUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/sip/SipProfile;->mAuthUserName:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/sip/SipProfile$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/sip/SipProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$1002(Landroid/net/sip/SipProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/sip/SipProfile;->mAutoRegistration:Z

    return p1
.end method

.method static synthetic access$1102(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/sip/SipProfile;->mPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/sip/SipProfile;->mProxyAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Landroid/net/sip/SipProfile;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Landroid/net/sip/SipProfile;Ljavax/sip/address/Address;)Ljavax/sip/address/Address;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/sip/SipProfile;->mAddress:Ljavax/sip/address/Address;

    return-object p1
.end method

.method static synthetic access$400(Landroid/net/sip/SipProfile;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    return v0
.end method

.method static synthetic access$402(Landroid/net/sip/SipProfile;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/net/sip/SipProfile;->mPort:I

    return p1
.end method

.method static synthetic access$502(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/sip/SipProfile;->mDomain:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/sip/SipProfile;->mAuthUserName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/sip/SipProfile;->mProfileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Landroid/net/sip/SipProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/sip/SipProfile;->mSendKeepAlive:Z

    return p1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    if-nez v0, :cond_0

    const/16 v0, 0x13c4

    iput v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    :cond_0
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthUserName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mAuthUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoRegistration()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/net/sip/SipProfile;->mAutoRegistration:Z

    return v0
.end method

.method public getCallingUid()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/sip/SipProfile;->mCallingUid:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mAddress:Ljavax/sip/address/Address;

    invoke-interface {v0}, Ljavax/sip/address/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    return v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mProxyAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSendKeepAlive()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/net/sip/SipProfile;->mSendKeepAlive:Z

    return v0
.end method

.method public getSipAddress()Ljavax/sip/address/Address;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mAddress:Ljavax/sip/address/Address;

    return-object v0
.end method

.method public getSipDomain()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljavax/sip/address/SipURI;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mAddress:Ljavax/sip/address/Address;

    invoke-interface {v0}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object p0

    .end local p0
    check-cast p0, Ljavax/sip/address/SipURI;

    return-object p0
.end method

.method public getUriString()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipProfile;->mProxyAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipProfile;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/sip/SipProfile;->getUri()Ljavax/sip/address/SipURI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/net/sip/SipProfile;->getUri()Ljavax/sip/address/SipURI;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCallingUid(I)V
    .locals 0
    .parameter "uid"

    .prologue
    iput p1, p0, Landroid/net/sip/SipProfile;->mCallingUid:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/net/sip/SipProfile;->mAddress:Ljavax/sip/address/Address;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Landroid/net/sip/SipProfile;->mProxyAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/sip/SipProfile;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/sip/SipProfile;->mDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/sip/SipProfile;->mProfileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/net/sip/SipProfile;->mSendKeepAlive:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/sip/SipProfile;->mAutoRegistration:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/sip/SipProfile;->mCallingUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/sip/SipProfile;->mAuthUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
