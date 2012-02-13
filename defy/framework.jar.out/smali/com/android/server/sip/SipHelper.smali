.class Lcom/android/server/sip/SipHelper;
.super Ljava/lang/Object;
.source "SipHelper.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAddressFactory:Ljavax/sip/address/AddressFactory;

.field private mHeaderFactory:Ljavax/sip/header/HeaderFactory;

.field private mMessageFactory:Ljavax/sip/message/MessageFactory;

.field private mSipProvider:Ljavax/sip/SipProvider;

.field private mSipStack:Ljavax/sip/SipStack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/server/sip/SipHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/sip/SipStack;Ljavax/sip/SipProvider;)V
    .locals 2
    .parameter "sipStack"
    .parameter "sipProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/PeerUnavailableException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sip/SipHelper;->mSipStack:Ljavax/sip/SipStack;

    iput-object p2, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    move-result-object v0

    .local v0, sipFactory:Ljavax/sip/SipFactory;
    invoke-virtual {v0}, Ljavax/sip/SipFactory;->createAddressFactory()Ljavax/sip/address/AddressFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    invoke-virtual {v0}, Ljavax/sip/SipFactory;->createHeaderFactory()Ljavax/sip/header/HeaderFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-virtual {v0}, Ljavax/sip/SipFactory;->createMessageFactory()Ljavax/sip/message/MessageFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    return-void
.end method

.method private createCSeqHeader(Ljava/lang/String;)Ljavax/sip/header/CSeqHeader;
    .locals 6
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x40c3880000000000L

    mul-double/2addr v2, v4

    double-to-long v0, v2

    .local v0, sequence:J
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v2, v0, v1, p1}, Ljavax/sip/header/HeaderFactory;->createCSeqHeader(JLjava/lang/String;)Ljavax/sip/header/CSeqHeader;

    move-result-object v2

    return-object v2
.end method

.method private createCallIdHeader()Ljavax/sip/header/CallIdHeader;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v0}, Ljavax/sip/SipProvider;->getNewCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    return-object v0
.end method

.method private createContactHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ContactHeader;
    .locals 5
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->getListeningPoint()Ljavax/sip/ListeningPoint;

    move-result-object v2

    .local v2, lp:Ljavax/sip/ListeningPoint;
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/sip/SipHelper;->createSipUri(Ljava/lang/String;Ljava/lang/String;Ljavax/sip/ListeningPoint;)Ljavax/sip/address/SipURI;

    move-result-object v1

    .local v1, contactURI:Ljavax/sip/address/SipURI;
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    invoke-interface {v3, v1}, Ljavax/sip/address/AddressFactory;->createAddress(Ljavax/sip/address/URI;)Ljavax/sip/address/Address;

    move-result-object v0

    .local v0, contactAddress:Ljavax/sip/address/Address;
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljavax/sip/address/Address;->setDisplayName(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v3, v0}, Ljavax/sip/header/HeaderFactory;->createContactHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/ContactHeader;

    move-result-object v3

    return-object v3
.end method

.method private createFromHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/FromHeader;
    .locals 2
    .parameter "profile"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getSipAddress()Ljavax/sip/address/Address;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljavax/sip/header/HeaderFactory;->createFromHeader(Ljavax/sip/address/Address;Ljava/lang/String;)Ljavax/sip/header/FromHeader;

    move-result-object v0

    return-object v0
.end method

.method private createMaxForwardsHeader()Ljavax/sip/header/MaxForwardsHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const/16 v1, 0x46

    invoke-interface {v0, v1}, Ljavax/sip/header/HeaderFactory;->createMaxForwardsHeader(I)Ljavax/sip/header/MaxForwardsHeader;

    move-result-object v0

    return-object v0
.end method

.method private createMaxForwardsHeader(I)Ljavax/sip/header/MaxForwardsHeader;
    .locals 1
    .parameter "max"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v0, p1}, Ljavax/sip/header/HeaderFactory;->createMaxForwardsHeader(I)Ljavax/sip/header/MaxForwardsHeader;

    move-result-object v0

    return-object v0
