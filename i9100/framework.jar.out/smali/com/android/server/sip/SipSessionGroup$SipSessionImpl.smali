.class Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
.super Landroid/net/sip/ISipSession$Stub;
.source "SipSessionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipSessionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SipSessionImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;
    }
.end annotation


# instance fields
.field mAuthenticationRetryCount:I

.field mClientTransaction:Ljavax/sip/ClientTransaction;

.field mDialog:Ljavax/sip/Dialog;

.field mInCall:Z

.field mInviteReceived:Ljavax/sip/RequestEvent;

.field mPeerProfile:Landroid/net/sip/SipProfile;

.field mPeerSessionDescription:Ljava/lang/String;

.field mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

.field mRPort:I

.field mReRegisterFlag:Z

.field mServerTransaction:Ljavax/sip/ServerTransaction;

.field mState:I

.field mTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

.field final synthetic this$0:Lcom/android/server/sip/SipSessionGroup;


# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V
    .locals 2
    .parameter
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 435
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-direct {p0}, Landroid/net/sip/ISipSession$Stub;-><init>()V

    .line 387
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-direct {v0}, Lcom/android/server/sip/SipSessionListenerProxy;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    .line 388
    iput v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 399
    iput-boolean v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReRegisterFlag:Z

    .line 436
    invoke-virtual {p0, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 437
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 385
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 385
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 385
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processCommand(Ljava/util/EventObject;)V

    return-void
.end method

.method private cancelSessionTimer()V
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->cancel()V

    .line 1154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    .line 1156
    :cond_0
    return-void
.end method

.method private createErrorMessage(Ljavax/sip/message/Response;)Ljava/lang/String;
    .locals 4
    .parameter "response"

    .prologue
    .line 1159
    const-string v0, "%s (%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljavax/sip/message/Response;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private crossDomainAuthenticationRequired(Ljavax/sip/message/Response;)Z
    .locals 3
    .parameter "response"

    .prologue
    .line 887
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getRealmFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;

    move-result-object v0

    .line 888
    .local v0, realm:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .line 889
    :cond_0
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->access$1400(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doCommandAsync(Ljava/util/EventObject;)V
    .locals 3
    .parameter "command"

    .prologue
    .line 511
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;-><init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)V

    const-string v2, "SipSessionAsyncCmdThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 521
    return-void
.end method

.method private endCallNormally()V
    .locals 1

    .prologue
    .line 1171
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1172
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onCallEnded(Landroid/net/sip/ISipSession;)V

    .line 1173
    return-void
.end method

.method private endCallOnBusy()V
    .locals 1

    .prologue
    .line 1181
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1182
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onCallBusy(Landroid/net/sip/ISipSession;)V

    .line 1183
    return-void
.end method

.method private endCallOnError(ILjava/lang/String;)V
    .locals 1
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 1176
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1177
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy;->onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 1178
    return-void
.end method

.method private establishCall()V
    .locals 2

    .prologue
    .line 1164
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    .line 1166
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    .line 1167
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/sip/SipSessionListenerProxy;->onCallEstablished(Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    .line 1168
    return-void
.end method

.method private getAccountManager()Lgov/nist/javax/sip/clientauthutils/AccountManager;
    .locals 1

    .prologue
    .line 893
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;-><init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    return-object v0
.end method

.method private getErrorCode(I)I
    .locals 1
    .parameter "responseStatusCode"

    .prologue
    .line 1213
    sparse-switch p1, :sswitch_data_0

    .line 1231
    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_0

    .line 1232
    const/4 v0, -0x4

    .line 1234
    :goto_0
    return v0

    .line 1220
    :sswitch_0
    const/4 v0, -0x7

    goto :goto_0

    .line 1225
    :sswitch_1
    const/4 v0, -0x6

    goto :goto_0

    .line 1228
    :sswitch_2
    const/4 v0, -0x5

    goto :goto_0

    .line 1234
    :cond_0
    const/4 v0, -0x2

    goto :goto_0

    .line 1213
    nop

    :sswitch_data_0
    .sparse-switch
        0x193 -> :sswitch_0
        0x194 -> :sswitch_0
        0x196 -> :sswitch_0
        0x198 -> :sswitch_2
        0x19a -> :sswitch_0
        0x19e -> :sswitch_1
        0x1e0 -> :sswitch_0
        0x1e4 -> :sswitch_1
        0x1e5 -> :sswitch_1
        0x1e8 -> :sswitch_0
    .end sparse-switch
.end method

.method private getErrorCode(Ljava/lang/Throwable;)I
    .locals 2
    .parameter "exception"

    .prologue
    .line 1249
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1250
    .local v0, message:Ljava/lang/String;
    instance-of v1, p1, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_0

    .line 1251
    const/16 v1, -0xc

    .line 1255
    :goto_0
    return v1

    .line 1252
    :cond_0
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 1253
    const/4 v1, -0x1

    goto :goto_0

    .line 1255
    :cond_1
    const/4 v1, -0x4

    goto :goto_0
.end method

.method private getExpiryTime(Ljavax/sip/message/Response;)I
    .locals 3
    .parameter "response"

    .prologue
    .line 774
    const/16 v0, 0xe10

    .line 775
    .local v0, expires:I
    const-string v2, "Expires"

    invoke-interface {p1, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/ExpiresHeader;

    .line 777
    .local v1, expiresHeader:Ljavax/sip/header/ExpiresHeader;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljavax/sip/header/ExpiresHeader;->getExpires()I

    move-result v0

    .line 778
    :cond_0
    const-string v2, "Min-Expires"

    invoke-interface {p1, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    .end local v1           #expiresHeader:Ljavax/sip/header/ExpiresHeader;
    check-cast v1, Ljavax/sip/header/ExpiresHeader;

    .line 780
    .restart local v1       #expiresHeader:Ljavax/sip/header/ExpiresHeader;
    if-eqz v1, :cond_1

    .line 781
    invoke-interface {v1}, Ljavax/sip/header/ExpiresHeader;->getExpires()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 783
    :cond_1
    return v0
.end method

.method private getNonceFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;
    .locals 3
    .parameter "response"

    .prologue
    .line 925
    const-string v2, "WWW-Authenticate"

    invoke-interface {p1, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/WWWAuthenticate;

    .line 927
    .local v1, wwwAuth:Lgov/nist/javax/sip/header/WWWAuthenticate;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/WWWAuthenticate;->getNonce()Ljava/lang/String;

    move-result-object v2

    .line 930
    :goto_0
    return-object v2

    .line 928
    :cond_0
    const-string v2, "Proxy-Authenticate"

    invoke-interface {p1, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    .line 930
    .local v0, proxyAuth:Lgov/nist/javax/sip/header/ProxyAuthenticate;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ProxyAuthenticate;->getNonce()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getRPortFromResponse(Ljavax/sip/message/Response;)I
    .locals 3
    .parameter "response"

    .prologue
    .line 823
    const-string v2, "Via"

    invoke-interface {p1, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object p0

    .end local p0
    check-cast p0, Ljavax/sip/header/ViaHeader;

    move-object v0, p0

    check-cast v0, Ljavax/sip/header/ViaHeader;

    move-object v1, v0

    .line 825
    .local v1, viaHeader:Ljavax/sip/header/ViaHeader;
    if-nez v1, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    invoke-interface {v1}, Ljavax/sip/header/ViaHeader;->getRPort()I

    move-result v2

    goto :goto_0
.end method

.method private getRealmFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;
    .locals 3
    .parameter "response"

    .prologue
    .line 916
    const-string v2, "WWW-Authenticate"

    invoke-interface {p1, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/WWWAuthenticate;

    .line 918
    .local v1, wwwAuth:Lgov/nist/javax/sip/header/WWWAuthenticate;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/WWWAuthenticate;->getRealm()Ljava/lang/String;

    move-result-object v2

    .line 921
    :goto_0
    return-object v2

    .line 919
    :cond_0
    const-string v2, "Proxy-Authenticate"

    invoke-interface {p1, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    .line 921
    .local v0, proxyAuth:Lgov/nist/javax/sip/header/ProxyAuthenticate;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ProxyAuthenticate;->getRealm()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .parameter "exception"

    .prologue
    .line 1240
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1241
    .local v0, cause:Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_0

    .line 1242
    move-object p1, v0

    .line 1243
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 1245
    :cond_0
    return-object p1
.end method

.method private getTransaction()Ljavax/sip/Transaction;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 496
    :goto_0
    return-object v0

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    goto :goto_0

    .line 496
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleAuthentication(Ljavax/sip/ResponseEvent;)Z
    .locals 5
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 858
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v1

    .line 859
    .local v1, response:Ljavax/sip/message/Response;
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getNonceFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;

    move-result-object v0

    .line 860
    .local v0, nonce:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 861
    const/4 v2, -0x2

    const-string/jumbo v3, "server does not provide challenge"

    invoke-direct {p0, v2, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    move v2, v4

    .line 882
    :goto_0
    return v2

    .line 864
    :cond_0
    iget v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 865
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getAccountManager()Lgov/nist/javax/sip/clientauthutils/AccountManager;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/sip/SipHelper;->handleChallenge(Ljavax/sip/ResponseEvent;Lgov/nist/javax/sip/clientauthutils/AccountManager;)Ljavax/sip/ClientTransaction;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 867
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 868
    iget v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    .line 869
    #calls: Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z
    invoke-static {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->access$200(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 870
    const-string v2, "SipSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   authentication retry count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 875
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->crossDomainAuthenticationRequired(Ljavax/sip/message/Response;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 876
    const/16 v2, -0xb

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getRealmFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    :goto_1
    move v2, v4

    .line 882
    goto :goto_0

    .line 879
    :cond_3
    const/4 v2, -0x8

    const-string v3, "incorrect username or password"

    invoke-direct {p0, v2, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    goto :goto_1
.end method

.method private inCall(Ljava/util/EventObject;)Z
    .locals 6
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1115
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$1600()Ljava/util/EventObject;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 1117
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    invoke-virtual {v2, v3}, Lcom/android/server/sip/SipHelper;->sendBye(Ljavax/sip/Dialog;)V

    .line 1118
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    move v2, v5

    .line 1140
    .end local p1
    :goto_0
    return v2

    .line 1120
    .restart local p1
    :cond_0
    const-string v2, "INVITE"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v2, p1}, Lcom/android/server/sip/SipSessionGroup;->access$400(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1122
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1123
    move-object v0, p1

    check-cast v0, Ljavax/sip/RequestEvent;

    move-object v1, v0

    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    .line 1124
    .local v1, event:Ljavax/sip/RequestEvent;
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v3

    #calls: Lcom/android/server/sip/SipSessionGroup;->extractContent(Ljavax/sip/message/Message;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/sip/SipSessionGroup;->access$700(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    .line 1125
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    .line 1126
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/server/sip/SipSessionListenerProxy;->onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    move v2, v5

    .line 1127
    goto :goto_0

    .line 1128
    .end local v1           #event:Ljavax/sip/RequestEvent;
    :cond_1
    const-string v2, "BYE"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v2, p1}, Lcom/android/server/sip/SipSessionGroup;->access$400(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1129
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v2

    check-cast p1, Ljavax/sip/RequestEvent;

    .end local p1
    const/16 v3, 0xc8

    invoke-virtual {v2, p1, v3}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    .line 1130
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    move v2, v5

    .line 1131
    goto :goto_0

    .line 1132
    .restart local p1
    :cond_2
    instance-of v2, p1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    if-eqz v2, :cond_3

    .line 1134
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1135
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    move-object v0, p1

    check-cast v0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getSessionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/android/server/sip/SipHelper;->sendReinvite(Ljavax/sip/Dialog;Ljava/lang/String;)Ljavax/sip/ClientTransaction;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 1137
    check-cast p1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    .end local p1
    invoke-virtual {p1}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getTimeout()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    move v2, v5

    .line 1138
    goto :goto_0

    .line 1140
    .restart local p1
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private incomingCall(Ljava/util/EventObject;)Z
    .locals 8
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 970
    instance-of v2, p1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    if-eqz v2, :cond_0

    .line 972
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 973
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->access$1400(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v5

    move-object v0, p1

    check-cast v0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getSessionDescription()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/android/server/sip/SipHelper;->sendInviteOk(Ljavax/sip/RequestEvent;Landroid/net/sip/SipProfile;Ljava/lang/String;Ljavax/sip/ServerTransaction;)Ljavax/sip/ServerTransaction;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    .line 977
    check-cast p1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    .end local p1
    invoke-virtual {p1}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getTimeout()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    move v2, v7

    .line 992
    :goto_0
    return v2

    .line 979
    .restart local p1
    :cond_0
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$1600()Ljava/util/EventObject;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 980
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/sip/SipHelper;->sendInviteBusyHere(Ljavax/sip/RequestEvent;Ljavax/sip/ServerTransaction;)V

    .line 982
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    move v2, v7

    .line 983
    goto :goto_0

    .line 984
    :cond_1
    const-string v2, "CANCEL"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v2, p1}, Lcom/android/server/sip/SipSessionGroup;->access$400(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 985
    move-object v0, p1

    check-cast v0, Ljavax/sip/RequestEvent;

    move-object v1, v0

    .line 986
    .local v1, event:Ljavax/sip/RequestEvent;
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-virtual {v2, v1, v3}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    .line 987
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    invoke-virtual {v3}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/sip/SipHelper;->sendInviteRequestTerminated(Ljavax/sip/message/Request;Ljavax/sip/ServerTransaction;)V

    .line 989
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    move v2, v7

    .line 990
    goto :goto_0

    .line 992
    .end local v1           #event:Ljavax/sip/RequestEvent;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private incomingCallToInCall(Ljava/util/EventObject;)Z
    .locals 2
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 998
    const-string v0, "ACK"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->access$400(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 999
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->establishCall()V

    move v0, v1

    .line 1006
    :goto_0
    return v0

    .line 1001
    :cond_0
    const-string v0, "CANCEL"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->access$400(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1004
    goto :goto_0

    .line 1006
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCurrentTransaction(Ljavax/sip/TransactionTerminatedEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const-string v5, "SipSession"

    .line 704
    invoke-virtual {p1}, Ljavax/sip/TransactionTerminatedEvent;->isServerTransaction()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    move-object v0, v2

    .line 707
    .local v0, current:Ljavax/sip/Transaction;
    :goto_0
    invoke-virtual {p1}, Ljavax/sip/TransactionTerminatedEvent;->isServerTransaction()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljavax/sip/TransactionTerminatedEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v2

    move-object v1, v2

    .line 711
    .local v1, target:Ljavax/sip/Transaction;
    :goto_1
    if-eq v0, v1, :cond_2

    iget v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    .line 712
    const-string v2, "SipSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not the current transaction; current="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->toString(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", target="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->toString(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const/4 v2, 0x0

    .line 720
    :goto_2
    return v2

    .line 704
    .end local v0           #current:Ljavax/sip/Transaction;
    .end local v1           #target:Ljavax/sip/Transaction;
    :cond_0
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    move-object v0, v2

    goto :goto_0

    .line 707
    .restart local v0       #current:Ljavax/sip/Transaction;
    :cond_1
    invoke-virtual {p1}, Ljavax/sip/TransactionTerminatedEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    move-result-object v2

    move-object v1, v2

    goto :goto_1

    .line 715
    .restart local v1       #target:Ljavax/sip/Transaction;
    :cond_2
    if-eqz v0, :cond_3

    .line 716
    const-string v2, "SipSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "transaction terminated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->toString(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 717
    goto :goto_2

    :cond_3
    move v2, v4

    .line 720
    goto :goto_2
.end method

.method private keepAliveProcess(Ljava/util/EventObject;)Z
    .locals 3
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 787
    instance-of v0, p1, Lcom/android/server/sip/SipSessionGroup$OptionsCommand;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->access$1400(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sip/SipHelper;->sendKeepAlive(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/ClientTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 790
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 791
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #calls: Lcom/android/server/sip/SipSessionGroup;->addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    invoke-static {v0, p0}, Lcom/android/server/sip/SipSessionGroup;->access$800(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 792
    const/4 v0, 0x1

    .line 796
    :goto_0
    return v0

    .line 793
    :cond_0
    instance-of v0, p1, Ljavax/sip/ResponseEvent;

    if-eqz v0, :cond_1

    .line 794
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->parseOptionsResult(Ljava/util/EventObject;)Z

    move-result v0

    goto :goto_0

    .line 796
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onError(ILjava/lang/String;)V
    .locals 1
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 1186
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    .line 1187
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1193
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallOnError(ILjava/lang/String;)V

    .line 1195
    :goto_0
    return-void

    .line 1190
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationFailed(ILjava/lang/String;)V

    goto :goto_0

    .line 1187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onError(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 1199
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 1200
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(Ljava/lang/Throwable;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    .line 1201
    return-void
.end method

.method private onError(Ljavax/sip/message/Response;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 1204
    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v0

    .line 1205
    .local v0, statusCode:I
    iget-boolean v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    if-nez v1, :cond_0

    const/16 v1, 0x1e6

    if-ne v0, v1, :cond_0

    .line 1206
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallOnBusy()V

    .line 1210
    :goto_0
    return-void

    .line 1208
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->createErrorMessage(Ljavax/sip/message/Response;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private onRegistrationDone(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 1260
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1261
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V

    .line 1262
    return-void
.end method

.method private onRegistrationFailed(ILjava/lang/String;)V
    .locals 1
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 1265
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1266
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 1267
    return-void
.end method

.method private onRegistrationFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 1270
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 1271
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(Ljava/lang/Throwable;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationFailed(ILjava/lang/String;)V

    .line 1273
    return-void
.end method

.method private onRegistrationFailed(Ljavax/sip/message/Response;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 1276
    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v0

    .line 1277
    .local v0, statusCode:I
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->createErrorMessage(Ljavax/sip/message/Response;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationFailed(ILjava/lang/String;)V

    .line 1279
    return-void
.end method

.method private outgoingCall(Ljava/util/EventObject;)Z
    .locals 8
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "INVITE"

    .line 1010
    const-string v4, "INVITE"

    #calls: Lcom/android/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v7, p1}, Lcom/android/server/sip/SipSessionGroup;->access$1900(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1011
    move-object v0, p1

    check-cast v0, Ljavax/sip/ResponseEvent;

    move-object v1, v0

    .line 1012
    .local v1, event:Ljavax/sip/ResponseEvent;
    invoke-virtual {v1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v2

    .line 1014
    .local v2, response:Ljavax/sip/message/Response;
    invoke-interface {v2}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v3

    .line 1015
    .local v3, statusCode:I
    sparse-switch v3, :sswitch_data_0

    .line 1044
    const/16 v4, 0x190

    if-lt v3, v4, :cond_2

    .line 1046
    invoke-direct {p0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljavax/sip/message/Response;)V

    move v4, v6

    .line 1071
    .end local v1           #event:Ljavax/sip/ResponseEvent;
    .end local v2           #response:Ljavax/sip/message/Response;
    .end local v3           #statusCode:I
    :goto_0
    return v4

    .line 1022
    .restart local v1       #event:Ljavax/sip/ResponseEvent;
    .restart local v2       #response:Ljavax/sip/message/Response;
    .restart local v3       #statusCode:I
    :sswitch_0
    iget v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 1023
    const/4 v4, 0x6

    iput v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1024
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    .line 1025
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v4, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onRingingBack(Landroid/net/sip/ISipSession;)V

    :cond_0
    move v4, v6

    .line 1027
    goto :goto_0

    .line 1029
    :sswitch_1
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    invoke-virtual {v4, v1, v5}, Lcom/android/server/sip/SipHelper;->sendInviteAck(Ljavax/sip/ResponseEvent;Ljavax/sip/Dialog;)V

    .line 1030
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #calls: Lcom/android/server/sip/SipSessionGroup;->extractContent(Ljavax/sip/message/Message;)Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/android/server/sip/SipSessionGroup;->access$700(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    .line 1031
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->establishCall()V

    move v4, v6

    .line 1032
    goto :goto_0

    .line 1035
    :sswitch_2
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->handleAuthentication(Ljavax/sip/ResponseEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1036
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #calls: Lcom/android/server/sip/SipSessionGroup;->addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    invoke-static {v4, p0}, Lcom/android/server/sip/SipSessionGroup;->access$800(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    :cond_1
    move v4, v6

    .line 1038
    goto :goto_0

    :sswitch_3
    move v4, v6

    .line 1042
    goto :goto_0

    .line 1048
    :cond_2
    const/16 v4, 0x12c

    if-lt v3, v4, :cond_3

    move v4, v5

    .line 1054
    goto :goto_0

    :cond_3
    move v4, v6

    .line 1051
    goto :goto_0

    .line 1055
    .end local v1           #event:Ljavax/sip/ResponseEvent;
    .end local v2           #response:Ljavax/sip/message/Response;
    .end local v3           #statusCode:I
    :cond_4
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$1600()Ljava/util/EventObject;

    move-result-object v4

    if-ne v4, p1, :cond_5

    .line 1059
    const/4 v4, 0x7

    iput v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1060
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-virtual {v4, v5}, Lcom/android/server/sip/SipHelper;->sendCancel(Ljavax/sip/ClientTransaction;)V

    .line 1061
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    move v4, v6

    .line 1062
    goto :goto_0

    .line 1063
    :cond_5
    const-string v4, "INVITE"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v7, p1}, Lcom/android/server/sip/SipSessionGroup;->access$400(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1066
    move-object v0, p1

    check-cast v0, Ljavax/sip/RequestEvent;

    move-object v1, v0

    .line 1067
    .local v1, event:Ljavax/sip/RequestEvent;
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v4

    invoke-virtual {v1}, Ljavax/sip/RequestEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/android/server/sip/SipHelper;->sendInviteBusyHere(Ljavax/sip/RequestEvent;Ljavax/sip/ServerTransaction;)V

    move v4, v6

    .line 1069
    goto :goto_0

    .end local v1           #event:Ljavax/sip/RequestEvent;
    :cond_6
    move v4, v5

    .line 1071
    goto :goto_0

    .line 1015
    :sswitch_data_0
    .sparse-switch
        0xb4 -> :sswitch_0
        0xb5 -> :sswitch_0
        0xb6 -> :sswitch_0
        0xb7 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x191 -> :sswitch_2
        0x197 -> :sswitch_2
        0x1eb -> :sswitch_3
    .end sparse-switch
.end method

.method private outgoingCallToReady(Ljava/util/EventObject;)Z
    .locals 7
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1076
    instance-of v4, p1, Ljavax/sip/ResponseEvent;

    if-eqz v4, :cond_3

    .line 1077
    move-object v0, p1

    check-cast v0, Ljavax/sip/ResponseEvent;

    move-object v1, v0

    .line 1078
    .local v1, event:Ljavax/sip/ResponseEvent;
    invoke-virtual {v1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v2

    .line 1079
    .local v2, response:Ljavax/sip/message/Response;
    invoke-interface {v2}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v3

    .line 1080
    .local v3, statusCode:I
    const-string v4, "CANCEL"

    #calls: Lcom/android/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v4, p1}, Lcom/android/server/sip/SipSessionGroup;->access$1900(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1081
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    move v4, v5

    .line 1109
    .end local v1           #event:Ljavax/sip/ResponseEvent;
    .end local v2           #response:Ljavax/sip/message/Response;
    .end local v3           #statusCode:I
    :goto_0
    return v4

    .line 1085
    .restart local v1       #event:Ljavax/sip/ResponseEvent;
    .restart local v2       #response:Ljavax/sip/message/Response;
    .restart local v3       #statusCode:I
    :cond_0
    const-string v4, "INVITE"

    #calls: Lcom/android/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v4, p1}, Lcom/android/server/sip/SipSessionGroup;->access$1900(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1086
    sparse-switch v3, :sswitch_data_0

    .line 1098
    :cond_1
    const/16 v4, 0x190

    if-lt v3, v4, :cond_4

    .line 1099
    invoke-direct {p0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljavax/sip/message/Response;)V

    move v4, v5

    .line 1100
    goto :goto_0

    .line 1088
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->outgoingCall(Ljava/util/EventObject;)Z

    move v4, v5

    .line 1089
    goto :goto_0

    .line 1091
    :sswitch_1
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    move v4, v5

    .line 1092
    goto :goto_0

    :cond_2
    move v4, v6

    .line 1095
    goto :goto_0

    .line 1102
    .end local v1           #event:Ljavax/sip/ResponseEvent;
    .end local v2           #response:Ljavax/sip/message/Response;
    .end local v3           #statusCode:I
    :cond_3
    instance-of v4, p1, Ljavax/sip/TransactionTerminatedEvent;

    if-eqz v4, :cond_4

    .line 1107
    new-instance v4, Ljavax/sip/SipException;

    const-string/jumbo v5, "timed out"

    invoke-direct {v4, v5}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V

    :cond_4
    move v4, v6

    .line 1109
    goto :goto_0

    .line 1086
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x1e7 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseOptionsResult(Ljava/util/EventObject;)Z
    .locals 9
    .parameter "evt"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, "SipSession"

    .line 800
    const-string v3, "OPTIONS"

    #calls: Lcom/android/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v3, p1}, Lcom/android/server/sip/SipSessionGroup;->access$1900(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 801
    move-object v0, p1

    check-cast v0, Ljavax/sip/ResponseEvent;

    move-object v1, v0

    .line 802
    .local v1, event:Ljavax/sip/ResponseEvent;
    invoke-virtual {v1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getRPortFromResponse(Ljavax/sip/message/Response;)I

    move-result v2

    .line 803
    .local v2, rPort:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 804
    iget v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mRPort:I

    if-nez v3, :cond_0

    iput v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mRPort:I

    .line 805
    :cond_0
    iget v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mRPort:I

    if-eq v3, v2, :cond_1

    .line 806
    iput-boolean v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReRegisterFlag:Z

    .line 807
    const-string v3, "SipSession"

    const-string/jumbo v3, "rport is changed: %d <> %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mRPort:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iput v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mRPort:I

    .line 816
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    move v3, v6

    .line 819
    .end local v1           #event:Ljavax/sip/ResponseEvent;
    .end local v2           #rPort:I
    :goto_1
    return v3

    .line 814
    .restart local v1       #event:Ljavax/sip/ResponseEvent;
    .restart local v2       #rPort:I
    :cond_2
    const-string v3, "SipSession"

    const-string/jumbo v3, "peer did not respond rport"

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #event:Ljavax/sip/ResponseEvent;
    .end local v2           #rPort:I
    :cond_3
    move v3, v7

    .line 819
    goto :goto_1
.end method

.method private processCommand(Ljava/util/EventObject;)V
    .locals 3
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 590
    #calls: Lcom/android/server/sip/SipSessionGroup;->isLoggable(Ljava/util/EventObject;)Z
    invoke-static {p1}, Lcom/android/server/sip/SipSessionGroup;->access$1800(Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SipSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "process cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->process(Ljava/util/EventObject;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 592
    const/16 v0, -0x9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot initiate a new transaction to execute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    .line 596
    :cond_1
    return-void
.end method

.method private processDialogTerminated(Ljavax/sip/DialogTerminatedEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    invoke-virtual {p1}, Ljavax/sip/DialogTerminatedEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 696
    new-instance v0, Ljavax/sip/SipException;

    const-string v1, "dialog terminated"

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V

    .line 701
    :goto_0
    return-void

    .line 698
    :cond_0
    const-string v0, "SipSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not the current dialog; current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", terminated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/sip/DialogTerminatedEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processExceptions(Ljava/util/EventObject;)Z
    .locals 4
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xc8

    const/4 v3, 0x1

    .line 665
    const-string v1, "BYE"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v1, p1}, Lcom/android/server/sip/SipSessionGroup;->access$400(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v1

    check-cast p1, Ljavax/sip/RequestEvent;

    .end local p1
    invoke-virtual {v1, p1, v2}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    .line 668
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    move v1, v3

    .line 691
    :goto_0
    return v1

    .line 670
    .restart local p1
    :cond_0
    const-string v1, "CANCEL"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v1, p1}, Lcom/android/server/sip/SipSessionGroup;->access$400(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 671
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v1

    check-cast p1, Ljavax/sip/RequestEvent;

    .end local p1
    const/16 v2, 0x1e1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    move v1, v3

    .line 673
    goto :goto_0

    .line 674
    .restart local p1
    :cond_1
    instance-of v1, p1, Ljavax/sip/TransactionTerminatedEvent;

    if-eqz v1, :cond_3

    .line 675
    move-object v0, p1

    check-cast v0, Ljavax/sip/TransactionTerminatedEvent;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->isCurrentTransaction(Ljavax/sip/TransactionTerminatedEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 676
    instance-of v1, p1, Ljavax/sip/TimeoutEvent;

    if-eqz v1, :cond_2

    .line 677
    check-cast p1, Ljavax/sip/TimeoutEvent;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processTimeout(Ljavax/sip/TimeoutEvent;)V

    :goto_1
    move v1, v3

    .line 682
    goto :goto_0

    .line 679
    .restart local p1
    :cond_2
    check-cast p1, Ljavax/sip/TransactionTerminatedEvent;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processTransactionTerminated(Ljavax/sip/TransactionTerminatedEvent;)V

    goto :goto_1

    .line 684
    .restart local p1
    :cond_3
    const-string v1, "OPTIONS"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v1, p1}, Lcom/android/server/sip/SipSessionGroup;->access$400(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 685
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v1

    check-cast p1, Ljavax/sip/RequestEvent;

    .end local p1
    invoke-virtual {v1, p1, v2}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    move v1, v3

    .line 686
    goto :goto_0

    .line 687
    .restart local p1
    :cond_4
    instance-of v1, p1, Ljavax/sip/DialogTerminatedEvent;

    if-eqz v1, :cond_5

    .line 688
    check-cast p1, Ljavax/sip/DialogTerminatedEvent;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processDialogTerminated(Ljavax/sip/DialogTerminatedEvent;)V

    move v1, v3

    .line 689
    goto :goto_0

    .line 691
    .restart local p1
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processTimeout(Ljavax/sip/TimeoutEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    const-string v1, "SipSession"

    .line 749
    const-string v0, "SipSession"

    const-string/jumbo v0, "processing Timeout..."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 768
    :pswitch_0
    const-string v0, "SipSession"

    const-string v0, "   do nothing"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :goto_0
    return-void

    .line 753
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 754
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V

    goto :goto_0

    .line 760
    :pswitch_2
    const/4 v0, -0x5

    invoke-virtual {p1}, Ljavax/sip/TimeoutEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 763
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 764
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReRegisterFlag:Z

    goto :goto_0

    .line 750
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private processTransactionTerminated(Ljavax/sip/TransactionTerminatedEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    const-string v2, "SipSession"

    .line 736
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    sparse-switch v0, :sswitch_data_0

    .line 742
    const-string v0, "SipSession"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transaction terminated early: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/4 v0, -0x3

    const-string/jumbo v1, "transaction terminated"

    invoke-direct {p0, v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    .line 746
    :goto_0
    return-void

    .line 739
    :sswitch_0
    const-string v0, "SipSession"

    const-string v0, "Transaction terminated; do nothing"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 736
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private readyForCall(Ljava/util/EventObject;)Z
    .locals 9
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 935
    instance-of v3, p1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    if-eqz v3, :cond_0

    .line 936
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 937
    move-object v0, p1

    check-cast v0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    move-object v1, v0

    .line 938
    .local v1, cmd:Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;
    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    .line 939
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->access$1400(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getSessionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/sip/SipHelper;->sendInvite(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/ClientTransaction;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 942
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v3}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 943
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #calls: Lcom/android/server/sip/SipSessionGroup;->addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    invoke-static {v3, p0}, Lcom/android/server/sip/SipSessionGroup;->access$800(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 944
    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getTimeout()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    .line 945
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v3, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onCalling(Landroid/net/sip/ISipSession;)V

    move v3, v8

    .line 965
    .end local v1           #cmd:Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;
    .end local p1
    :goto_0
    return v3

    .line 947
    .restart local p1
    :cond_0
    instance-of v3, p1, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;

    if-eqz v3, :cond_1

    .line 948
    iput v8, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 949
    check-cast p1, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;

    .end local p1
    invoke-virtual {p1}, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;->getDuration()I

    move-result v2

    .line 950
    .local v2, duration:I
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->access$1400(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/sip/SipHelper;->sendRegister(Landroid/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/ClientTransaction;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 952
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v3}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 953
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #calls: Lcom/android/server/sip/SipSessionGroup;->addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    invoke-static {v3, p0}, Lcom/android/server/sip/SipSessionGroup;->access$800(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 954
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v3, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistering(Landroid/net/sip/ISipSession;)V

    move v3, v8

    .line 955
    goto :goto_0

    .line 956
    .end local v2           #duration:I
    .restart local p1
    :cond_1
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$1700()Ljava/util/EventObject;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 957
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 958
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->access$1400(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/sip/SipHelper;->sendRegister(Landroid/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/ClientTransaction;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 960
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v3}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 961
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #calls: Lcom/android/server/sip/SipSessionGroup;->addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    invoke-static {v3, p0}, Lcom/android/server/sip/SipSessionGroup;->access$800(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 962
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v3, p0}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistering(Landroid/net/sip/ISipSession;)V

    move v3, v8

    .line 963
    goto :goto_0

    :cond_2
    move v3, v6

    .line 965
    goto :goto_0
.end method

.method private registeringToReady(Ljava/util/EventObject;)Z
    .locals 7
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 830
    const-string v5, "REGISTER"

    #calls: Lcom/android/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v5, p1}, Lcom/android/server/sip/SipSessionGroup;->access$1900(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 831
    move-object v0, p1

    check-cast v0, Ljavax/sip/ResponseEvent;

    move-object v1, v0

    .line 832
    .local v1, event:Ljavax/sip/ResponseEvent;
    invoke-virtual {v1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v2

    .line 834
    .local v2, response:Ljavax/sip/message/Response;
    invoke-interface {v2}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v4

    .line 835
    .local v4, statusCode:I
    sparse-switch v4, :sswitch_data_0

    .line 847
    const/16 v5, 0x1f4

    if-lt v4, v5, :cond_1

    .line 848
    invoke-direct {p0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationFailed(Ljavax/sip/message/Response;)V

    move v5, v6

    .line 853
    .end local v1           #event:Ljavax/sip/ResponseEvent;
    .end local v2           #response:Ljavax/sip/message/Response;
    .end local v4           #statusCode:I
    .end local p1
    :goto_0
    return v5

    .line 837
    .restart local v1       #event:Ljavax/sip/ResponseEvent;
    .restart local v2       #response:Ljavax/sip/message/Response;
    .restart local v4       #statusCode:I
    .restart local p1
    :sswitch_0
    iget v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 838
    .local v3, state:I
    if-ne v3, v6, :cond_0

    check-cast p1, Ljavax/sip/ResponseEvent;

    .end local p1
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getExpiryTime(Ljavax/sip/message/Response;)I

    move-result v5

    :goto_1
    invoke-direct {p0, v5}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationDone(I)V

    move v5, v6

    .line 841
    goto :goto_0

    .line 838
    .restart local p1
    :cond_0
    const/4 v5, -0x1

    goto :goto_1

    .line 844
    .end local v3           #state:I
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->handleAuthentication(Ljavax/sip/ResponseEvent;)Z

    move v5, v6

    .line 845
    goto :goto_0

    .line 853
    .end local v1           #event:Ljavax/sip/ResponseEvent;
    .end local v2           #response:Ljavax/sip/message/Response;
    .end local v4           #statusCode:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 835
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x191 -> :sswitch_1
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 444
    iput-boolean v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    .line 445
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #calls: Lcom/android/server/sip/SipSessionGroup;->removeSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    invoke-static {v0, p0}, Lcom/android/server/sip/SipSessionGroup;->access$1200(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 446
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    .line 447
    iput v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 448
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    .line 449
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    .line 450
    iput v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mRPort:I

    .line 451
    iput v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    .line 453
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    invoke-interface {v0}, Ljavax/sip/Dialog;->delete()V

    .line 454
    :cond_0
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    invoke-interface {v0}, Ljavax/sip/ServerTransaction;->terminate()V
    :try_end_0
    .catch Ljavax/sip/ObjectInUseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 461
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    .line 464
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->terminate()V
    :try_end_1
    .catch Ljavax/sip/ObjectInUseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 468
    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 470
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    .line 471
    return-void

    .line 465
    :catch_0
    move-exception v0

    goto :goto_1

    .line 458
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private startSessionTimer(I)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 1145
    if-lez p1, :cond_0

    .line 1146
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    invoke-direct {v0, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;-><init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    .line 1147
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mTimer:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->start(I)V

    .line 1149
    :cond_0
    return-void
.end method

.method private toString(Ljavax/sip/Transaction;)Ljava/lang/String;
    .locals 8
    .parameter "transaction"

    .prologue
    .line 725
    if-nez p1, :cond_0

    const-string/jumbo v3, "null"

    .line 729
    :goto_0
    return-object v3

    .line 726
    :cond_0
    invoke-interface {p1}, Ljavax/sip/Transaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v2

    .line 727
    .local v2, request:Ljavax/sip/message/Request;
    invoke-interface {p1}, Ljavax/sip/Transaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    .line 728
    .local v1, dialog:Ljavax/sip/Dialog;
    const-string v3, "CSeq"

    invoke-interface {v2, v3}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/CSeqHeader;

    .line 729
    .local v0, cseq:Ljavax/sip/header/CSeqHeader;
    const-string/jumbo v3, "req=%s,%s,s=%s,ds=%s,"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v2}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-interface {p1}, Ljavax/sip/Transaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    if-nez v1, :cond_1

    const-string v6, "-"

    :goto_1
    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljavax/sip/Dialog;->getState()Ljavax/sip/DialogState;

    move-result-object v6

    goto :goto_1
.end method


# virtual methods
.method public answerCall(Ljava/lang/String;I)V
    .locals 5
    .parameter "sessionDescription"
    .parameter "timeout"

    .prologue
    .line 530
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v1

    .line 531
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    :goto_0
    return-void

    .line 533
    :cond_0
    :try_start_1
    new-instance v2, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    invoke-direct {v2, v3, v4, p1, p2}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/SipProfile;Ljava/lang/String;I)V

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processCommand(Ljava/util/EventObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0

    .line 538
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 535
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 536
    .local v0, e:Ljavax/sip/SipException;
    :try_start_3
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public changeCall(Ljava/lang/String;I)V
    .locals 4
    .parameter "sessionDescription"
    .parameter "timeout"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v0

    .line 547
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    if-nez v1, :cond_0

    monitor-exit v0

    .line 551
    :goto_0
    return-void

    .line 548
    :cond_0
    new-instance v1, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/SipProfile;Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 550
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearReRegisterRequired()V
    .locals 1

    .prologue
    .line 566
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReRegisterFlag:Z

    .line 567
    return-void
.end method

.method duplicate()Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .locals 3

    .prologue
    .line 440
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v2}, Lcom/android/server/sip/SipSessionListenerProxy;->getListener()Landroid/net/sip/ISipSessionListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V

    return-object v0
.end method

.method public endCall()V
    .locals 1

    .prologue
    .line 542
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$1600()Ljava/util/EventObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 543
    return-void
.end method

.method protected generateTag()Ljava/lang/String;
    .locals 4

    .prologue
    .line 600
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x41f0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getTransaction()Ljavax/sip/Transaction;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalIp:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$1300(Lcom/android/server/sip/SipSessionGroup;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalProfile()Landroid/net/sip/SipProfile;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$1400(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method public getPeerProfile()Landroid/net/sip/SipProfile;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    return v0
.end method

.method public isInCall()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    return v0
.end method

.method public isReRegisterRequired()Z
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mReRegisterFlag:Z

    return v0
.end method

.method public makeCall(Landroid/net/sip/SipProfile;Ljava/lang/String;I)V
    .locals 2
    .parameter "peerProfile"
    .parameter "sessionDescription"
    .parameter "timeout"

    .prologue
    .line 525
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/SipProfile;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 527
    return-void
.end method

.method public process(Ljava/util/EventObject;)Z
    .locals 7
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 614
    #calls: Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z
    invoke-static {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->access$200(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SipSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ~~~~~   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    invoke-static {v5}, Landroid/net/sip/SipSession$State;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": processing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #calls: Lcom/android/server/sip/SipSessionGroup;->log(Ljava/util/EventObject;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/sip/SipSessionGroup;->access$300(Ljava/util/EventObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_0
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v4

    .line 618
    :try_start_0
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v3}, Lcom/android/server/sip/SipSessionGroup;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v4

    move v3, v6

    .line 660
    :goto_0
    return v3

    .line 620
    :cond_1
    const/4 v1, 0x0

    .line 621
    .local v1, dialog:Ljavax/sip/Dialog;
    instance-of v3, p1, Ljavax/sip/RequestEvent;

    if-eqz v3, :cond_5

    .line 622
    move-object v0, p1

    check-cast v0, Ljavax/sip/RequestEvent;

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/sip/RequestEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    .line 626
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    iput-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 630
    :cond_3
    iget v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    packed-switch v3, :pswitch_data_0

    .line 658
    const/4 v2, 0x0

    .line 660
    .local v2, processed:Z
    :goto_2
    if-nez v2, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processExceptions(Ljava/util/EventObject;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    const/4 v3, 0x1

    :goto_3
    monitor-exit v4

    goto :goto_0

    .line 661
    .end local v1           #dialog:Ljavax/sip/Dialog;
    .end local v2           #processed:Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 623
    .restart local v1       #dialog:Ljavax/sip/Dialog;
    :cond_5
    :try_start_1
    instance-of v3, p1, Ljavax/sip/ResponseEvent;

    if-eqz v3, :cond_2

    .line 624
    move-object v0, p1

    check-cast v0, Ljavax/sip/ResponseEvent;

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/sip/ResponseEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    goto :goto_1

    .line 633
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->registeringToReady(Ljava/util/EventObject;)Z

    move-result v2

    .line 634
    .restart local v2       #processed:Z
    goto :goto_2

    .line 636
    .end local v2           #processed:Z
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->keepAliveProcess(Ljava/util/EventObject;)Z

    move-result v2

    .line 637
    .restart local v2       #processed:Z
    goto :goto_2

    .line 639
    .end local v2           #processed:Z
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->readyForCall(Ljava/util/EventObject;)Z

    move-result v2

    .line 640
    .restart local v2       #processed:Z
    goto :goto_2

    .line 642
    .end local v2           #processed:Z
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->incomingCall(Ljava/util/EventObject;)Z

    move-result v2

    .line 643
    .restart local v2       #processed:Z
    goto :goto_2

    .line 645
    .end local v2           #processed:Z
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->incomingCallToInCall(Ljava/util/EventObject;)Z

    move-result v2

    .line 646
    .restart local v2       #processed:Z
    goto :goto_2

    .line 649
    .end local v2           #processed:Z
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->outgoingCall(Ljava/util/EventObject;)Z

    move-result v2

    .line 650
    .restart local v2       #processed:Z
    goto :goto_2

    .line 652
    .end local v2           #processed:Z
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->outgoingCallToReady(Ljava/util/EventObject;)Z

    move-result v2

    .line 653
    .restart local v2       #processed:Z
    goto :goto_2

    .line 655
    .end local v2           #processed:Z
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->inCall(Ljava/util/EventObject;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 656
    .restart local v2       #processed:Z
    goto :goto_2

    :cond_6
    move v3, v6

    .line 660
    goto :goto_3

    .line 630
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method

.method public register(I)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 554
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-direct {v0, v1, p1}, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;-><init>(Lcom/android/server/sip/SipSessionGroup;I)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 555
    return-void
.end method

.method public sendKeepAlive()V
    .locals 6

    .prologue
    const/16 v4, 0x9

    const-string v5, "SipSession"

    .line 570
    iput v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 572
    :try_start_0
    new-instance v2, Lcom/android/server/sip/SipSessionGroup$OptionsCommand;

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-direct {v2, v3}, Lcom/android/server/sip/SipSessionGroup$OptionsCommand;-><init>(Lcom/android/server/sip/SipSessionGroup;)V

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processCommand(Ljava/util/EventObject;)V

    .line 573
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0xf

    if-ge v1, v2, :cond_0

    .line 574
    iget v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    if-eq v4, v2, :cond_2

    .line 577
    :cond_0
    iget v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    if-ne v4, v2, :cond_1

    .line 579
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 580
    const-string v2, "SipSession"

    const-string/jumbo v3, "no response from ping"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    .end local v1           #i:I
    :cond_1
    :goto_1
    return-void

    .line 575
    .restart local v1       #i:I
    :cond_2
    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljavax/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 573
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 582
    .end local v1           #i:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 583
    .local v0, e:Ljavax/sip/SipException;
    const-string v2, "SipSession"

    const-string/jumbo v2, "sendKeepAlive failed"

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 584
    .end local v0           #e:Ljavax/sip/SipException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 585
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "SipSession"

    const-string/jumbo v2, "sendKeepAlive interrupted"

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setListener(Landroid/net/sip/ISipSessionListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    instance-of v1, p1, Lcom/android/server/sip/SipSessionListenerProxy;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/server/sip/SipSessionListenerProxy;

    .end local p1
    invoke-virtual {p1}, Lcom/android/server/sip/SipSessionListenerProxy;->getListener()Landroid/net/sip/ISipSessionListener;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipSessionListenerProxy;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 507
    return-void

    .restart local p1
    :cond_0
    move-object v1, p1

    .line 504
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 605
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 606
    .local v1, s:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    invoke-static {v3}, Landroid/net/sip/SipSession$State;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 609
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 608
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 609
    .local v0, e:Ljava/lang/Throwable;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 558
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->access$1700()Ljava/util/EventObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 559
    return-void
.end method
