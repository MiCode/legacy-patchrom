.class public Landroid/net/sip/SipSession$Listener;
.super Ljava/lang/Object;
.source "SipSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/SipSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBusy(Landroid/net/sip/SipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 160
    return-void
.end method

.method public onCallChangeFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 183
    return-void
.end method

.method public onCallEnded(Landroid/net/sip/SipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 152
    return-void
.end method

.method public onCallEstablished(Landroid/net/sip/SipSession;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "sessionDescription"

    .prologue
    .line 144
    return-void
.end method

.method public onCalling(Landroid/net/sip/SipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 115
    return-void
.end method

.method public onError(Landroid/net/sip/SipSession;ILjava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 172
    return-void
.end method

.method public onRegistering(Landroid/net/sip/SipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 191
    return-void
.end method

.method public onRegistrationDone(Landroid/net/sip/SipSession;I)V
    .locals 0
    .parameter "session"
    .parameter "duration"

    .prologue
    .line 200
    return-void
.end method

.method public onRegistrationFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 211
    return-void
.end method

.method public onRegistrationTimeout(Landroid/net/sip/SipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 219
    return-void
.end method

.method public onRinging(Landroid/net/sip/SipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "caller"
    .parameter "sessionDescription"

    .prologue
    .line 126
    return-void
.end method

.method public onRingingBack(Landroid/net/sip/SipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 134
    return-void
.end method