.end method

.method private createRequest(Ljava/lang/String;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;
    .locals 11
    .parameter "requestType"
    .parameter "userProfile"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2, p3}, Lcom/android/server/sip/SipHelper;->createFromHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/FromHeader;

    move-result-object v5

    .local v5, fromHeader:Ljavax/sip/header/FromHeader;
    invoke-direct {p0, p2}, Lcom/android/server/sip/SipHelper;->createToHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ToHeader;

    move-result-object v6

    .local v6, toHeader:Ljavax/sip/header/ToHeader;
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    invoke-virtual {p2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/sip/address/AddressFactory;->createSipURI(Ljava/lang/String;)Ljavax/sip/address/SipURI;

    move-result-object v1

    .local v1, requestURI:Ljavax/sip/address/SipURI;
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createViaHeaders()Ljava/util/List;

    move-result-object v7

    .local v7, viaHeaders:Ljava/util/List;,"Ljava/util/List<Ljavax/sip/header/ViaHeader;>;"
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createCallIdHeader()Ljavax/sip/header/CallIdHeader;

    move-result-object v3

    .local v3, callIdHeader:Ljavax/sip/header/CallIdHeader;
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipHelper;->createCSeqHeader(Ljava/lang/String;)Ljavax/sip/header/CSeqHeader;

    move-result-object v4

    .local v4, cSeqHeader:Ljavax/sip/header/CSeqHeader;
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createMaxForwardsHeader()Ljavax/sip/header/MaxForwardsHeader;

    move-result-object v8

    .local v8, maxForwards:Ljavax/sip/header/MaxForwardsHeader;
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    move-object v2, p1

    invoke-interface/range {v0 .. v8}, Ljavax/sip/message/MessageFactory;->createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;)Ljavax/sip/message/Request;

    move-result-object v9

    .local v9, request:Ljavax/sip/message/Request;
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v1, "User-Agent"

    .end local v1           #requestURI:Ljavax/sip/address/SipURI;
    const-string v2, "SIPAUA/0.1.001"

    invoke-interface {v0, v1, v2}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v10

    .local v10, userAgentHeader:Ljavax/sip/header/Header;
    invoke-interface {v9, v10}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    return-object v9
.end method

.method private createSipUri(Ljava/lang/String;Ljava/lang/String;Ljavax/sip/ListeningPoint;)Ljavax/sip/address/SipURI;
    .locals 4
    .parameter "username"
    .parameter "transport"
    .parameter "lp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    invoke-interface {p3}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljavax/sip/address/AddressFactory;->createSipURI(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/address/SipURI;

    move-result-object v1

    .local v1, uri:Ljavax/sip/address/SipURI;
    :try_start_0
    invoke-interface {p3}, Ljavax/sip/ListeningPoint;->getPort()I

    move-result v2

    invoke-interface {v1, v2}, Ljavax/sip/address/SipURI;->setPort(I)V

    invoke-interface {v1, p2}, Ljavax/sip/address/SipURI;->setTransportParam(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljavax/sip/InvalidArgumentException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private createToHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ToHeader;
    .locals 1
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/sip/SipHelper;->createToHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/ToHeader;

    move-result-object v0

    return-object v0
.end method

.method private createToHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/ToHeader;
    .locals 2
    .parameter "profile"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getSipAddress()Ljavax/sip/address/Address;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljavax/sip/header/HeaderFactory;->createToHeader(Ljavax/sip/address/Address;Ljava/lang/String;)Ljavax/sip/header/ToHeader;

    move-result-object v0

    return-object v0
.end method

.method private createViaHeaders()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavax/sip/header/ViaHeader;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, viaHeaders:Ljava/util/List;,"Ljava/util/List<Ljavax/sip/header/ViaHeader;>;"
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->getListeningPoint()Ljavax/sip/ListeningPoint;

    move-result-object v0

    .local v0, lp:Ljavax/sip/ListeningPoint;
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v0}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljavax/sip/ListeningPoint;->getPort()I

    move-result v5

    invoke-interface {v0}, Ljavax/sip/ListeningPoint;->getTransport()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/sip/header/HeaderFactory;->createViaHeader(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ViaHeader;

    move-result-object v1

    .local v1, viaHeader:Ljavax/sip/header/ViaHeader;
    invoke-interface {v1}, Ljavax/sip/header/ViaHeader;->setRPort()V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method private createWildcardContactHeader()Ljavax/sip/header/ContactHeader;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v1}, Ljavax/sip/header/HeaderFactory;->createContactHeader()Ljavax/sip/header/ContactHeader;

    move-result-object v0

    .local v0, contactHeader:Ljavax/sip/header/ContactHeader;
    invoke-interface {v0}, Ljavax/sip/header/ContactHeader;->setWildCard()V

    return-object v0
