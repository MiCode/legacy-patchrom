.class Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
.super Lcom/android/internal/telephony/sip/SipConnectionBase;
.source "SipPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/sip/SipPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipConnection"
.end annotation


# instance fields
.field private mAdapter:Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

.field private mIncoming:Z

.field private mOriginalNumber:Ljava/lang/String;

.field private mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

.field private mPeer:Landroid/net/sip/SipProfile;

.field private mSipAudioCall:Landroid/net/sip/SipAudioCall;

.field private mState:Lcom/android/internal/telephony/Call$State;

.field final synthetic this$0:Lcom/android/internal/telephony/sip/SipPhone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$SipCall;Landroid/net/sip/SipProfile;)V
    .locals 1
    .parameter
    .parameter "owner"
    .parameter "callee"

    .prologue
    .line 713
    #calls: Lcom/android/internal/telephony/sip/SipPhone;->getUriString(Landroid/net/sip/SipProfile;)Ljava/lang/String;
    invoke-static {p1, p3}, Lcom/android/internal/telephony/sip/SipPhone;->access$1300(Lcom/android/internal/telephony/sip/SipPhone;Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$SipCall;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    .line 714
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$SipCall;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "owner"
    .parameter "callee"
    .parameter "originalNumber"

    .prologue
    .line 705
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    .line 706
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/sip/SipConnectionBase;-><init>(Ljava/lang/String;)V

    .line 626
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    .line 629
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mIncoming:Z

    .line 631
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;-><init>(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mAdapter:Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

    .line 707
    iput-object p2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 708
    iput-object p3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Landroid/net/sip/SipProfile;

    .line 709
    iput-object p4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOriginalNumber:Ljava/lang/String;

    .line 710
    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/Call$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Landroid/net/sip/SipAudioCall;
    .locals 1
    .parameter "x0"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Landroid/net/sip/SipProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    .locals 1
    .parameter "x0"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method


# virtual methods
.method acceptCall()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 737
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/net/sip/SipAudioCall;->answerCall(I)V
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    return-void

    .line 738
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 739
    .local v0, e:Landroid/net/sip/SipException;
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acceptCall(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method changeOwner(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V
    .locals 0
    .parameter "owner"

    .prologue
    .line 744
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 745
    return-void
.end method

.method dial()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 753
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 754
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #getter for: Lcom/android/internal/telephony/sip/SipPhone;->mSipManager:Landroid/net/sip/SipManager;
    invoke-static {v0}, Lcom/android/internal/telephony/sip/SipPhone;->access$1400(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/net/sip/SipManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #getter for: Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;
    invoke-static {v1}, Lcom/android/internal/telephony/sip/SipPhone;->access$100(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/net/sip/SipProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Landroid/net/sip/SipProfile;

    const/4 v3, 0x0

    const/16 v4, 0xf

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/sip/SipManager;->makeAudioCall(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Landroid/net/sip/SipAudioCall$Listener;I)Landroid/net/sip/SipAudioCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    .line 756
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mAdapter:Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;)V

    .line 757
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOriginalNumber:Ljava/lang/String;

    return-object v0
.end method

.method getAudioGroup()Landroid/net/rtp/AudioGroup;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 749
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0}, Landroid/net/sip/SipAudioCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getCall()Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 718
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Landroid/net/sip/SipProfile;

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 719
    .local v0, displayName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method getMute()Z
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0}, Landroid/net/sip/SipAudioCall;->isMuted()Z

    move-result v0

    goto :goto_0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 725
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    return v0
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .prologue
    .line 882
    const/4 v0, 0x0

    return-object v0
.end method

.method public hangup()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 826
    const-class v2, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v2

    .line 827
    :try_start_0
    const-string v3, "SipPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hangup conn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Landroid/net/sip/SipProfile;

    invoke-virtual {v5}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": on phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    :goto_0
    return-void

    .line 832
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    .line 833
    .local v1, sipAudioCall:Landroid/net/sip/SipAudioCall;
    if-eqz v1, :cond_1

    .line 834
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;)V

    .line 835
    invoke-virtual {v1}, Landroid/net/sip/SipAudioCall;->endCall()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/net/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0

    .line 840
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mAdapter:Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_5

    :cond_2
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onCallEnded(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 845
    monitor-exit v2

    goto :goto_0

    .end local v1           #sipAudioCall:Landroid/net/sip/SipAudioCall;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 837
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 838
    .local v0, e:Landroid/net/sip/SipException;
    :try_start_3
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hangup(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 840
    .end local v0           #e:Landroid/net/sip/SipException;
    :catchall_1
    move-exception v3

    :try_start_4
    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mAdapter:Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_4

    :cond_3
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    :goto_2
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onCallEnded(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    throw v3

    :cond_4
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_2

    .restart local v1       #sipAudioCall:Landroid/net/sip/SipAudioCall;
    :cond_5
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method hold()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 760
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 762
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/net/sip/SipAudioCall;->holdCall(I)V
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    return-void

    .line 763
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 764
    .local v0, e:Landroid/net/sip/SipException;
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hold(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method initIncomingCall(Landroid/net/sip/SipAudioCall;Lcom/android/internal/telephony/Call$State;)V
    .locals 1
    .parameter "sipAudioCall"
    .parameter "newState"

    .prologue
    .line 729
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 730
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    .line 731
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mAdapter:Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

    invoke-virtual {p1, v0}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;)V

    .line 732
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mIncoming:Z

    .line 733
    return-void
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mIncoming:Z

    return v0
.end method

.method public separate()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 850
    const-class v4, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v4

    .line 851
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-object v1, v3

    .line 854
    .local v1, call:Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v5, :cond_1

    .line 855
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot put conn back to a call in non-idle state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 877
    .end local v1           #call:Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 851
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-object v1, v3

    goto :goto_0

    .line 859
    .restart local v1       #call:Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    :cond_1
    const-string v3, "SipPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "separate conn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Landroid/net/sip/SipProfile;

    invoke-virtual {v6}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " back to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 865
    .local v2, originalPhone:Lcom/android/internal/telephony/Phone;
    #calls: Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;
    invoke-static {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->access$1500(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)Landroid/net/rtp/AudioGroup;

    move-result-object v0

    .line 866
    .local v0, audioGroup:Landroid/net/rtp/AudioGroup;
    #calls: Lcom/android/internal/telephony/sip/SipPhone$SipCall;->add(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V
    invoke-static {v1, p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->access$1600(Lcom/android/internal/telephony/sip/SipPhone$SipCall;Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V

    .line 867
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v3, v0}, Landroid/net/sip/SipAudioCall;->setAudioGroup(Landroid/net/rtp/AudioGroup;)V

    .line 871
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 874
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .end local v1           #call:Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    check-cast v1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 875
    .restart local v1       #call:Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v3}, Landroid/net/sip/SipAudioCall;->startAudio()V

    .line 876
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->onConnectionStateChanged(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V

    .line 877
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 878
    return-void
.end method

.method setMute(Z)V
    .locals 1
    .parameter "muted"

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0}, Landroid/net/sip/SipAudioCall;->isMuted()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0}, Landroid/net/sip/SipAudioCall;->toggleMute()V

    .line 782
    :cond_0
    return-void
.end method

.method protected setState(Lcom/android/internal/telephony/Call$State;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_0

    .line 794
    :goto_0
    return-void

    .line 792
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipConnectionBase;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 793
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    goto :goto_0
.end method

.method unhold(Landroid/net/rtp/AudioGroup;)V
    .locals 4
    .parameter "audioGroup"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 769
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v1, p1}, Landroid/net/sip/SipAudioCall;->setAudioGroup(Landroid/net/rtp/AudioGroup;)V

    .line 770
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 772
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/net/sip/SipAudioCall;->continueCall(I)V
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    return-void

    .line 773
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 774
    .local v0, e:Landroid/net/sip/SipException;
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unhold(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
