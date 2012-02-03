.class public Landroid/net/sip/SipAudioCall;
.super Ljava/lang/Object;
.source "SipAudioCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/sip/SipAudioCall$Listener;
    }
.end annotation


# static fields
.field private static final DONT_RELEASE_SOCKET:Z = false

.field private static final RELEASE_SOCKET:Z = true

.field private static final SESSION_TIMEOUT:I = 0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioGroup:Landroid/net/rtp/AudioGroup;

.field private mAudioStream:Landroid/net/rtp/AudioStream;

.field private mContext:Landroid/content/Context;

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mHold:Z

.field private mInCall:Z

.field private mListener:Landroid/net/sip/SipAudioCall$Listener;

.field private mLocalProfile:Landroid/net/sip/SipProfile;

.field private mMuted:Z

.field private mPeerSd:Ljava/lang/String;

.field private mPendingCallRequest:Landroid/net/sip/SipProfile;

.field private mSessionId:J

.field private mSipSession:Landroid/net/sip/SipSession;

.field private mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWm:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/sip/SipProfile;)V
    .locals 3
    .parameter "context"
    .parameter "localProfile"

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    .line 180
    iput-boolean v2, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    .line 181
    iput-boolean v2, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    .line 182
    iput-boolean v2, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    .line 188
    iput v2, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    .line 197
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    .line 198
    iput-object p2, p0, Landroid/net/sip/SipAudioCall;->mLocalProfile:Landroid/net/sip/SipProfile;

    .line 199
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mWm:Landroid/net/wifi/WifiManager;

    .line 200
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/net/sip/SipAudioCall;->onError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/sip/SipAudioCall;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    return v0
.end method