.end method

.method public static getCallId(Ljava/util/EventObject;)Ljava/lang/String;
    .locals 5
    .parameter "event"

    .prologue
    if-nez p0, :cond_0

    const/4 v4, 0x0

    .end local p0
    :goto_0
    return-object v4

    .restart local p0
    :cond_0
    instance-of v4, p0, Ljavax/sip/RequestEvent;

    if-eqz v4, :cond_1

    check-cast p0, Ljavax/sip/RequestEvent;

    .end local p0
    invoke-virtual {p0}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .restart local p0
    :cond_1
    instance-of v4, p0, Ljavax/sip/ResponseEvent;

    if-eqz v4, :cond_2

    check-cast p0, Ljavax/sip/ResponseEvent;

    .end local p0
    invoke-virtual {p0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .restart local p0
    :cond_2
    instance-of v4, p0, Ljavax/sip/DialogTerminatedEvent;

    if-eqz v4, :cond_3

    move-object v0, p0

    check-cast v0, Ljavax/sip/DialogTerminatedEvent;

    move-object v4, v0

    invoke-virtual {v4}, Ljavax/sip/DialogTerminatedEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    .local v1, dialog:Ljavax/sip/Dialog;
    check-cast p0, Ljavax/sip/DialogTerminatedEvent;

    .end local p0
    invoke-virtual {p0}, Ljavax/sip/DialogTerminatedEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/Dialog;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .end local v1           #dialog:Ljavax/sip/Dialog;
    .restart local p0
    :cond_3
    instance-of v4, p0, Ljavax/sip/TransactionTerminatedEvent;

    if-eqz v4, :cond_5

    move-object v0, p0

    check-cast v0, Ljavax/sip/TransactionTerminatedEvent;

    move-object v2, v0

    .local v2, e:Ljavax/sip/TransactionTerminatedEvent;
    invoke-virtual {v2}, Ljavax/sip/TransactionTerminatedEvent;->isServerTransaction()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Ljavax/sip/TransactionTerminatedEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v4

    :goto_1
    invoke-static {v4}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljavax/sip/TransactionTerminatedEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    move-result-object v4

    goto :goto_1

    .end local v2           #e:Ljavax/sip/TransactionTerminatedEvent;
    :cond_5
    invoke-virtual {p0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v3

    .local v3, source:Ljava/lang/Object;
    instance-of v4, v3, Ljavax/sip/Transaction;

    if-eqz v4, :cond_6

    check-cast v3, Ljavax/sip/Transaction;

    .end local v3           #source:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .restart local v3       #source:Ljava/lang/Object;
    :cond_6
    instance-of v4, v3, Ljavax/sip/Dialog;

    if-eqz v4, :cond_7

    check-cast v3, Ljavax/sip/Dialog;

    .end local v3           #source:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/Dialog;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .restart local v3       #source:Ljava/lang/Object;
    :cond_7
    const-string v4, ""

    goto :goto_0
.end method

.method private static getCallId(Ljavax/sip/Dialog;)Ljava/lang/String;
    .locals 1
    .parameter "dialog"

    .prologue
    invoke-interface {p0}, Ljavax/sip/Dialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCallId(Ljavax/sip/Transaction;)Ljava/lang/String;
    .locals 1
    .parameter "transaction"

    .prologue
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljavax/sip/Transaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static getCallId(Ljavax/sip/message/Message;)Ljava/lang/String;
    .locals 2
    .parameter "message"

    .prologue
    const-string v1, "Call-ID"

    invoke-interface {p0, v1}, Ljavax/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/CallIdHeader;

    .local v0, callIdHeader:Ljavax/sip/header/CallIdHeader;
    invoke-interface {v0}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getListeningPoint()Ljavax/sip/ListeningPoint;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    const-string v3, "UDP"

    invoke-interface {v2, v3}, Ljavax/sip/SipProvider;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v0

    .local v0, lp:Ljavax/sip/ListeningPoint;
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    const-string v3, "TCP"

    invoke-interface {v2, v3}, Ljavax/sip/SipProvider;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v2}, Ljavax/sip/SipProvider;->getListeningPoints()[Ljavax/sip/ListeningPoint;

    move-result-object v1

    .local v1, lps:[Ljavax/sip/ListeningPoint;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .end local v1           #lps:[Ljavax/sip/ListeningPoint;
    :cond_1
    if-nez v0, :cond_2

    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "no listening point is available"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    return-object v0
.end method

.method private getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;
    .locals 3
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v1

    .local v1, transaction:Ljavax/sip/ServerTransaction;
    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    .local v0, request:Ljavax/sip/message/Request;
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v2, v0}, Ljavax/sip/SipProvider;->getNewServerTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ServerTransaction;

    move-result-object v2

    .end local v0           #request:Ljavax/sip/message/Request;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v1

    goto :goto_0
.end method


# virtual methods
.method public handleChallenge(Ljavax/sip/ResponseEvent;Lgov/nist/javax/sip/clientauthutils/AccountManager;)Ljavax/sip/ClientTransaction;
    .locals 6
    .parameter "responseEvent"
    .parameter "accountManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mSipStack:Ljavax/sip/SipStack;

    check-cast v3, Lgov/nist/javax/sip/SipStackExt;

    iget-object v4, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v3, p2, v4}, Lgov/nist/javax/sip/SipStackExt;->getAuthenticationHelper(Lgov/nist/javax/sip/clientauthutils/AccountManager;Ljavax/sip/header/HeaderFactory;)Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;

    move-result-object v0

    .local v0, authenticationHelper:Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    move-result-object v2

    .local v2, tid:Ljavax/sip/ClientTransaction;
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    const/4 v5, 0x5

    invoke-interface {v0, v3, v2, v4, v5}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;->handleChallenge(Ljavax/sip/message/Response;Ljavax/sip/ClientTransaction;Ljavax/sip/SipProvider;I)Ljavax/sip/ClientTransaction;

    move-result-object v1

    .local v1, ct:Ljavax/sip/ClientTransaction;
    sget-object v3, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send request with challenge response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljavax/sip/ClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljavax/sip/ClientTransaction;->sendRequest()V

    return-object v1
.end method

.method public sendBye(Ljavax/sip/Dialog;)V
    .locals 4
    .parameter "dialog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const-string v1, "BYE"

    invoke-interface {p1, v1}, Ljavax/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v0

    .local v0, byeRequest:Ljavax/sip/message/Request;
    sget-object v1, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send BYE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v1, v0}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v1

    invoke-interface {p1, v1}, Ljavax/sip/Dialog;->sendRequest(Ljavax/sip/ClientTransaction;)V

    return-void
