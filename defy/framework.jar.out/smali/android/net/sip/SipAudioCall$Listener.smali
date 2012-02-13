.class public Landroid/net/sip/SipAudioCall$Listener;
.super Ljava/lang/Object;
.source "SipAudioCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/SipAudioCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBusy(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .parameter "call"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    return-void
.end method

.method public onCallEnded(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .parameter "call"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    return-void
.end method

.method public onCallEstablished(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .parameter "call"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    return-void
.end method

.method public onCallHeld(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .parameter "call"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    return-void
.end method

.method public onCalling(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .parameter "call"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    return-void
.end method

.method public onChanged(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .parameter "call"

    .prologue
    return-void
.end method

.method public onError(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    .locals 0
    .parameter "call"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    return-void
.end method

.method public onReadyToCall(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .parameter "call"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    return-void
.end method

.method public onRinging(Landroid/net/sip/SipAudioCall;Landroid/net/sip/SipProfile;)V
    .locals 0
    .parameter "call"
    .parameter "caller"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    return-void
.end method

.method public onRingingBack(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .parameter "call"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    return-void
.end method
