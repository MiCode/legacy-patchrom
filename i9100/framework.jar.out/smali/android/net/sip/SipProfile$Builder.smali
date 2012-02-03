.class public Landroid/net/sip/SipProfile$Builder;
.super Ljava/lang/Object;
.source "SipProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/SipProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAddressFactory:Ljavax/sip/address/AddressFactory;

.field private mDisplayName:Ljava/lang/String;

.field private mProfile:Landroid/net/sip/SipProfile;

.field private mProxyAddress:Ljava/lang/String;

.field private mUri:Ljavax/sip/address/SipURI;


# direct methods
.method public constructor <init>(Landroid/net/sip/SipProfile;)V
    .locals 3
    .parameter "profile"

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v1, Landroid/net/sip/SipProfile;

    invoke-direct {v1, v2}, Landroid/net/sip/SipProfile;-><init>(Landroid/net/sip/SipProfile$1;)V

    iput-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    .line 81
    :try_start_0
    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/sip/SipFactory;->createAddressFactory()Ljavax/sip/address/AddressFactory;

    move-result-object v1

    iput-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mAddressFactory:Ljavax/sip/address/AddressFactory;
    :try_end_0
    .catch Ljavax/sip/PeerUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 83
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 84
    .local v0, e:Ljavax/sip/PeerUnavailableException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 94
    .end local v0           #e:Ljavax/sip/PeerUnavailableException;
    :cond_0
    :try_start_1
    #calls: Ljava/lang/Object;->clone()Ljava/lang/Object;
    invoke-static {p1}, Landroid/net/sip/SipProfile;->access$200(Landroid/net/sip/SipProfile;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/sip/SipProfile;

    iput-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    iget-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #setter for: Landroid/net/sip/SipProfile;->mAddress:Ljavax/sip/address/Address;
    invoke-static {v1, v2}, Landroid/net/sip/SipProfile;->access$302(Landroid/net/sip/SipProfile;Ljavax/sip/address/Address;)Ljavax/sip/address/Address;

    .line 99
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUri()Ljavax/sip/address/SipURI;

    move-result-object v1

    iput-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    .line 100
    iget-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/sip/address/SipURI;->setUserPassword(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mDisplayName:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProxyAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mProxyAddress:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getPort()I

    move-result v2

    #setter for: Landroid/net/sip/SipProfile;->mPort:I
    invoke-static {v1, v2}, Landroid/net/sip/SipProfile;->access$402(Landroid/net/sip/SipProfile;I)I

    .line 104
    return-void

    .line 95
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 96
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "should not occur"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "uriString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v2, Landroid/net/sip/SipProfile;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/net/sip/SipProfile;-><init>(Landroid/net/sip/SipProfile$1;)V

    iput-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    .line 81
    :try_start_0
    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/sip/SipFactory;->createAddressFactory()Ljavax/sip/address/AddressFactory;

    move-result-object v2

    iput-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mAddressFactory:Ljavax/sip/address/AddressFactory;
    :try_end_0
    .catch Ljavax/sip/PeerUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    if-nez p1, :cond_0

    .line 114
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "uriString cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 84
    .local v0, e:Ljavax/sip/PeerUnavailableException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 116
    .end local v0           #e:Ljavax/sip/PeerUnavailableException;
    :cond_0
    iget-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    invoke-direct {p0, p1}, Landroid/net/sip/SipProfile$Builder;->fix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/sip/address/AddressFactory;->createURI(Ljava/lang/String;)Ljavax/sip/address/URI;

    move-result-object v1

    .line 117
    .local v1, uri:Ljavax/sip/address/URI;
    instance-of v2, v1, Ljavax/sip/address/SipURI;

    if-eqz v2, :cond_1

    .line 118
    check-cast v1, Ljavax/sip/address/SipURI;

    .end local v1           #uri:Ljavax/sip/address/URI;
    iput-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    .line 122
    iget-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    iget-object v3, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/net/sip/SipProfile;->mDomain:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/net/sip/SipProfile;->access$502(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    return-void

    .line 120
    .restart local v1       #uri:Ljavax/sip/address/URI;
    :cond_1
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a SIP URI"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "username"
    .parameter "serverDomain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v1, Landroid/net/sip/SipProfile;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/net/sip/SipProfile;-><init>(Landroid/net/sip/SipProfile$1;)V

    iput-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    .line 81
    :try_start_0
    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/sip/SipFactory;->createAddressFactory()Ljavax/sip/address/AddressFactory;

    move-result-object v1

    iput-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mAddressFactory:Ljavax/sip/address/AddressFactory;
    :try_end_0
    .catch Ljavax/sip/PeerUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 137
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "username and serverDomain cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 84
    .local v0, e:Ljavax/sip/PeerUnavailableException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 140
    .end local v0           #e:Ljavax/sip/PeerUnavailableException;
    :cond_1
    iget-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    invoke-interface {v1, p1, p2}, Ljavax/sip/address/AddressFactory;->createSipURI(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/address/SipURI;

    move-result-object v1

    iput-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    .line 141
    iget-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #setter for: Landroid/net/sip/SipProfile;->mDomain:Ljava/lang/String;
    invoke-static {v1, p2}, Landroid/net/sip/SipProfile;->access$502(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    return-void
.end method

.method private fix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "uriString"

    .prologue
    const-string/jumbo v2, "sip:"

    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sip:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sip:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public build()Landroid/net/sip/SipProfile;
    .locals 6

    .prologue
    .line 275
    iget-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    iget-object v3, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/net/sip/SipProfile;->mPassword:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/net/sip/SipProfile;->access$1102(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    iget-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljavax/sip/address/SipURI;->setUserPassword(Ljava/lang/String;)V

    .line 278
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mProxyAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 279
    iget-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    iget-object v3, p0, Landroid/net/sip/SipProfile$Builder;->mProxyAddress:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/net/sip/SipProfile$Builder;->fix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/sip/address/AddressFactory;->createURI(Ljava/lang/String;)Ljavax/sip/address/URI;

    move-result-object v1

    check-cast v1, Ljavax/sip/address/SipURI;

    .line 281
    .local v1, uri:Ljavax/sip/address/SipURI;
    iget-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/net/sip/SipProfile;->mProxyAddress:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/net/sip/SipProfile;->access$1202(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .end local v1           #uri:Ljavax/sip/address/SipURI;
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    iget-object v3, p0, Landroid/net/sip/SipProfile$Builder;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    iget-object v4, p0, Landroid/net/sip/SipProfile$Builder;->mDisplayName:Ljava/lang/String;

    iget-object v5, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    invoke-interface {v3, v4, v5}, Ljavax/sip/address/AddressFactory;->createAddress(Ljava/lang/String;Ljavax/sip/address/URI;)Ljavax/sip/address/Address;

    move-result-object v3

    #setter for: Landroid/net/sip/SipProfile;->mAddress:Ljavax/sip/address/Address;
    invoke-static {v2, v3}, Landroid/net/sip/SipProfile;->access$302(Landroid/net/sip/SipProfile;Ljavax/sip/address/Address;)Ljavax/sip/address/Address;
    :try_end_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 298
    iget-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    return-object v2

    .line 283
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #getter for: Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/sip/SipProfile;->access$800(Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UDP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 284
    iget-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    iget-object v3, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #getter for: Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/sip/SipProfile;->access$800(Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/sip/address/SipURI;->setTransportParam(Ljava/lang/String;)V

    .line 286
    :cond_2
    iget-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #getter for: Landroid/net/sip/SipProfile;->mPort:I
    invoke-static {v2}, Landroid/net/sip/SipProfile;->access$400(Landroid/net/sip/SipProfile;)I

    move-result v2

    const/16 v3, 0x13c4

    if-eq v2, v3, :cond_0

    .line 287
    iget-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    iget-object v3, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #getter for: Landroid/net/sip/SipProfile;->mPort:I
    invoke-static {v3}, Landroid/net/sip/SipProfile;->access$400(Landroid/net/sip/SipProfile;)I

    move-result v3

    invoke-interface {v2, v3}, Ljavax/sip/address/SipURI;->setPort(I)V
    :try_end_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 292
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 293
    .local v0, e:Ljavax/sip/InvalidArgumentException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 294
    .end local v0           #e:Ljavax/sip/InvalidArgumentException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 296
    .local v0, e:Ljava/text/ParseException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setAuthUserName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;
    .locals 1
    .parameter "name"

    .prologue
    .line 158
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #setter for: Landroid/net/sip/SipProfile;->mAuthUserName:Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/net/sip/SipProfile;->access$602(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    return-object p0
.end method

.method public setAutoRegistration(Z)Landroid/net/sip/SipProfile$Builder;
    .locals 1
    .parameter "flag"

    .prologue
    .line 264
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #setter for: Landroid/net/sip/SipProfile;->mAutoRegistration:Z
    invoke-static {v0, p1}, Landroid/net/sip/SipProfile;->access$1002(Landroid/net/sip/SipProfile;Z)Z

    .line 265
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;
    .locals 0
    .parameter "displayName"

    .prologue
    .line 239
    iput-object p1, p0, Landroid/net/sip/SipProfile$Builder;->mDisplayName:Ljava/lang/String;

    .line 240
    return-object p0
.end method

.method public setOutboundProxy(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;
    .locals 0
    .parameter "outboundProxy"

    .prologue
    .line 228
    iput-object p1, p0, Landroid/net/sip/SipProfile$Builder;->mProxyAddress:Ljava/lang/String;

    .line 229
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;
    .locals 1
    .parameter "password"

    .prologue
    .line 180
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    invoke-interface {v0, p1}, Ljavax/sip/address/SipURI;->setUserPassword(Ljava/lang/String;)V

    .line 181
    return-object p0
.end method

.method public setPort(I)Landroid/net/sip/SipProfile$Builder;
    .locals 3
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 192
    const v0, 0xffff

    if-gt p1, v0, :cond_0

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_1

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incorrect port arugment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_1
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #setter for: Landroid/net/sip/SipProfile;->mPort:I
    invoke-static {v0, p1}, Landroid/net/sip/SipProfile;->access$402(Landroid/net/sip/SipProfile;I)I

    .line 196
    return-object p0
.end method

.method public setProfileName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;
    .locals 1
    .parameter "name"

    .prologue
    .line 169
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #setter for: Landroid/net/sip/SipProfile;->mProfileName:Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/net/sip/SipProfile;->access$702(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    return-object p0
.end method

.method public setProtocol(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;
    .locals 3
    .parameter "protocol"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 210
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "protocol cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 213
    const-string v0, "UDP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TCP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_1
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #setter for: Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/net/sip/SipProfile;->access$802(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    return-object p0
.end method

.method public setSendKeepAlive(Z)Landroid/net/sip/SipProfile$Builder;
    .locals 1
    .parameter "flag"

    .prologue
    .line 251
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #setter for: Landroid/net/sip/SipProfile;->mSendKeepAlive:Z
    invoke-static {v0, p1}, Landroid/net/sip/SipProfile;->access$902(Landroid/net/sip/SipProfile;Z)Z

    .line 252
    return-object p0
.end method