.end method

.method public sendCancel(Ljavax/sip/ClientTransaction;)V
    .locals 4
    .parameter "inviteTransaction"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Ljavax/sip/ClientTransaction;->createCancel()Ljavax/sip/message/Request;

    move-result-object v0

    .local v0, cancelRequest:Ljavax/sip/message/Request;
    sget-object v1, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send CANCEL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v1, v0}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/ClientTransaction;->sendRequest()V

    return-void
.end method

.method public sendInvite(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/ClientTransaction;
    .locals 15
    .parameter "caller"
    .parameter "callee"
    .parameter "sessionDescription"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    :try_start_0
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/server/sip/SipHelper;->createFromHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/FromHeader;

    move-result-object v8

    .local v8, fromHeader:Ljavax/sip/header/FromHeader;
    move-object v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/sip/SipHelper;->createToHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ToHeader;

    move-result-object v9

    .local v9, toHeader:Ljavax/sip/header/ToHeader;
    invoke-virtual/range {p2 .. p2}, Landroid/net/sip/SipProfile;->getUri()Ljavax/sip/address/SipURI;

    move-result-object v4

    .local v4, requestURI:Ljavax/sip/address/SipURI;
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createViaHeaders()Ljava/util/List;

    move-result-object v10

    .local v10, viaHeaders:Ljava/util/List;,"Ljava/util/List<Ljavax/sip/header/ViaHeader;>;"
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createCallIdHeader()Ljavax/sip/header/CallIdHeader;

    move-result-object v6

    .local v6, callIdHeader:Ljavax/sip/header/CallIdHeader;
    const-string v3, "INVITE"

    invoke-direct {p0, v3}, Lcom/android/server/sip/SipHelper;->createCSeqHeader(Ljava/lang/String;)Ljavax/sip/header/CSeqHeader;

    move-result-object v7

    .local v7, cSeqHeader:Ljavax/sip/header/CSeqHeader;
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createMaxForwardsHeader()Ljavax/sip/header/MaxForwardsHeader;

    move-result-object v11

    .local v11, maxForwards:Ljavax/sip/header/MaxForwardsHeader;
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    const-string v5, "INVITE"

    invoke-interface/range {v3 .. v11}, Ljavax/sip/message/MessageFactory;->createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;)Ljavax/sip/message/Request;

    move-result-object v14

    .local v14, request:Ljavax/sip/message/Request;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/sip/SipHelper;->createContactHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ContactHeader;

    move-result-object v3

    invoke-interface {v14, v3}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v4, "application"

    .end local v4           #requestURI:Ljavax/sip/address/SipURI;
    const-string v5, "sdp"

    invoke-interface {v3, v4, v5}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    move-result-object v3

    move-object v0, v14

    move-object/from16 v1, p3

    move-object v2, v3

    invoke-interface {v0, v1, v2}, Ljavax/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v3, v14}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v12

    .local v12, clientTransaction:Ljavax/sip/ClientTransaction;
    sget-object v3, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send INVITE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v12}, Ljavax/sip/ClientTransaction;->sendRequest()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v12

    .end local v6           #callIdHeader:Ljavax/sip/header/CallIdHeader;
    .end local v7           #cSeqHeader:Ljavax/sip/header/CSeqHeader;
    .end local v8           #fromHeader:Ljavax/sip/header/FromHeader;
    .end local v9           #toHeader:Ljavax/sip/header/ToHeader;
    .end local v10           #viaHeaders:Ljava/util/List;,"Ljava/util/List<Ljavax/sip/header/ViaHeader;>;"
    .end local v11           #maxForwards:Ljavax/sip/header/MaxForwardsHeader;
    .end local v12           #clientTransaction:Ljavax/sip/ClientTransaction;
    .end local v14           #request:Ljavax/sip/message/Request;
    :catch_0
    move-exception v3

    move-object v13, v3

    .local v13, e:Ljava/text/ParseException;
    new-instance v3, Ljavax/sip/SipException;

    const-string v4, "sendInvite()"

    invoke-direct {v3, v4, v13}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public sendInviteAck(Ljavax/sip/ResponseEvent;Ljavax/sip/Dialog;)V
    .locals 7
    .parameter "event"
    .parameter "dialog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v3

    .local v3, response:Ljavax/sip/message/Response;
    const-string v4, "CSeq"

    invoke-interface {v3, v4}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object p0

    .end local p0
    check-cast p0, Ljavax/sip/header/CSeqHeader;

    invoke-interface {p0}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v1

    .local v1, cseq:J
    invoke-interface {p2, v1, v2}, Ljavax/sip/Dialog;->createAck(J)Ljavax/sip/message/Request;

    move-result-object v0

    .local v0, ack:Ljavax/sip/message/Request;
    sget-object v4, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send ACK: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2, v0}, Ljavax/sip/Dialog;->sendAck(Ljavax/sip/message/Request;)V

    return-void
