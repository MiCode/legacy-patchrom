.class Lcom/android/server/sip/SipSessionListenerProxy;
.super Landroid/net/sip/ISipSessionListener$Stub;
.source "SipSessionListenerProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SipSession"


# instance fields
.field private mListener:Landroid/net/sip/ISipSessionListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/net/sip/ISipSessionListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sip/SipSessionListenerProxy;)Landroid/net/sip/ISipSessionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/sip/SipSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy;->handle(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private handle(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .parameter "t"
    .parameter "message"

    .prologue
    .line 209
    instance-of v0, p1, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_1

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "SipSession"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private proxy(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "SipSessionCallbackThread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 44
    return-void
.end method


# virtual methods
.method public getListener()Landroid/net/sip/ISipSessionListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    return-object v0
.end method

.method public onCallBusy(Landroid/net/sip/ISipSession;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 115
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$6;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCallChangeFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 1
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 129
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy$7;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCallEnded(Landroid/net/sip/ISipSession;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 102
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$5;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCallEstablished(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 1
    .parameter "session"
    .parameter "sessionDescription"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 89
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy$4;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCalling(Landroid/net/sip/ISipSession;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$1;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 1
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy$8;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRegistering(Landroid/net/sip/ISipSession;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 156
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$9;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$9;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    .locals 1
    .parameter "session"
    .parameter "duration"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 170
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy$10;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;I)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 1
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 184
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$11;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy$11;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 197
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$12;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$12;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 1
    .parameter "session"
    .parameter "caller"
    .parameter "sessionDescription"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 62
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy$2;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRingingBack(Landroid/net/sip/ISipSession;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$3;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setListener(Landroid/net/sip/ISipSessionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    .line 33
    return-void
.end method