.method static synthetic access$400(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/net/sip/SipAudioCall;->createAnswer(Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/sip/SipAudioCall;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Landroid/net/sip/SipAudioCall;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    return v0
.end method

.method static synthetic access$700(Landroid/net/sip/SipAudioCall;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/net/sip/SipAudioCall;->close(Z)V

    return-void
.end method

.method static synthetic access$800(Landroid/net/sip/SipAudioCall;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    return v0
.end method

.method static synthetic access$802(Landroid/net/sip/SipAudioCall;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    return p1
.end method

.method static synthetic access$902(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method private declared-synchronized close(Z)V
    .locals 2
    .parameter "closeRtp"

    .prologue
    .line 288
    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->stopCall(Z)V

    .line 290
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    .line 296
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession;->setListener(Landroid/net/sip/SipSession$Listener;)V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :cond_1
    monitor-exit p0

    return-void

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createAnswer(Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;
    .locals 23
    .parameter "offerSd"

    .prologue
    .line 678
    new-instance v15, Landroid/net/sip/SimpleSessionDescription;

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/net/sip/SimpleSessionDescription;-><init>(Ljava/lang/String;)V

    .line 680
    .local v15, offer:Landroid/net/sip/SimpleSessionDescription;
    new-instance v5, Landroid/net/sip/SimpleSessionDescription;

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    move-wide/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v21

    move-object v0, v5

    move-wide/from16 v1, v19

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/net/sip/SimpleSessionDescription;-><init>(JLjava/lang/String;)V

    .line 682
    .local v5, answer:Landroid/net/sip/SimpleSessionDescription;
    const/4 v8, 0x0

    .line 683
    .local v8, codec:Landroid/net/rtp/AudioCodec;
    invoke-virtual {v15}, Landroid/net/sip/SimpleSessionDescription;->getMedia()[Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v6

    .local v6, arr$:[Landroid/net/sip/SimpleSessionDescription$Media;
    array-length v12, v6

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v11, v10

    .end local v6           #arr$:[Landroid/net/sip/SimpleSessionDescription$Media;
    .end local v10           #i$:I
    .end local v12           #len$:I
    .local v11, i$:I
    :goto_0
    if-ge v11, v12, :cond_9

    aget-object v14, v6, v11

    .line 684
    .local v14, media:Landroid/net/sip/SimpleSessionDescription$Media;
    if-nez v8, :cond_8

    invoke-virtual {v14}, Landroid/net/sip/SimpleSessionDescription$Media;->getPort()I

    move-result v19

    if-lez v19, :cond_8

    const-string v19, "audio"

    invoke-virtual {v14}, Landroid/net/sip/SimpleSessionDescription$Media;->getType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    const-string v19, "RTP/AVP"

    invoke-virtual {v14}, Landroid/net/sip/SimpleSessionDescription$Media;->getProtocol()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 688
    invoke-virtual {v14}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    move-result-object v7

    .local v7, arr$:[I
    array-length v13, v7

    .local v13, len$:I
    const/4 v10, 0x0

    .end local v11           #i$:I
    .restart local v10       #i$:I
    :goto_1
    if-ge v10, v13, :cond_0

    aget v18, v7, v10

    .line 689
    .local v18, type:I
    move-object v0, v14

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    move-result-object v19

    move-object v0, v14

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Media;->getFmtp(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Landroid/net/rtp/AudioCodec;->getCodec(ILjava/lang/String;Ljava/lang/String;)Landroid/net/rtp/AudioCodec;

    move-result-object v8

    .line 691
    if-eqz v8, :cond_2

    .line 695
    .end local v18           #type:I
    :cond_0
    if-eqz v8, :cond_8

    .line 696
    const-string v19, "audio"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/rtp/AudioStream;->getLocalPort()I

    move-result v20

    const/16 v21, 0x1

    const-string v22, "RTP/AVP"

    move-object v0, v5

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v16

    .line 698
    .local v16, reply:Landroid/net/sip/SimpleSessionDescription$Media;
    move-object v0, v8

    iget v0, v0, Landroid/net/rtp/AudioCodec;->type:I

    move/from16 v19, v0

    move-object v0, v8

    iget-object v0, v0, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object v0, v8

    iget-object v0, v0, Landroid/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-virtual {v14}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    move-result-object v7

    array-length v13, v7

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v13, :cond_3

    aget v18, v7, v10

    .line 702
    .restart local v18       #type:I
    move-object v0, v14

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    move-result-object v17

    .line 703
    .local v17, rtpmap:Ljava/lang/String;
    move-object v0, v8

    iget v0, v0, Landroid/net/rtp/AudioCodec;->type:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    if-eqz v17, :cond_1

    const-string/jumbo v19, "telephone-event"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 705
    move-object v0, v14

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Media;->getFmtp(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 701
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 688
    .end local v16           #reply:Landroid/net/sip/SimpleSessionDescription$Media;
    .end local v17           #rtpmap:Ljava/lang/String;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 711
    .end local v18           #type:I
    .restart local v16       #reply:Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_3
    const-string/jumbo v19, "recvonly"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_5

    .line 712
    const-string/jumbo v19, "sendonly"

    const-string v20, ""

    move-object v0, v5

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    .end local v7           #arr$:[I
    :cond_4
    :goto_3
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    .end local v10           #i$:I
    .restart local v11       #i$:I
    goto/16 :goto_0

    .line 713
    .end local v11           #i$:I
    .restart local v7       #arr$:[I
    .restart local v10       #i$:I
    :cond_5
    const-string/jumbo v19, "sendonly"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_6

    .line 714
    const-string/jumbo v19, "recvonly"

    const-string v20, ""

    move-object v0, v5

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 715
    :cond_6
    const-string/jumbo v19, "recvonly"

    move-object v0, v15

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_7

    .line 716
    const-string/jumbo v19, "sendonly"

    const-string v20, ""

    move-object v0, v5

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 717
    :cond_7
    const-string/jumbo v19, "sendonly"

    move-object v0, v15

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_4

    .line 718
    const-string/jumbo v19, "recvonly"

    const-string v20, ""

    move-object v0, v5

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 724
    .end local v7           #arr$:[I
    .end local v10           #i$:I
    .end local v13           #len$:I
    .end local v16           #reply:Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_8
    invoke-virtual {v14}, Landroid/net/sip/SimpleSessionDescription$Media;->getType()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual {v14}, Landroid/net/sip/SimpleSessionDescription$Media;->getProtocol()Ljava/lang/String;

    move-result-object v22

    move-object v0, v5

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v16

    .line 726
    .restart local v16       #reply:Landroid/net/sip/SimpleSessionDescription$Media;
    invoke-virtual {v14}, Landroid/net/sip/SimpleSessionDescription$Media;->getFormats()[Ljava/lang/String;

    move-result-object v7

    .local v7, arr$:[Ljava/lang/String;
    array-length v13, v7

    .restart local v13       #len$:I
    const/4 v10, 0x0

    .restart local v10       #i$:I
    :goto_4
    if-ge v10, v13, :cond_4

    aget-object v9, v7, v10

    .line 727
    .local v9, format:Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object v1, v9

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/net/sip/SimpleSessionDescription$Media;->setFormat(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 730
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v9           #format:Ljava/lang/String;
    .end local v10           #i$:I
    .end local v13           #len$:I
    .end local v14           #media:Landroid/net/sip/SimpleSessionDescription$Media;
    .end local v16           #reply:Landroid/net/sip/SimpleSessionDescription$Media;
    .restart local v11       #i$:I
    :cond_9
    if-nez v8, :cond_a

    .line 731
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string v20, "Reject SDP: no suitable codecs"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 733
    :cond_a
    return-object v5
.end method

.method private createContinueOffer()Landroid/net/sip/SimpleSessionDescription;
    .locals 8

    .prologue
    .line 743
    new-instance v3, Landroid/net/sip/SimpleSessionDescription;

    iget-wide v4, p0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Landroid/net/sip/SimpleSessionDescription;-><init>(JLjava/lang/String;)V

    .line 745
    .local v3, offer:Landroid/net/sip/SimpleSessionDescription;
    const-string v4, "audio"

    iget-object v5, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v5}, Landroid/net/rtp/AudioStream;->getLocalPort()I

    move-result v5

    const/4 v6, 0x1

    const-string v7, "RTP/AVP"

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v2

    .line 747
    .local v2, media:Landroid/net/sip/SimpleSessionDescription$Media;
    iget-object v4, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v4}, Landroid/net/rtp/AudioStream;->getCodec()Landroid/net/rtp/AudioCodec;

    move-result-object v0

    .line 748
    .local v0, codec:Landroid/net/rtp/AudioCodec;
    iget v4, v0, Landroid/net/rtp/AudioCodec;->type:I

    iget-object v5, v0, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    iget-object v6, v0, Landroid/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 749
    iget-object v4, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v4}, Landroid/net/rtp/AudioStream;->getDtmfType()I

    move-result v1

    .line 750
    .local v1, dtmfType:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 751
    const-string/jumbo v4, "telephone-event/8000"

    const-string v5, "0-15"

    invoke-virtual {v2, v1, v4, v5}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 753
    :cond_0
    return-object v3
.end method

.method private createHoldOffer()Landroid/net/sip/SimpleSessionDescription;
    .locals 3

    .prologue
    .line 737
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createContinueOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object v0

    .line 738
    .local v0, offer:Landroid/net/sip/SimpleSessionDescription;
    const-string/jumbo v1, "sendonly"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    return-object v0
.end method

.method private createListener()Landroid/net/sip/SipSession$Listener;
    .locals 1

    .prologue
    .line 351
    new-instance v0, Landroid/net/sip/SipAudioCall$1;

    invoke-direct {v0, p0}, Landroid/net/sip/SipAudioCall$1;-><init>(Landroid/net/sip/SipAudioCall;)V

    return-object v0
.end method

.method private createOffer()Landroid/net/sip/SimpleSessionDescription;
    .locals 11

    .prologue
    .line 665
    new-instance v6, Landroid/net/sip/SimpleSessionDescription;

    iget-wide v7, p0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Landroid/net/sip/SimpleSessionDescription;-><init>(JLjava/lang/String;)V

    .line 667
    .local v6, offer:Landroid/net/sip/SimpleSessionDescription;
    invoke-static {}, Landroid/net/rtp/AudioCodec;->getCodecs()[Landroid/net/rtp/AudioCodec;

    move-result-object v2

    .line 668
    .local v2, codecs:[Landroid/net/rtp/AudioCodec;
    const-string v7, "audio"

    iget-object v8, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v8}, Landroid/net/rtp/AudioStream;->getLocalPort()I

    move-result v8

    const/4 v9, 0x1

    const-string v10, "RTP/AVP"

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v5

    .line 670
    .local v5, media:Landroid/net/sip/SimpleSessionDescription$Media;
    invoke-static {}, Landroid/net/rtp/AudioCodec;->getCodecs()[Landroid/net/rtp/AudioCodec;

    move-result-object v0

    .local v0, arr$:[Landroid/net/rtp/AudioCodec;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 671
    .local v1, codec:Landroid/net/rtp/AudioCodec;
    iget v7, v1, Landroid/net/rtp/AudioCodec;->type:I

    iget-object v8, v1, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    iget-object v9, v1, Landroid/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    invoke-virtual {v5, v7, v8, v9}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 670
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 673
    .end local v1           #codec:Landroid/net/rtp/AudioCodec;
    :cond_0
    const/16 v7, 0x7f

    const-string/jumbo v8, "telephone-event/8000"

    const-string v9, "0-15"

    invoke-virtual {v5, v7, v8, v9}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 674
    return-object v6
.end method

.method private getLocalIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-virtual {v0}, Landroid/net/sip/SipSession;->getLocalIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPeerProfile(Landroid/net/sip/SipSession;)Landroid/net/sip/SipProfile;
    .locals 1
    .parameter "session"

    .prologue
    .line 1064
    invoke-virtual {p1}, Landroid/net/sip/SipSession;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method private grabWifiHighPerfLock()V
    .locals 3

    .prologue
    .line 757
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_0

    .line 758
    sget-object v0, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    const-string v1, "acquire wifi high perf lock"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x3

    sget-object v2, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 762
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 764
    :cond_0
    return-void
.end method

.method private isSpeakerOn()Z
    .locals 2

    .prologue
    .line 813
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method private isWifiOn()Z
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onError(ILjava/lang/String;)V
    .locals 5
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 496
    sget-object v2, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sip session error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/net/sip/SipErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iput p1, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    .line 499
    iput-object p2, p0, Landroid/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    .line 500
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;

    .line 501
    .local v0, listener:Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    .line 503
    :try_start_0
    invoke-virtual {v0, p0, p1, p2}, Landroid/net/sip/SipAudioCall$Listener;->onError(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :cond_0
    :goto_0
    monitor-enter p0

    .line 509
    const/16 v2, -0xa

    if-eq p1, v2, :cond_1

    :try_start_1
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->isInCall()Z

    move-result v2

    if-nez v2, :cond_2

    .line 511
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/sip/SipAudioCall;->close(Z)V

    .line 513
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    return-void

    .line 504
    :catch_0
    move-exception v1

    .line 505
    .local v1, t:Ljava/lang/Throwable;
    sget-object v2, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onError(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 513
    .end local v1           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private releaseWifiHighPerfLock()V
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    .line 768
    sget-object v0, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release wifi high perf lock"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 770
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 772
    :cond_0
    return-void
.end method

.method private setAudioGroupMode()V
    .locals 2

    .prologue
    .line 1024
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    .line 1025
    .local v0, audioGroup:Landroid/net/rtp/AudioGroup;
    if-eqz v0, :cond_0

    .line 1026
    iget-boolean v1, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-eqz v1, :cond_1

    .line 1027
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    .line 1036
    :cond_0
    :goto_0
    return-void

    .line 1028
    :cond_1
    iget-boolean v1, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    if-eqz v1, :cond_2

    .line 1029
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_0

    .line 1030
    :cond_2
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->isSpeakerOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1031
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_0

    .line 1033
    :cond_3
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_0
.end method

.method private declared-synchronized startAudioInternal()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 930
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 931
    sget-object v17, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "startAudioInternal() mPeerSd = null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "mPeerSd = null"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 930
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 935
    :cond_0
    const/16 v17, 0x0

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/sip/SipAudioCall;->stopCall(Z)V

    .line 936
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/sip/SipAudioCall;->mInCall:Z

    .line 939
    new-instance v13, Landroid/net/sip/SimpleSessionDescription;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/sip/SimpleSessionDescription;-><init>(Ljava/lang/String;)V

    .line 941
    .local v13, offer:Landroid/net/sip/SimpleSessionDescription;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    move-object v15, v0

    .line 942
    .local v15, stream:Landroid/net/rtp/AudioStream;
    const/4 v7, 0x0

    .line 943
    .local v7, codec:Landroid/net/rtp/AudioCodec;
    invoke-virtual {v13}, Landroid/net/sip/SimpleSessionDescription;->getMedia()[Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v4

    .local v4, arr$:[Landroid/net/sip/SimpleSessionDescription$Media;
    array-length v10, v4

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v9, v8

    .end local v4           #arr$:[Landroid/net/sip/SimpleSessionDescription$Media;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .local v9, i$:I
    :goto_0
    if-ge v9, v10, :cond_6

    aget-object v12, v4, v9

    .line 944
    .local v12, media:Landroid/net/sip/SimpleSessionDescription$Media;
    if-nez v7, :cond_c

    invoke-virtual {v12}, Landroid/net/sip/SimpleSessionDescription$Media;->getPort()I

    move-result v17

    if-lez v17, :cond_c

    const-string v17, "audio"

    invoke-virtual {v12}, Landroid/net/sip/SimpleSessionDescription$Media;->getType()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    const-string v17, "RTP/AVP"

    invoke-virtual {v12}, Landroid/net/sip/SimpleSessionDescription$Media;->getProtocol()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 948
    invoke-virtual {v12}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    move-result-object v5

    .local v5, arr$:[I
    array-length v11, v5

    .local v11, len$:I
    const/4 v8, 0x0

    .end local v9           #i$:I
    .restart local v8       #i$:I
    :goto_1
    if-ge v8, v11, :cond_1

    aget v16, v5, v8

    .line 949
    .local v16, type:I
    move-object v0, v12

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    move-result-object v17

    move-object v0, v12

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Media;->getFmtp(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Landroid/net/rtp/AudioCodec;->getCodec(ILjava/lang/String;Ljava/lang/String;)Landroid/net/rtp/AudioCodec;

    move-result-object v7

    .line 951
    if-eqz v7, :cond_4

    .line 956
    .end local v16           #type:I
    :cond_1
    if-eqz v7, :cond_c

    .line 958
    invoke-virtual {v12}, Landroid/net/sip/SimpleSessionDescription$Media;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 959
    .local v3, address:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 960
    invoke-virtual {v13}, Landroid/net/sip/SimpleSessionDescription;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 962
    :cond_2
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v17

    invoke-virtual {v12}, Landroid/net/sip/SimpleSessionDescription$Media;->getPort()I

    move-result v18

    move-object v0, v15

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/net/rtp/AudioStream;->associate(Ljava/net/InetAddress;I)V

    .line 965
    const/16 v17, -0x1

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioStream;->setDtmfType(I)V

    .line 966
    invoke-virtual {v15, v7}, Landroid/net/rtp/AudioStream;->setCodec(Landroid/net/rtp/AudioCodec;)V

    .line 968
    invoke-virtual {v12}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    move-result-object v4

    .end local v5           #arr$:[I
    .local v4, arr$:[I
    array-length v10, v4

    .end local v11           #len$:I
    .restart local v10       #len$:I
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v10, :cond_5

    aget v16, v4, v8

    .line 969
    .restart local v16       #type:I
    move-object v0, v12

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    move-result-object v14

    .line 970
    .local v14, rtpmap:Ljava/lang/String;
    move-object v0, v7

    iget v0, v0, Landroid/net/rtp/AudioCodec;->type:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    if-eqz v14, :cond_3

    const-string/jumbo v17, "telephone-event"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 972
    invoke-virtual/range {v15 .. v16}, Landroid/net/rtp/AudioStream;->setDtmfType(I)V

    .line 968
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 948
    .end local v3           #address:Ljava/lang/String;
    .end local v4           #arr$:[I
    .end local v10           #len$:I
    .end local v14           #rtpmap:Ljava/lang/String;
    .restart local v5       #arr$:[I
    .restart local v11       #len$:I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 977
    .end local v5           #arr$:[I
    .end local v11           #len$:I
    .end local v16           #type:I
    .restart local v3       #address:Ljava/lang/String;
    .restart local v4       #arr$:[I
    .restart local v10       #len$:I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/sip/SipAudioCall;->mHold:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 978
    const/16 v17, 0x0

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioStream;->setMode(I)V

    .line 994
    .end local v3           #address:Ljava/lang/String;
    .end local v4           #arr$:[I
    .end local v8           #i$:I
    .end local v10           #len$:I
    .end local v12           #media:Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_6
    :goto_3
    if-nez v7, :cond_d

    .line 995
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Reject SDP: no suitable codecs"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 979
    .restart local v3       #address:Ljava/lang/String;
    .restart local v4       #arr$:[I
    .restart local v8       #i$:I
    .restart local v10       #len$:I
    .restart local v12       #media:Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_7
    const-string/jumbo v17, "recvonly"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_8

    .line 980
    const/16 v17, 0x1

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioStream;->setMode(I)V

    goto :goto_3

    .line 981
    :cond_8
    const-string/jumbo v17, "sendonly"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_9

    .line 982
    const/16 v17, 0x2

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioStream;->setMode(I)V

    goto :goto_3

    .line 983
    :cond_9
    const-string/jumbo v17, "recvonly"

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_a

    .line 984
    const/16 v17, 0x1

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioStream;->setMode(I)V

    goto :goto_3

    .line 985
    :cond_a
    const-string/jumbo v17, "sendonly"

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_b

    .line 986
    const/16 v17, 0x2

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioStream;->setMode(I)V

    goto :goto_3

    .line 988
    :cond_b
    const/16 v17, 0x0

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioStream;->setMode(I)V

    goto :goto_3

    .line 943
    .end local v3           #address:Ljava/lang/String;
    .end local v4           #arr$:[I
    .end local v8           #i$:I
    .end local v10           #len$:I
    :cond_c
    add-int/lit8 v8, v9, 0x1

    .restart local v8       #i$:I
    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto/16 :goto_0

    .line 998
    .end local v9           #i$:I
    .end local v12           #media:Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->isWifiOn()Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-direct/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->grabWifiHighPerfLock()V

    .line 1000
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/sip/SipAudioCall;->mHold:Z

    move/from16 v17, v0

    if-nez v17, :cond_f

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "audio"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    const/16 v17, 0x0

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 1011
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v6

    .line 1012
    .local v6, audioGroup:Landroid/net/rtp/AudioGroup;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/sip/SipAudioCall;->mHold:Z

    move/from16 v17, v0

    if-eqz v17, :cond_10

    .line 1019
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1020
    monitor-exit p0

    return-void

    .line 1016
    :cond_10
    if-nez v6, :cond_11

    :try_start_2
    new-instance v6, Landroid/net/rtp/AudioGroup;

    .end local v6           #audioGroup:Landroid/net/rtp/AudioGroup;
    invoke-direct {v6}, Landroid/net/rtp/AudioGroup;-><init>()V

    .line 1017
    .restart local v6       #audioGroup:Landroid/net/rtp/AudioGroup;
    :cond_11
    invoke-virtual {v15, v6}, Landroid/net/rtp/AudioStream;->join(Landroid/net/rtp/AudioGroup;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method private stopCall(Z)V
    .locals 3
    .parameter "releaseSocket"

    .prologue
    const/4 v2, 0x0

    .line 1039
    sget-object v0, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop audiocall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->releaseWifiHighPerfLock()V

    .line 1041
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v0, v2}, Landroid/net/rtp/AudioStream;->join(Landroid/net/rtp/AudioGroup;)V

    .line 1044
    if-eqz p1, :cond_0

    .line 1045
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v0}, Landroid/net/rtp/AudioStream;->release()V

    .line 1046
    iput-object v2, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    .line 1049
    :cond_0
    return-void
.end method

.method private throwSipException(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "throwable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1056
    instance-of v0, p1, Landroid/net/sip/SipException;

    if-eqz v0, :cond_0

    .line 1057
    check-cast p1, Landroid/net/sip/SipException;

    .end local p1
    throw p1

    .line 1059
    .restart local p1
    :cond_0
    new-instance v0, Landroid/net/sip/SipException;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public answerCall(I)V
    .locals 3
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 629
    monitor-enter p0

    .line 630
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-nez v1, :cond_0

    .line 631
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "No call to answer"

    invoke-direct {v1, v2}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 640
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 634
    :cond_0
    :try_start_1
    new-instance v1, Landroid/net/rtp/AudioStream;

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/rtp/AudioStream;-><init>(Ljava/net/InetAddress;)V

    iput-object v1, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    .line 636
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/net/sip/SipAudioCall;->createAnswer(Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/net/sip/SipSession;->answerCall(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 640
    :try_start_2
    monitor-exit p0

    .line 641
    return-void

    .line 637
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 638
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "answerCall()"

    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public attachCall(Landroid/net/sip/SipSession;Ljava/lang/String;)V
    .locals 4
    .parameter "session"
    .parameter "sessionDescription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    const-string v1, "attachCall()"

    .line 527
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 528
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "VOIP API is not supported"

    invoke-direct {v1, v2}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 531
    :cond_0
    monitor-enter p0

    .line 532
    :try_start_0
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    .line 533
    iput-object p2, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    .line 534
    sget-object v1, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachCall()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    :try_start_1
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createListener()Landroid/net/sip/SipSession$Listener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/sip/SipSession;->setListener(Landroid/net/sip/SipSession$Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 541
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 542
    return-void

    .line 537
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 538
    .local v0, e:Ljava/lang/Throwable;
    sget-object v1, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    const-string v2, "attachCall()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 539
    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->throwSipException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 541
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->close(Z)V

    .line 285
    return-void
.end method

.method public continueCall(I)V
    .locals 2
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 656
    monitor-enter p0

    .line 657
    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-nez v0, :cond_0

    monitor-exit p0

    .line 662
    :goto_0
    return-void

    .line 658
    :cond_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createContinueOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/net/sip/SipSession;->changeCall(Ljava/lang/String;I)V

    .line 659
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    .line 660
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V

    .line 661
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public endCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 584
    monitor-enter p0

    .line 585
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->stopCall(Z)V

    .line 586
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    .line 589
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-virtual {v0}, Landroid/net/sip/SipSession;->endCall()V

    .line 590
    :cond_0
    monitor-exit p0

    .line 591
    return-void

    .line 590
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioGroup()Landroid/net/rtp/AudioGroup;
    .locals 1

    .prologue
    .line 884
    monitor-enter p0

    .line 885
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioGroup:Landroid/net/rtp/AudioGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioGroup:Landroid/net/rtp/AudioGroup;

    monitor-exit p0

    .line 886
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 887
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 886
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v0}, Landroid/net/rtp/AudioStream;->getGroup()Landroid/net/rtp/AudioGroup;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method public getAudioStream()Landroid/net/rtp/AudioStream;
    .locals 1

    .prologue
    .line 864
    monitor-enter p0

    .line 865
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    monitor-exit p0

    return-object v0

    .line 866
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLocalProfile()Landroid/net/sip/SipProfile;
    .locals 1

    .prologue
    .line 308
    monitor-enter p0

    .line 309
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mLocalProfile:Landroid/net/sip/SipProfile;

    monitor-exit p0

    return-object v0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPeerProfile()Landroid/net/sip/SipProfile;
    .locals 1

    .prologue
    .line 319
    monitor-enter p0

    .line 320
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-virtual {v0}, Landroid/net/sip/SipSession;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    goto :goto_0

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSipSession()Landroid/net/sip/SipSession;
    .locals 1

    .prologue
    .line 345
    monitor-enter p0

    .line 346
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    monitor-exit p0

    return-object v0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 331
    monitor-enter p0

    .line 332
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    .line 333
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-virtual {v0}, Landroid/net/sip/SipSession;->getState()I

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public holdCall(I)V
    .locals 2
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 606
    monitor-enter p0

    .line 607
    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 615
    :goto_0
    return-void

    .line 608
    :cond_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-nez v0, :cond_1

    .line 609
    new-instance v0, Landroid/net/sip/SipException;

    const-string v1, "Not in a call to hold call"

    invoke-direct {v0, v1}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 611
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createHoldOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/net/sip/SipSession;->changeCall(Ljava/lang/String;I)V

    .line 612
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    .line 613
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V

    .line 614
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isInCall()Z
    .locals 1

    .prologue
    .line 264
    monitor-enter p0

    .line 265
    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    monitor-exit p0

    return v0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isMuted()Z
    .locals 1

    .prologue
    .line 792
    monitor-enter p0

    .line 793
    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    monitor-exit p0

    return v0

    .line 794
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOnHold()Z
    .locals 1

    .prologue
    .line 275
    monitor-enter p0

    .line 276
    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    monitor-exit p0

    return v0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public makeCall(Landroid/net/sip/SipProfile;Landroid/net/sip/SipSession;I)V
    .locals 3
    .parameter "peerProfile"
    .parameter "sipSession"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 561
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 562
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "VOIP API is not supported"

    invoke-direct {v1, v2}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 565
    :cond_0
    monitor-enter p0

    .line 566
    :try_start_0
    iput-object p2, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    :try_start_1
    new-instance v1, Landroid/net/rtp/AudioStream;

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/rtp/AudioStream;-><init>(Ljava/net/InetAddress;)V

    iput-object v1, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    .line 570
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createListener()Landroid/net/sip/SipSession$Listener;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/sip/SipSession;->setListener(Landroid/net/sip/SipSession$Listener;)V

    .line 571
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1, p3}, Landroid/net/sip/SipSession;->makeCall(Landroid/net/sip/SipProfile;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 576
    :try_start_2
    monitor-exit p0

    .line 577
    return-void

    .line 573
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 574
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Landroid/net/sip/SipException;

    const-string/jumbo v2, "makeCall()"

    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 576
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public sendDtmf(I)V
    .locals 1
    .parameter "code"

    .prologue
    .line 827
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/sip/SipAudioCall;->sendDtmf(ILandroid/os/Message;)V

    .line 828
    return-void
.end method

.method public sendDtmf(ILandroid/os/Message;)V
    .locals 4
    .parameter "code"
    .parameter "result"

    .prologue
    .line 841
    monitor-enter p0

    .line 842
    :try_start_0
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    .line 843
    .local v0, audioGroup:Landroid/net/rtp/AudioGroup;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getState()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 845
    sget-object v1, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send DTMF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-virtual {v0, p1}, Landroid/net/rtp/AudioGroup;->sendDtmf(I)V

    .line 848
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 849
    :cond_1
    monitor-exit p0

    .line 850
    return-void

    .line 849
    .end local v0           #audioGroup:Landroid/net/rtp/AudioGroup;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAudioGroup(Landroid/net/rtp/AudioGroup;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 903
    monitor-enter p0

    .line 904
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v0}, Landroid/net/rtp/AudioStream;->getGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v0, p1}, Landroid/net/rtp/AudioStream;->join(Landroid/net/rtp/AudioGroup;)V

    .line 907
    :cond_0
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mAudioGroup:Landroid/net/rtp/AudioGroup;

    .line 908
    monitor-exit p0

    .line 909
    return-void

    .line 908
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setListener(Landroid/net/sip/SipAudioCall$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;Z)V

    .line 211
    return-void
.end method

.method public setListener(Landroid/net/sip/SipAudioCall$Listener;Z)V
    .locals 4
    .parameter "listener"
    .parameter "callbackImmediately"

    .prologue
    .line 224
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;

    .line 226
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    :try_start_0
    iget v2, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    if-eqz v2, :cond_2

    .line 229
    iget v2, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    iget-object v3, p0, Landroid/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, p0, v2, v3}, Landroid/net/sip/SipAudioCall$Listener;->onError(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 254
    .local v1, t:Ljava/lang/Throwable;
    sget-object v2, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setListener()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 230
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iget-boolean v2, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    if-eqz v2, :cond_4

    .line 231
    iget-boolean v2, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-eqz v2, :cond_3

    .line 232
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onCallHeld(Landroid/net/sip/SipAudioCall;)V

    goto :goto_0

    .line 234
    :cond_3
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onCallEstablished(Landroid/net/sip/SipAudioCall;)V

    goto :goto_0

    .line 237
    :cond_4
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getState()I

    move-result v0

    .line 238
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 240
    :pswitch_1
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onReadyToCall(Landroid/net/sip/SipAudioCall;)V

    goto :goto_0

    .line 243
    :pswitch_2
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v2

    invoke-virtual {p1, p0, v2}, Landroid/net/sip/SipAudioCall$Listener;->onRinging(Landroid/net/sip/SipAudioCall;Landroid/net/sip/SipProfile;)V

    goto :goto_0

    .line 246
    :pswitch_3
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onCalling(Landroid/net/sip/SipAudioCall;)V

    goto :goto_0

    .line 249
    :pswitch_4
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onRingingBack(Landroid/net/sip/SipAudioCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setSpeakerMode(Z)V
    .locals 2
    .parameter "speakerMode"

    .prologue
    .line 805
    monitor-enter p0

    .line 806
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 808
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V

    .line 809
    monitor-exit p0

    .line 810
    return-void

    .line 809
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startAudio()V
    .locals 3

    .prologue
    .line 921
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->startAudioInternal()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 927
    :goto_0
    return-void

    .line 922
    :catch_0
    move-exception v0

    .line 923
    .local v0, e:Ljava/net/UnknownHostException;
    const/4 v1, -0x7

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/net/sip/SipAudioCall;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 924
    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 925
    .local v0, e:Ljava/lang/Throwable;
    const/4 v1, -0x4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/net/sip/SipAudioCall;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public toggleMute()V
    .locals 1

    .prologue
    .line 780
    monitor-enter p0

    .line 781
    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    .line 782
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V

    .line 783
    monitor-exit p0

    .line 784
    return-void

    .line 781
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 783
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
