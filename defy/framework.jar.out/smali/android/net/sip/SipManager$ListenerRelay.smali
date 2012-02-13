.class Landroid/net/sip/SipManager$ListenerRelay;
.super Landroid/net/sip/SipSessionAdapter;
.source "SipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/SipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerRelay"
.end annotation


# instance fields
.field private mListener:Landroid/net/sip/SipRegistrationListener;

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/sip/SipRegistrationListener;Ljava/lang/String;)V
    .locals 0
    .parameter "listener"
    .parameter "uri"

    .prologue
    invoke-direct {p0}, Landroid/net/sip/SipSessionAdapter;-><init>()V

    iput-object p1, p0, Landroid/net/sip/SipManager$ListenerRelay;->mListener:Landroid/net/sip/SipRegistrationListener;

    iput-object p2, p0, Landroid/net/sip/SipManager$ListenerRelay;->mUri:Ljava/lang/String;

    return-void
.end method

.method private getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;
    .locals 4
    .parameter "session"

    .prologue
    if-nez p1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipManager$ListenerRelay;->mUri:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p1}, Landroid/net/sip/ISipSession;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "SipManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUri(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onRegistering(Landroid/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipManager$ListenerRelay;->mListener:Landroid/net/sip/SipRegistrationListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$ListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/sip/SipRegistrationListener;->onRegistering(Ljava/lang/String;)V

    return-void
.end method

.method public onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    .locals 4
    .parameter "session"
    .parameter "duration"

    .prologue
    int-to-long v0, p2

    .local v0, expiryTime:J
    if-lez p2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_0
    iget-object v2, p0, Landroid/net/sip/SipManager$ListenerRelay;->mListener:Landroid/net/sip/SipRegistrationListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$ListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/net/sip/SipRegistrationListener;->onRegistrationDone(Ljava/lang/String;J)V

    return-void
.end method

.method public onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipManager$ListenerRelay;->mListener:Landroid/net/sip/SipRegistrationListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$ListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/net/sip/SipRegistrationListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    .locals 4
    .parameter "session"

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipManager$ListenerRelay;->mListener:Landroid/net/sip/SipRegistrationListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$ListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x5

    const-string v3, "registration timed out"

    invoke-interface {v0, v1, v2, v3}, Landroid/net/sip/SipRegistrationListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
