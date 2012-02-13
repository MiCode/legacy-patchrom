.class abstract Lcom/android/internal/telephony/sip/SipConnectionBase;
.super Lcom/android/internal/telephony/Connection;
.source "SipConnectionBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/sip/SipConnectionBase$1;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SIP_CONN"


# instance fields
.field private connectTime:J

.field private connectTimeReal:J

.field private createTime:J

.field private dialString:Ljava/lang/String;

.field private disconnectTime:J

.field private duration:J

.field private holdingStartTime:J

.field private isIncoming:Z

.field private mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

.field private mSipAudioCall:Landroid/net/sip/SipAudioCall;

.field private nextPostDialChar:I

.field private postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field private postDialString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "dialString"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->duration:J

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->dialString:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->postDialString:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->isIncoming:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->createTime:J

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v0, "SIP_CONN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SipConn] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 0

    .prologue
    return-void
.end method

.method public getConnectTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->connectTime:J

    return-wide v0
.end method

.method public getConnectionIndex()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->createTime:J

    return-wide v0
.end method

.method public getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    return-object v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->disconnectTime:J

    return-wide v0
.end method

.method public getDurationMillis()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->connectTimeReal:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    move-wide v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->duration:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->connectTimeReal:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->duration:J

    goto :goto_0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->holdingStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    return v0
.end method

.method public getOldConnectionIndex()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method protected abstract getPhone()Lcom/android/internal/telephony/Phone;
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->postDialString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->postDialString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->nextPostDialChar:I

    if-gt v0, v1, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->postDialString:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->nextPostDialChar:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public proceedAfterWaitChar()V
    .locals 0

    .prologue
    return-void
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    return-void
.end method

.method setDisconnectCause(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .locals 0
    .parameter "cause"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    return-void
.end method

.method protected setState(Lcom/android/internal/telephony/Call$State;)V
    .locals 4
    .parameter "state"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/sip/SipConnectionBase$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->connectTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->connectTimeReal:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->connectTime:J

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->getDurationMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->duration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->disconnectTime:J

    goto :goto_0

    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->holdingStartTime:J

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
