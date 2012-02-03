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
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBusy(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 134
    return-void
.end method

.method public onCallEnded(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 124
    return-void
.end method

.method public onCallEstablished(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 114
    return-void
.end method

.method public onCallHeld(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 144
    return-void
.end method

.method public onCalling(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 83
    return-void
.end method

.method public onChanged(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 166
    return-void
.end method

.method public onError(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    .locals 0
    .parameter "call"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 157
    return-void
.end method

.method public onReadyToCall(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 73
    return-void
.end method

.method public onRinging(Landroid/net/sip/SipAudioCall;Landroid/net/sip/SipProfile;)V
    .locals 0
    .parameter "call"
    .parameter "caller"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 94
    return-void
.end method

.method public onRingingBack(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 104
    return-void
.end method
