.class Landroid/net/sip/SipAudioCall$1;
.super Landroid/net/sip/SipSession$Listener;
.source "SipAudioCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/sip/SipAudioCall;->createListener()Landroid/net/sip/SipSession$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/sip/SipAudioCall;


# direct methods
.method constructor <init>(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-direct {p0}, Landroid/net/sip/SipSession$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBusy(Landroid/net/sip/SipSession;)V
    .locals 5
    .parameter "session"

    .prologue
    .line 437
    invoke-static {}, Landroid/net/sip/SipAudioCall;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sip call busy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #getter for: Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->access$100(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;

    move-result-object v0

    .line 439
    .local v0, listener:Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    .line 441
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0, v2}, Landroid/net/sip/SipAudioCall$Listener;->onCallBusy(Landroid/net/sip/SipAudioCall;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    const/4 v3, 0x0

    #calls: Landroid/net/sip/SipAudioCall;->close(Z)V
    invoke-static {v2, v3}, Landroid/net/sip/SipAudioCall;->access$700(Landroid/net/sip/SipAudioCall;Z)V

    .line 447
    return-void

    .line 442
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 443
    .local v1, t:Ljava/lang/Throwable;
    invoke-static {}, Landroid/net/sip/SipAudioCall;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCallBusy(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCallChangeFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V
    .locals 5
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 452
    invoke-static {}, Landroid/net/sip/SipAudioCall;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sip call change failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #setter for: Landroid/net/sip/SipAudioCall;->mErrorCode:I
    invoke-static {v2, p2}, Landroid/net/sip/SipAudioCall;->access$802(Landroid/net/sip/SipAudioCall;I)I

    .line 454
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #setter for: Landroid/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;
    invoke-static {v2, p3}, Landroid/net/sip/SipAudioCall;->access$902(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Ljava/lang/String;

    .line 455
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #getter for: Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->access$100(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;

    move-result-object v0

    .line 456
    .local v0, listener:Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    .line 458
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    iget-object v3, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #getter for: Landroid/net/sip/SipAudioCall;->mErrorCode:I
    invoke-static {v3}, Landroid/net/sip/SipAudioCall;->access$800(Landroid/net/sip/SipAudioCall;)I

    move-result v3

    invoke-virtual {v0, v2, v3, p3}, Landroid/net/sip/SipAudioCall$Listener;->onError(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 460
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 461
    .local v1, t:Ljava/lang/Throwable;
    invoke-static {}, Landroid/net/sip/SipAudioCall;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCallBusy(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCallEnded(Landroid/net/sip/SipSession;)V
    .locals 5
    .parameter "session"

    .prologue
    .line 423
    invoke-static {}, Landroid/net/sip/SipAudioCall;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sip call ended: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #getter for: Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->access$100(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;

    move-result-object v0

    .line 425
    .local v0, listener:Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    .line 427
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0, v2}, Landroid/net/sip/SipAudioCall$Listener;->onCallEnded(Landroid/net/sip/SipAudioCall;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v2}, Landroid/net/sip/SipAudioCall;->close()V

    .line 433
    return-void

    .line 428
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 429
    .local v1, t:Ljava/lang/Throwable;
    invoke-static {}, Landroid/net/sip/SipAudioCall;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCallEnded(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCallEstablished(Landroid/net/sip/SipSession;Ljava/lang/String;)V
    .locals 5
    .parameter "session"
    .parameter "sessionDescription"

    .prologue
    .line 404
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #setter for: Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;
    invoke-static {v2, p2}, Landroid/net/sip/SipAudioCall;->access$502(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Ljava/lang/String;

    .line 405
    invoke-static {}, Landroid/net/sip/SipAudioCall;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCallEstablished()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #getter for: Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/sip/SipAudioCall;->access$500(Landroid/net/sip/SipAudioCall;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #getter for: Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->access$100(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;

    move-result-object v0

    .line 408
    .local v0, listener:Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    .line 410
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #getter for: Landroid/net/sip/SipAudioCall;->mHold:Z
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->access$600(Landroid/net/sip/SipAudioCall;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 411
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0, v2}, Landroid/net/sip/SipAudioCall$Listener;->onCallHeld(Landroid/net/sip/SipAudioCall;)V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0, v2}, Landroid/net/sip/SipAudioCall$Listener;->onCallEstablished(Landroid/net/sip/SipAudioCall;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 416
    .local v1, t:Ljava/lang/Throwable;
    invoke-static {}, Landroid/net/sip/SipAudioCall;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCallEstablished(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCalling(Landroid/net/sip/SipSession;)V
    .locals 5
    .parameter "session"

    .prologue
    .line 354
    invoke-static {}, Landroid/net/sip/SipAudioCall;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #getter for: Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->access$100(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;

    move-result-object v0

    .line 356
    .local v0, listener:Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    .line 358
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0, v2}, Landroid/net/sip/SipAudioCall$Listener;->onCalling(Landroid/net/sip/SipAudioCall;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 360
    .local v1, t:Ljava/lang/Throwable;
    invoke-static {}, Landroid/net/sip/SipAudioCall;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCalling(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onError(Landroid/net/sip/SipSession;ILjava/lang/String;)V
    .locals 1
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 469
    iget-object v0, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #calls: Landroid/net/sip/SipAudioCall;->onError(ILjava/lang/String;)V
    invoke-static {v0, p2, p3}, Landroid/net/sip/SipAudioCall;->access$1000(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V

    .line 470
    return-void
.end method

.method public onRegistering(Landroid/net/sip/SipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 475
    return-void
.end method

.method public onRegistrationDone(Landroid/net/sip/SipSession;I)V
    .locals 0
    .parameter "session"
    .parameter "duration"

    .prologue
    .line 491
    return-void
.end method

.method public onRegistrationFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 486
    return-void
.end method

.method public onRegistrationTimeout(Landroid/net/sip/SipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 480
    return-void
.end method

.method public onRinging(Landroid/net/sip/SipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 5
    .parameter "session"
    .parameter "peerProfile"
    .parameter "sessionDescription"

    .prologue
    .line 381
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    monitor-enter v2

    .line 382
    :try_start_0
    iget-object v3, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #getter for: Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;
    invoke-static {v3}, Landroid/net/sip/SipAudioCall;->access$200(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #getter for: Landroid/net/sip/SipAudioCall;->mInCall:Z
    invoke-static {v3}, Landroid/net/sip/SipAudioCall;->access$300(Landroid/net/sip/SipAudioCall;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/net/sip/SipSession;->getCallId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #getter for: Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;
    invoke-static {v4}, Landroid/net/sip/SipAudioCall;->access$200(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/sip/SipSession;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 386
    :cond_0
    invoke-virtual {p1}, Landroid/net/sip/SipSession;->endCall()V

    .line 387
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :goto_0
    return-void

    .line 392
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #calls: Landroid/net/sip/SipAudioCall;->createAnswer(Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;
    invoke-static {v3, p3}, Landroid/net/sip/SipAudioCall;->access$400(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, answer:Ljava/lang/String;
    iget-object v3, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #getter for: Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;
    invoke-static {v3}, Landroid/net/sip/SipAudioCall;->access$200(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v0, v4}, Landroid/net/sip/SipSession;->answerCall(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 398
    .end local v0           #answer:Ljava/lang/String;
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 394
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 395
    .local v1, e:Ljava/lang/Throwable;
    :try_start_3
    invoke-static {}, Landroid/net/sip/SipAudioCall;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onRinging()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    invoke-virtual {p1}, Landroid/net/sip/SipSession;->endCall()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public onRingingBack(Landroid/net/sip/SipSession;)V
    .locals 5
    .parameter "session"

    .prologue
    .line 367
    invoke-static {}, Landroid/net/sip/SipAudioCall;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sip call ringing back: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    #getter for: Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->access$100(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;

    move-result-object v0

    .line 369
    .local v0, listener:Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    .line 371
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0, v2}, Landroid/net/sip/SipAudioCall$Listener;->onRingingBack(Landroid/net/sip/SipAudioCall;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 373
    .local v1, t:Ljava/lang/Throwable;
    invoke-static {}, Landroid/net/sip/SipAudioCall;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRingingBack(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
