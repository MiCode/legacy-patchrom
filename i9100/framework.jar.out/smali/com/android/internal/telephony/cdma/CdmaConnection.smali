.class public Lcom/android/internal/telephony/cdma/CdmaConnection;
.super Lcom/android/internal/telephony/Connection;
.source "CdmaConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaConnection$1;,
        Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;
    }
.end annotation


# static fields
.field static final EVENT_DTMF_DONE:I = 0x1

.field static final EVENT_NEXT_POST_DIAL:I = 0x3

.field static final EVENT_PAUSE_DONE:I = 0x2

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field static final PAUSE_DELAY_MILLIS:I = 0x7d0

.field static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field address:Ljava/lang/String;

.field cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

.field cnapName:Ljava/lang/String;

.field cnapNamePresentation:I

.field connectTime:J

.field connectTimeReal:J

.field createTime:J

.field dialString:Ljava/lang/String;

.field disconnectTime:J

.field disconnected:Z

.field duration:J

.field h:Landroid/os/Handler;

.field holdingStartTime:J

.field index:I

.field isIncoming:Z

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field nextPostDialChar:I

.field numberPresentation:I

.field owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

.field parent:Lcom/android/internal/telephony/cdma/CdmaCall;

.field postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field postDialString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/cdma/CdmaCallTracker;I)V
    .locals 2
    .parameter "context"
    .parameter "dc"
    .parameter "ct"
    .parameter "index"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 77
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 78
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 79
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->numberPresentation:I

    .line 80
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapNamePresentation:I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->createWakeLock(Landroid/content/Context;)V

    .line 124
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->acquireWakeLock()V

    .line 126
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 127
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/cdma/CdmaConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->h:Landroid/os/Handler;

    .line 129
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    .line 131
    iget-boolean v0, p2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming:Z

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->createTime:J

    .line 133
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapName:Ljava/lang/String;

    .line 134
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapNamePresentation:I

    .line 135
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->numberPresentation:I

    .line 137
    iput p4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->index:I

    .line 139
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, p0, p2}, Lcom/android/internal/telephony/cdma/CdmaCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 141
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .locals 2
    .parameter "context"
    .parameter "cw"
    .parameter "ct"
    .parameter "parent"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 77
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 78
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 79
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->numberPresentation:I

    .line 80
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapNamePresentation:I

    .line 183
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->createWakeLock(Landroid/content/Context;)V

    .line 184
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->acquireWakeLock()V

    .line 186
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 187
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/cdma/CdmaConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->h:Landroid/os/Handler;

    .line 188
    iget-object v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    .line 189
    iget v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->numberPresentation:I

    .line 190
    iget-object v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapName:Ljava/lang/String;

    .line 191
    iget v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapNamePresentation:I

    .line 192
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->index:I

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming:Z

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->createTime:J

    .line 195
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->connectTime:J

    .line 196
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 197
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 198
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .locals 3
    .parameter "context"
    .parameter "dialString"
    .parameter "ct"
    .parameter "parent"

    .prologue
    const-string v2, "CDMA"

    .line 145
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 77
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 78
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 79
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->numberPresentation:I

    .line 80
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapNamePresentation:I

    .line 146
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->createWakeLock(Landroid/content/Context;)V

    .line 147
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->acquireWakeLock()V

    .line 149
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 150
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/cdma/CdmaConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->h:Landroid/os/Handler;

    .line 152
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->dialString:Ljava/lang/String;

    .line 153
    const-string v0, "CDMA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CDMAConn] CdmaConnection: dialString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->formatDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 155
    const-string v0, "CDMA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CDMAConn] CdmaConnection:formated dialString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    .line 158
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialString:Ljava/lang/String;

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->index:I

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming:Z

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapName:Ljava/lang/String;

    .line 164
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapNamePresentation:I

    .line 165
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->numberPresentation:I

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->createTime:J

    .line 168
    if-eqz p4, :cond_0

    .line 169
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 172
    iget-object v0, p4, Lcom/android/internal/telephony/cdma/CdmaCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    .line 173
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 818
    const-string v0, "acquireWakeLock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 820
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 813
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 814
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "CDMA"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 815
    return-void
