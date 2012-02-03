.class Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;
.super Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
.source "SipSessionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipSessionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipSessionCallReceiverImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sip/SipSessionGroup;


# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V
    .locals 0
    .parameter
    .parameter "listener"

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    .line 354
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V

    .line 355
    return-void
.end method


# virtual methods
.method public process(Ljava/util/EventObject;)Z
    .locals 7
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 358
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

    .line 361
    :cond_0
    const-string v3, "INVITE"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v3, p1}, Lcom/android/server/sip/SipSessionGroup;->access$400(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 362
    move-object v0, p1

    check-cast v0, Ljavax/sip/RequestEvent;

    move-object v1, v0

    .line 363
    .local v1, event:Ljavax/sip/RequestEvent;
    new-instance v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-direct {v2, v3, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V

    .line 364
    .local v2, newSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    const/4 v3, 0x3

    iput v3, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 365
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->generateTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/server/sip/SipHelper;->sendRinging(Ljavax/sip/RequestEvent;Ljava/lang/String;)Ljavax/sip/ServerTransaction;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    .line 367
    iget-object v3, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    invoke-interface {v3}, Ljavax/sip/ServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 368
    iput-object v1, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    .line 369
    invoke-virtual {v1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v3

    #calls: Lcom/android/server/sip/SipSessionGroup;->createPeerProfile(Ljavax/sip/message/Request;)Landroid/net/sip/SipProfile;
    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup;->access$600(Ljavax/sip/message/Request;)Landroid/net/sip/SipProfile;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    .line 370
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v4

    #calls: Lcom/android/server/sip/SipSessionGroup;->extractContent(Ljavax/sip/message/Message;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/server/sip/SipSessionGroup;->access$700(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    .line 372
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #calls: Lcom/android/server/sip/SipSessionGroup;->addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    invoke-static {v3, v2}, Lcom/android/server/sip/SipSessionGroup;->access$800(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 373
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v4, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    iget-object v5, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/sip/SipSessionListenerProxy;->onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    move v3, v6

    .line 380
    .end local v1           #event:Ljavax/sip/RequestEvent;
    .end local v2           #newSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .end local p1
    :goto_0
    return v3

    .line 376
    .restart local p1
    :cond_1
    const-string v3, "OPTIONS"

    #calls: Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v3, p1}, Lcom/android/server/sip/SipSessionGroup;->access$400(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 377
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v3

    check-cast p1, Ljavax/sip/RequestEvent;

    .end local p1
    const/16 v4, 0xc8

    invoke-virtual {v3, p1, v4}, Lcom/android/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    move v3, v6

    .line 378
    goto :goto_0

    .line 380
    .restart local p1
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
