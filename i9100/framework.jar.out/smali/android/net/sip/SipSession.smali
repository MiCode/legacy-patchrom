.class public final Landroid/net/sip/SipSession;
.super Ljava/lang/Object;
.source "SipSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/sip/SipSession$Listener;,
        Landroid/net/sip/SipSession$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SipSession"


# instance fields
.field private mListener:Landroid/net/sip/SipSession$Listener;

.field private final mSession:Landroid/net/sip/ISipSession;


# direct methods
.method constructor <init>(Landroid/net/sip/ISipSession;)V
    .locals 4
    .parameter "realSession"

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    .line 227
    if-eqz p1, :cond_0

    .line 229
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipSession;->createListener()Landroid/net/sip/ISipSessionListener;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/net/sip/ISipSession;->setListener(Landroid/net/sip/ISipSessionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 231
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SipSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SipSession.setListener(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method constructor <init>(Landroid/net/sip/ISipSession;Landroid/net/sip/SipSession$Listener;)V
    .locals 0
    .parameter "realSession"
    .parameter "listener"

    .prologue
    .line 237
    invoke-direct {p0, p1}, Landroid/net/sip/SipSession;-><init>(Landroid/net/sip/ISipSession;)V

    .line 238
    invoke-virtual {p0, p2}, Landroid/net/sip/SipSession;->setListener(Landroid/net/sip/SipSession$Listener;)V

    .line 239
    return-void
.end method

.method static synthetic access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;

    return-object v0
.end method

.method private createListener()Landroid/net/sip/ISipSessionListener;
    .locals 1

    .prologue
    .line 451
    new-instance v0, Landroid/net/sip/SipSession$1;

    invoke-direct {v0, p0}, Landroid/net/sip/SipSession$1;-><init>(Landroid/net/sip/SipSession;)V

    return-object v0
.end method


# virtual methods
.method public answerCall(Ljava/lang/String;I)V
    .locals 4
    .parameter "sessionDescription"
    .parameter "timeout"

    .prologue
    .line 407
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v1, p1, p2}, Landroid/net/sip/ISipSession;->answerCall(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    return-void

    .line 408
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 409
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SipSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "answerCall(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public changeCall(Ljava/lang/String;I)V
    .locals 4
    .parameter "sessionDescription"
    .parameter "timeout"

    .prologue
    .line 440
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v1, p1, p2}, Landroid/net/sip/ISipSession;->changeCall(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_0
    return-void

    .line 441
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 442
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SipSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeCall(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endCall()V
    .locals 4

    .prologue
    .line 423
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v1}, Landroid/net/sip/ISipSession;->endCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    return-void

    .line 424
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 425
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SipSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endCall(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 320
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v1}, Landroid/net/sip/ISipSession;->getCallId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 323
    :goto_0
    return-object v1

    .line 321
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 322
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SipSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallId(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocalIp()Ljava/lang/String;
    .locals 4

    .prologue
    .line 248
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v1}, Landroid/net/sip/ISipSession;->getLocalIp()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 251
    :goto_0
    return-object v1

    .line 249
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 250
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SipSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocalIp(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v1, "127.0.0.1"

    goto :goto_0
.end method

.method public getLocalProfile()Landroid/net/sip/SipProfile;
    .locals 4

    .prologue
    .line 262
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v1}, Landroid/net/sip/ISipSession;->getLocalProfile()Landroid/net/sip/SipProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 265
    :goto_0
    return-object v1

    .line 263
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 264
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SipSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocalProfile(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPeerProfile()Landroid/net/sip/SipProfile;
    .locals 4

    .prologue
    .line 277
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v1}, Landroid/net/sip/ISipSession;->getPeerProfile()Landroid/net/sip/SipProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 280
    :goto_0
    return-object v1

    .line 278
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 279
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SipSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPeerProfile(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getRealSession()Landroid/net/sip/ISipSession;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    return-object v0
.end method

.method public getState()I
    .locals 4

    .prologue
    .line 292
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v1}, Landroid/net/sip/ISipSession;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 295
    :goto_0
    return v1

    .line 293
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 294
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SipSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getState(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/16 v1, 0x65

    goto :goto_0
.end method

.method public isInCall()Z
    .locals 4

    .prologue
    .line 306
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v1}, Landroid/net/sip/ISipSession;->isInCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 309
    :goto_0
    return v1

    .line 307
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 308
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SipSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInCall(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public makeCall(Landroid/net/sip/SipProfile;Ljava/lang/String;I)V
    .locals 4
    .parameter "callee"
    .parameter "sessionDescription"
    .parameter "timeout"

    .prologue
    .line 389
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/sip/ISipSession;->makeCall(Landroid/net/sip/SipProfile;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 391
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SipSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeCall(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public register(I)V
    .locals 4
    .parameter "duration"

    .prologue
    .line 351
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v1, p1}, Landroid/net/sip/ISipSession;->register(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 353
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SipSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "register(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setListener(Landroid/net/sip/SipSession$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 336
    iput-object p1, p0, Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;

    .line 337
    return-void
.end method

.method public unregister()V
    .locals 4

    .prologue
    .line 368
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v1}, Landroid/net/sip/ISipSession;->unregister()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_0
    return-void

    .line 369
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 370
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SipSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregister(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
