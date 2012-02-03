.class Lcom/android/internal/telephony/RILRequest;
.super Ljava/lang/Object;
.source "RIL.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RILJ"

.field private static final MAX_POOL_SIZE:I = 0x4

.field static sNextSerial:I

.field private static sPool:Lcom/android/internal/telephony/RILRequest;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;

.field static sSerialMonitor:Ljava/lang/Object;


# instance fields
.field mNext:Lcom/android/internal/telephony/RILRequest;

.field mRequest:I

.field mResult:Landroid/os/Message;

.field mSerial:I

.field mp:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    sput v1, Lcom/android/internal/telephony/RILRequest;->sNextSerial:I

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/RILRequest;->sSerialMonitor:Ljava/lang/Object;

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/RILRequest;->sPoolSync:Ljava/lang/Object;

    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    .line 96
    sput v1, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    return-void
.end method

.method static obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;
    .locals 4
    .parameter "request"
    .parameter "result"

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 116
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    sget-object v1, Lcom/android/internal/telephony/RILRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    if-eqz v2, :cond_0

    .line 118
    sget-object v0, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    .line 119
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mNext:Lcom/android/internal/telephony/RILRequest;

    sput-object v2, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    .line 120
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mNext:Lcom/android/internal/telephony/RILRequest;

    .line 121
    sget v2, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sput v2, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    .line 123
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    if-nez v0, :cond_1

    .line 126
    new-instance v0, Lcom/android/internal/telephony/RILRequest;

    .end local v0           #rr:Lcom/android/internal/telephony/RILRequest;
    invoke-direct {v0}, Lcom/android/internal/telephony/RILRequest;-><init>()V

    .line 129
    .restart local v0       #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/RILRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_1
    sget v2, Lcom/android/internal/telephony/RILRequest;->sNextSerial:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/android/internal/telephony/RILRequest;->sNextSerial:I

    iput v2, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 131
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    iput p0, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 133
    iput-object p1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    .line 134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    .line 136
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_2

    .line 137
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Message target must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 131
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 141
    :cond_2
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    return-object v0
.end method

.method static resetSerial()V
    .locals 2

    .prologue
    .line 167
    sget-object v0, Lcom/android/internal/telephony/RILRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/android/internal/telephony/RILRequest;->sNextSerial:I

    .line 169
    monitor-exit v0

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method onError(ILjava/lang/Object;)V
    .locals 4
    .parameter "error"
    .parameter "ret"

    .prologue
    .line 195
    invoke-static {p1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 197
    .local v0, ex:Lcom/android/internal/telephony/CommandException;
    const-string v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "< "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 203
    iget-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 208
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    .line 210
    :cond_1
    return-void
.end method

.method release()V
    .locals 3

    .prologue
    .line 153
    sget-object v0, Lcom/android/internal/telephony/RILRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    sget v1, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 155
    sget-object v1, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    iput-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mNext:Lcom/android/internal/telephony/RILRequest;

    .line 156
    sput-object p0, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    .line 157
    sget v1, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    .line 159
    :cond_0
    monitor-exit v0

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method serialString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x8

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 178
    .local v2, sb:Ljava/lang/StringBuilder;
    iget v4, p0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, sn:Ljava/lang/String;
    const/16 v4, 0x5b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, s:I
    :goto_0
    const/4 v4, 0x4

    sub-int/2addr v4, v1

    if-ge v0, v4, :cond_0

    .line 183
    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const/16 v4, 0x5d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