.end method

.method public sendInviteBusyHere(Ljavax/sip/RequestEvent;Ljavax/sip/ServerTransaction;)V
    .locals 6
    .parameter "event"
    .parameter "inviteTransaction"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    .local v1, request:Ljavax/sip/message/Request;
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    const/16 v4, 0x1e6

    invoke-interface {v3, v4, v1}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    move-result-object v2

    .local v2, response:Ljavax/sip/message/Response;
    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljavax/sip/ServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v3

    sget-object v4, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    if-eq v3, v4, :cond_1

    sget-object v3, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send BUSY HERE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2, v2}, Ljavax/sip/ServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    .end local v1           #request:Ljavax/sip/message/Request;
    .end local v2           #response:Ljavax/sip/message/Response;
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/text/ParseException;
    new-instance v3, Ljavax/sip/SipException;

    const-string v4, "sendInviteBusyHere()"

    invoke-direct {v3, v4, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public sendInviteOk(Ljavax/sip/RequestEvent;Landroid/net/sip/SipProfile;Ljava/lang/String;Ljavax/sip/ServerTransaction;)Ljavax/sip/ServerTransaction;
    .locals 6
    .parameter "event"
    .parameter "localProfile"
    .parameter "sessionDescription"
    .parameter "inviteTransaction"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    .local v1, request:Ljavax/sip/message/Request;
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    const/16 v4, 0xc8

    invoke-interface {v3, v4, v1}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    move-result-object v2

    .local v2, response:Ljavax/sip/message/Response;
    invoke-direct {p0, p2}, Lcom/android/server/sip/SipHelper;->createContactHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ContactHeader;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/sip/message/Response;->addHeader(Ljavax/sip/header/Header;)V

    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v4, "application"

    const-string v5, "sdp"

    invoke-interface {v3, v4, v5}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    move-result-object v3

    invoke-interface {v2, p3, v3}, Ljavax/sip/message/Response;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    if-nez p4, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    move-result-object p4

    :cond_0
    invoke-interface {p4}, Ljavax/sip/ServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v3

    sget-object v4, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    if-eq v3, v4, :cond_1

    sget-object v3, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send OK: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p4, v2}, Ljavax/sip/ServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p4

    .end local v1           #request:Ljavax/sip/message/Request;
    .end local v2           #response:Ljavax/sip/message/Response;
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/text/ParseException;
    new-instance v3, Ljavax/sip/SipException;

    const-string v4, "sendInviteOk()"

    invoke-direct {v3, v4, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public sendInviteRequestTerminated(Ljavax/sip/message/Request;Ljavax/sip/ServerTransaction;)V
    .locals 5
    .parameter "inviteRequest"
    .parameter "inviteTransaction"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    const/16 v3, 0x1e7

    invoke-interface {v2, v3, p1}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    move-result-object v1

    .local v1, response:Ljavax/sip/message/Response;
    sget-object v2, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2, v1}, Ljavax/sip/ServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .end local v1           #response:Ljavax/sip/message/Response;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/text/ParseException;
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "sendInviteRequestTerminated()"

    invoke-direct {v2, v3, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public sendKeepAlive(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/ClientTransaction;
    .locals 5
    .parameter "userProfile"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    :try_start_0
    const-string v3, "OPTIONS"

    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/sip/SipHelper;->createRequest(Ljava/lang/String;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v2

    .local v2, request:Ljavax/sip/message/Request;
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v3, v2}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v0

    .local v0, clientTransaction:Ljavax/sip/ClientTransaction;
    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->sendRequest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .end local v0           #clientTransaction:Ljavax/sip/ClientTransaction;
    .end local v2           #request:Ljavax/sip/message/Request;
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljavax/sip/SipException;

    const-string v4, "sendKeepAlive()"

    invoke-direct {v3, v4, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public sendRegister(Landroid/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/ClientTransaction;
    .locals 5
    .parameter "userProfile"
    .parameter "tag"
    .parameter "expiry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    :try_start_0
    const-string v3, "REGISTER"

    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/sip/SipHelper;->createRequest(Ljava/lang/String;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v2

    .local v2, request:Ljavax/sip/message/Request;
    if-nez p3, :cond_0

    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createWildcardContactHeader()Ljavax/sip/header/ContactHeader;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    :goto_0
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v3, p3}, Ljavax/sip/header/HeaderFactory;->createExpiresHeader(I)Ljavax/sip/header/ExpiresHeader;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v3, v2}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v0

    .local v0, clientTransaction:Ljavax/sip/ClientTransaction;
    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->sendRequest()V

    return-object v0

    .end local v0           #clientTransaction:Ljavax/sip/ClientTransaction;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipHelper;->createContactHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ContactHeader;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2           #request:Ljavax/sip/message/Request;
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/text/ParseException;
    new-instance v3, Ljavax/sip/SipException;

    const-string v4, "sendRegister()"

    invoke-direct {v3, v4, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public sendReinvite(Ljavax/sip/Dialog;Ljava/lang/String;)Ljavax/sip/ClientTransaction;
    .locals 6
    .parameter "dialog"
    .parameter "sessionDescription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    :try_start_0
    const-string v3, "INVITE"

    invoke-interface {p1, v3}, Ljavax/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v2

    .local v2, request:Ljavax/sip/message/Request;
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v4, "application"

    const-string v5, "sdp"

    invoke-interface {v3, v4, v5}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Ljavax/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v3, v2}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v0

    .local v0, clientTransaction:Ljavax/sip/ClientTransaction;
    sget-object v3, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send RE-INVITE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v0}, Ljavax/sip/Dialog;->sendRequest(Ljavax/sip/ClientTransaction;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .end local v0           #clientTransaction:Ljavax/sip/ClientTransaction;
    .end local v2           #request:Ljavax/sip/message/Request;
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/text/ParseException;
    new-instance v3, Ljavax/sip/SipException;

    const-string v4, "sendReinvite()"

    invoke-direct {v3, v4, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public sendResponse(Ljavax/sip/RequestEvent;I)V
    .locals 5
    .parameter "event"
    .parameter "responseCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    move-result-object v1

    .local v1, response:Ljavax/sip/message/Response;
    sget-object v2, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    move-result-object v2

    invoke-interface {v2, v1}, Ljavax/sip/ServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .end local v1           #response:Ljavax/sip/message/Response;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/text/ParseException;
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "sendResponse()"

    invoke-direct {v2, v3, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public sendRinging(Ljavax/sip/RequestEvent;Ljava/lang/String;)Ljavax/sip/ServerTransaction;
    .locals 8
    .parameter "event"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    .local v1, request:Ljavax/sip/message/Request;
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    move-result-object v4

    .local v4, transaction:Ljavax/sip/ServerTransaction;
    iget-object v5, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    const/16 v6, 0xb4

    invoke-interface {v5, v6, v1}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    move-result-object v2

    .local v2, response:Ljavax/sip/message/Response;
    const-string v5, "To"

    invoke-interface {v2, v5}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v3

    check-cast v3, Ljavax/sip/header/ToHeader;

    .local v3, toHeader:Ljavax/sip/header/ToHeader;
    invoke-interface {v3, p2}, Ljavax/sip/header/ToHeader;->setTag(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljavax/sip/message/Response;->addHeader(Ljavax/sip/header/Header;)V

    sget-object v5, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send RINGING: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4, v2}, Ljavax/sip/ServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .end local v1           #request:Ljavax/sip/message/Request;
    .end local v2           #response:Ljavax/sip/message/Response;
    .end local v3           #toHeader:Ljavax/sip/header/ToHeader;
    .end local v4           #transaction:Ljavax/sip/ServerTransaction;
    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/text/ParseException;
    new-instance v5, Ljavax/sip/SipException;

    const-string v6, "sendRinging()"

    invoke-direct {v5, v6, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method
