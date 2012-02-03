.class abstract Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;
.super Landroid/net/sip/SipAudioCall$Listener;
.source "SipPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/sip/SipPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SipAudioCallAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/sip/SipPhone;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/sip/SipPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 903
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall$Listener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 903
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;-><init>(Lcom/android/internal/telephony/sip/SipPhone;)V

    return-void
.end method


# virtual methods
.method public onCallBusy(Landroid/net/sip/SipAudioCall;)V
    .locals 1
    .parameter "call"

    .prologue
    .line 916
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onCallEnded(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 917
    return-void
.end method

.method public onCallEnded(Landroid/net/sip/SipAudioCall;)V
    .locals 1
    .parameter "call"

    .prologue
    .line 909
    invoke-virtual {p1}, Landroid/net/sip/SipAudioCall;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onCallEnded(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 912
    return-void

    .line 909
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0
.end method

.method protected abstract onCallEnded(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
.end method

.method public onError(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    .locals 3
    .parameter "call"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 922
    packed-switch p2, :pswitch_data_0

    .line 951
    :pswitch_0
    const-string v0, "SipPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/net/sip/SipErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 955
    :goto_0
    return-void

    .line 924
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVER_UNREACHABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_0

    .line 927
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NUMBER_UNREACHABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_0

    .line 930
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_0

    .line 934
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->TIMED_OUT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_0

    .line 937
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOST_SIGNAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_0

    .line 940
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_CREDENTIALS:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_0

    .line 943
    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_NETWORK:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_0

    .line 946
    :pswitch_8
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVER_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_0

    .line 922
    nop

    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_1
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method

.method protected abstract onError(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
.end method