.end method

.method private doDisconnect()V
    .locals 4

    .prologue
    .line 612
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->index:I

    .line 613
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->disconnectTime:J

    .line 614
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->connectTimeReal:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->duration:J

    .line 615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->disconnected:Z

    .line 616
    return-void
.end method

.method static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 205
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static findNextPCharOrNonPOrNonWCharIndex(Ljava/lang/String;I)I
    .locals 5
    .parameter "phoneNumber"
    .parameter "currIndex"

    .prologue
    .line 844
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isWait(C)Z

    move-result v3

    .line 845
    .local v3, wMatched:Z
    add-int/lit8 v1, p1, 0x1

    .line 846
    .local v1, index:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 847
    .local v2, length:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 848
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 850
    .local v0, cNext:C
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isWait(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 851
    const/4 v3, 0x1

    .line 855
    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isWait(C)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isPause(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 863
    .end local v0           #cNext:C
    :cond_1
    if-ge v1, v2, :cond_3

    add-int/lit8 v4, p1, 0x1

    if-le v1, v4, :cond_3

    if-nez v3, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isPause(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 865
    add-int/lit8 v4, p1, 0x1

    .line 867
    :goto_1
    return v4

    .line 858
    .restart local v0       #cNext:C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 859
    goto :goto_0

    .end local v0           #cNext:C
    :cond_3
    move v4, v1

    .line 867
    goto :goto_1
.end method

.method private static findPOrWCharToAppend(Ljava/lang/String;II)C
    .locals 3
    .parameter "phoneNumber"
    .parameter "currPwIndex"
    .parameter "nextNonPwCharIndex"

    .prologue
    .line 875
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 879
    .local v0, c:C
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isPause(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2c

    move v1, v2

    .line 887
    .local v1, ret:C
    :goto_0
    add-int/lit8 v2, p1, 0x1

    if-le p2, v2, :cond_0

    .line 888
    const/16 v1, 0x3b

    .line 890
    :cond_0
    return v1

    .line 879
    .end local v1           #ret:C
    :cond_1
    const/16 v2, 0x3b

    move v1, v2

    goto :goto_0
.end method

.method public static formatDialString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "phoneNumber"

    .prologue
    const/4 v7, 0x1

    .line 911
    if-nez p0, :cond_0

    .line 912
    const/4 v6, 0x0

    .line 945
    :goto_0
    return-object v6

    .line 914
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 915
    .local v2, length:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 917
    .local v5, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 919
    .local v1, currIndex:I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 920
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 921
    .local v0, c:C
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isPause(C)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isWait(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 922
    :cond_1
    sub-int v6, v2, v7

    if-ge v1, v6, :cond_2

    .line 924
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->findNextPCharOrNonPOrNonWCharIndex(Ljava/lang/String;I)I

    move-result v3

    .line 926
    .local v3, nextIndex:I
    if-ge v3, v2, :cond_3

    .line 927
    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;->findPOrWCharToAppend(Ljava/lang/String;II)C

    move-result v4

    .line 928
    .local v4, pC:C
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 932
    add-int/lit8 v6, v1, 0x1

    if-le v3, v6, :cond_2

    .line 933
    sub-int v1, v3, v7

    .line 943
    .end local v3           #nextIndex:I
    .end local v4           #pC:C
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 935
    .restart local v3       #nextIndex:I
    :cond_3
    if-ne v3, v2, :cond_2

    .line 937
    sub-int v1, v2, v7

    goto :goto_2

    .line 941
    .end local v3           #nextIndex:I
    :cond_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 945
    .end local v0           #c:C
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private isConnectingInOrOut()Z
    .locals 2

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPause(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 832
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWait(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 836
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 949
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CDMAConn] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    return-void
.end method

.method private onStartedHolding()V
    .locals 2

    .prologue
    .line 620
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->holdingStartTime:J

    .line 621
    return-void
.end method

.method private parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/cdma/CdmaCall;
    .locals 3
    .parameter "state"

    .prologue
    .line 766
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaConnection$1;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 783
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 770
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 779
    :goto_0
    return-object v0

    .line 774
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    goto :goto_0

    .line 779
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    goto :goto_0

    .line 766
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private processPostDialChar(C)Z
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x1

    .line 629
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->h:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    :goto_0
    move v0, v4

    .line 647
    :goto_1
    return v0

    .line 631
    :cond_0
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_1

    .line 632
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 637
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->h:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 639
    :cond_1
    const/16 v0, 0x3b

    if-ne p1, v0, :cond_2

    .line 640
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 641
    :cond_2
    const/16 v0, 0x4e

    if-ne p1, v0, :cond_3

    .line 642
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 644
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 824
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 825
    const-string/jumbo v1, "releaseWakeLock"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 826
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 828
    :cond_0
    monitor-exit v0

    .line 829
    return-void

    .line 828
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 5
    .parameter "s"

    .prologue
    const/4 v2, 0x4

    .line 794
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v1, :cond_2

    .line 796
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 797
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 798
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->h:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 802
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->h:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 803
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->h:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 804
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    .end local v0           #msg:Landroid/os/Message;
    :goto_1
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 810
    return-void

    .line 800
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->acquireWakeLock()V

    goto :goto_0

    .line 804
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 806
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->h:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 807
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    goto :goto_1
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    .prologue
    .line 380
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 381
    return-void
.end method

.method compareTo(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 4
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    .line 215
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-nez v1, :cond_0

    move v1, v3

    .line 221
    :goto_0
    return v1

    .line 220
    :cond_0
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v2, p1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, cAddress:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming:Z

    iget-boolean v2, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;
    .locals 4
    .parameter "causeCode"

    .prologue
    .line 400
    sparse-switch p1, :sswitch_data_0

    .line 434
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 435
    .local v0, phone:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 436
    .local v1, serviceState:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 437
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->POWER_OFF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 447
    .end local v0           #phone:Lcom/android/internal/telephony/cdma/CDMAPhone;
    .end local v1           #serviceState:I
    :goto_0
    return-object v2

    .line 402
    :sswitch_0
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 404
    :sswitch_1
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 406
    :sswitch_2
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 408
    :sswitch_3
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 410
    :sswitch_4
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 412
    :sswitch_5
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_LOCKED_UNTIL_POWER_CYCLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 414
    :sswitch_6
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 416
    :sswitch_7
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 418
    :sswitch_8
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 420
    :sswitch_9
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_SO_REJECT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 422
    :sswitch_a
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_RETRY_ORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 424
    :sswitch_b
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_ACCESS_FAILURE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 426
    :sswitch_c
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_PREEMPTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 428
    :sswitch_d
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_NOT_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 430
    :sswitch_e
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_ACCESS_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 438
    .restart local v0       #phone:Lcom/android/internal/telephony/cdma/CDMAPhone;
    .restart local v1       #serviceState:I
    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 440
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 441
    :cond_2
    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v3, :cond_3

    .line 443
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ICC_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 444
    :cond_3
    const/16 v2, 0x10

    if-ne p1, v2, :cond_4

    .line 445
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 447
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 400
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x22 -> :sswitch_1
        0x44 -> :sswitch_2
        0xf0 -> :sswitch_3
        0xf1 -> :sswitch_4
        0x3e8 -> :sswitch_5
        0x3e9 -> :sswitch_6
        0x3ea -> :sswitch_7
        0x3eb -> :sswitch_8
        0x3ec -> :sswitch_9
        0x3ed -> :sswitch_a
        0x3ee -> :sswitch_b
        0x3ef -> :sswitch_c
        0x3f0 -> :sswitch_d
        0x3f1 -> :sswitch_e
    .end sparse-switch
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method fakeHoldBeforeDial()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->detach(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 571
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 573
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onStartedHolding()V

    .line 574
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    const-string v0, "CDMA"

    const-string v1, "[CdmaConn] UNEXPECTED; mPartialWakeLock is held when finalizing."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    .line 695
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    return-object v0
.end method

.method getCDMAIndex()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 578
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->index:I

    if-ltz v0, :cond_0

    .line 579
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->index:I

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 581
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "CDMA connection index not assigned"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/cdma/CdmaCall;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    return-object v0
.end method

.method public getCallFailCause()I
    .locals 1

    .prologue
    .line 283
    const/16 v0, 0x10

    return v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapName:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapNamePresentation:I

    return v0
.end method

.method public getConnectTime()J
    .locals 2

    .prologue
    .line 250
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->connectTime:J

    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 246
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->createTime:J

    return-wide v0
.end method

.method public getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    return-object v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .prologue
    .line 254
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->disconnectTime:J

    return-wide v0
.end method

.method public getDurationMillis()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 258
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->connectTimeReal:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    move-wide v0, v2

    .line 263
    :goto_0
    return-wide v0

    .line 260
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->duration:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 261
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->connectTimeReal:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 263
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->duration:J

    goto :goto_0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 270
    const-wide/16 v0, 0x0

    .line 272
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->holdingStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 954
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->numberPresentation:I

    return v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->dialString:Ljava/lang/String;

    return-object v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 651
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v4, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v4, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialString:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->nextPostDialChar:I

    if-gt v3, v4, :cond_1

    .line 655
    :cond_0
    const-string v3, ""

    .line 669
    :goto_0
    return-object v3

    .line 658
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialString:Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->nextPostDialChar:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, subStr:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 660
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 661
    .local v2, wIndex:I
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 663
    .local v0, pIndex:I
    if-lez v2, :cond_4

    if-lt v2, v0, :cond_2

    if-gtz v0, :cond_4

    .line 664
    :cond_2
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .end local v0           #pIndex:I
    .end local v2           #wIndex:I
    :cond_3
    :goto_1
    move-object v3, v1

    .line 669
    goto :goto_0

    .line 665
    .restart local v0       #pIndex:I
    .restart local v2       #wIndex:I
    :cond_4
    if-lez v0, :cond_3

    .line 666
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->disconnected:Z

    if-eqz v0, :cond_0

    .line 294
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    .line 296
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    goto :goto_0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .prologue
    .line 960
    const/4 v0, 0x0

    return-object v0
.end method

.method public hangup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->disconnected:Z

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 306
    return-void

    .line 304
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming:Z

    return v0
.end method

.method onConnectedInOrOut()V
    .locals 3

    .prologue
    .line 590
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->connectTime:J

    .line 591
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->connectTimeReal:J

    .line 592
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->duration:J

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConnectedInOrOut: connectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->connectTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 600
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming:Z

    if-nez v0, :cond_0

    .line 602
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processNextPostDialChar()V

    .line 608
    :goto_0
    return-void

    .line 606
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    goto :goto_0
.end method

.method onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .locals 3
    .parameter "cause"

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 462
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->disconnected:Z

    if-nez v0, :cond_0

    .line 463
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->doDisconnect()V

    .line 464
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CDMAConn] onDisconnect: cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 469
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->connectionDisconnected(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 473
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    .line 474
    return-void
.end method

.method onHangupLocal()V
    .locals 1

    .prologue
    .line 390
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 391
    return-void
.end method

.method onLocalDisconnect()V
    .locals 2

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->disconnected:Z

    if-nez v0, :cond_0

    .line 480
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->doDisconnect()V

    .line 481
    const-string v0, "CDMA"

    const-string v1, "[CDMAConn] onLoalDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->detach(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 488
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    .line 489
    return-void
.end method

.method onRemoteDisconnect(I)V
    .locals 1
    .parameter "causeCode"

    .prologue
    .line 454
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 455
    return-void
.end method

.method public proceedAfterWaitChar()V
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 322
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :goto_0
    return-void

    .line 327
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 4
    .parameter "str"

    .prologue
    .line 333
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_0

    .line 334
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :goto_0
    return-void

    .line 339
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->nextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialString:Ljava/lang/String;

    .line 369
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->nextPostDialChar:I

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "proceedAfterWildChar: new postDialString is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method processNextPostDialChar()V
    .locals 9

    .prologue
    .line 698
    const/4 v1, 0x0

    .line 701
    .local v1, c:C
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v6, v7, :cond_1

    .line 702
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialString:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->nextPostDialChar:I

    if-gt v6, v7, :cond_4

    .line 709
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 712
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    .line 715
    const/4 v1, 0x0

    .line 734
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 738
    .local v4, postDialHandler:Landroid/os/Registrant;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v3

    .local v3, notifyMessage:Landroid/os/Message;
    if-eqz v3, :cond_0

    .line 741
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 742
    .local v5, state:Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 743
    .local v0, ar:Landroid/os/AsyncResult;
    iput-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 744
    iput-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 747
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 749
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 719
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #notifyMessage:Landroid/os/Message;
    .end local v4           #postDialHandler:Landroid/os/Registrant;
    .end local v5           #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 721
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialString:Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->nextPostDialChar:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->nextPostDialChar:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 723
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processPostDialChar(C)Z

    move-result v2

    .line 725
    .local v2, isValid:Z
    if-nez v2, :cond_3

    .line 727
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->h:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 729
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processNextPostDialChar: c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isn\'t valid!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public separate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->disconnected:Z

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->separate(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 314
    return-void

    .line 312
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method update(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 9
    .parameter "dc"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 495
    const/4 v0, 0x0

    .line 496
    .local v0, changed:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isConnectingInOrOut()Z

    move-result v3

    .line 497
    .local v3, wasConnectingInOrOut:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_5

    move v4, v8

    .line 499
    .local v4, wasHolding:Z
    :goto_0
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v1

    .line 501
    .local v1, newParent:Lcom/android/internal/telephony/cdma/CdmaCall;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parent= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", newParent= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 503
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 504
    const-string/jumbo v5, "update: phone # changed!"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 505
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    .line 506
    const/4 v0, 0x1

    .line 510
    :cond_0
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 511
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 512
    const/4 v0, 0x1

    .line 513
    const-string v5, ""

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapName:Ljava/lang/String;

    .line 520
    :cond_1
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--dssds----"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 521
    iget v5, p1, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapNamePresentation:I

    .line 522
    iget v5, p1, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->numberPresentation:I

    .line 524
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eq v1, v5, :cond_7

    .line 525
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eqz v5, :cond_2

    .line 526
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->detach(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 528
    :cond_2
    invoke-virtual {v1, p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 529
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 530
    const/4 v0, 0x1

    .line 539
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update, wasConnectingInOrOut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wasHolding="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isConnectingInOrOut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isConnectingInOrOut()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", changed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 546
    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isConnectingInOrOut()Z

    move-result v5

    if-nez v5, :cond_3

    .line 547
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    .line 550
    :cond_3
    if-eqz v0, :cond_4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_4

    .line 552
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onStartedHolding()V

    .line 555
    :cond_4
    return v0

    .end local v1           #newParent:Lcom/android/internal/telephony/cdma/CdmaCall;
    .end local v4           #wasHolding:Z
    :cond_5
    move v4, v7

    .line 497
    goto/16 :goto_0

    .line 515
    .restart local v1       #newParent:Lcom/android/internal/telephony/cdma/CdmaCall;
    .restart local v4       #wasHolding:Z
    :cond_6
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 516
    const/4 v0, 0x1

    .line 517
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapName:Ljava/lang/String;

    goto/16 :goto_1

    .line 533
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v5, p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->update(Lcom/android/internal/telephony/cdma/CdmaConnection;Lcom/android/internal/telephony/DriverCall;)Z

    move-result v2

    .line 534
    .local v2, parentStateChange:Z
    if-nez v0, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    move v0, v8

    :goto_3
    goto :goto_2

    :cond_9
    move v0, v7

    goto :goto_3
.end method

.method public updateParent(Lcom/android/internal/telephony/cdma/CdmaCall;Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .locals 1
    .parameter "oldParent"
    .parameter "newParent"

    .prologue
    .line 673
    if-eq p2, p1, :cond_1

    .line 674
    if-eqz p1, :cond_0

    .line 675
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->detach(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 677
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p2, p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 678
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 680
    :cond_1
    return-void
.end method
