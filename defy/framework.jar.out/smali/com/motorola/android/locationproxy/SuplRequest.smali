.class Lcom/motorola/android/locationproxy/SuplRequest;
.super Ljava/lang/Object;
.source "Supl.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SUPLJ"

.field private static final MAX_POOL_SIZE:I = 0x4

.field static sHeaderLength:I

.field static sNextSerial:I

.field private static sPool:Lcom/motorola/android/locationproxy/SuplRequest;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;

.field static sSerialMonitor:Ljava/lang/Object;

.field static sTailLength:I


# instance fields
.field protected mData:[B

.field mNext:Lcom/motorola/android/locationproxy/SuplRequest;

.field mResult:Landroid/os/Message;

.field mSerial:I

.field protected mSessionId:B

.field protected mSubCommandId:B

.field protected mTransactionId:B

.field mposition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    sput v1, Lcom/motorola/android/locationproxy/SuplRequest;->sNextSerial:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/android/locationproxy/SuplRequest;->sSerialMonitor:Ljava/lang/Object;

    const/4 v0, 0x6

    sput v0, Lcom/motorola/android/locationproxy/SuplRequest;->sHeaderLength:I

    const/4 v0, 0x2

    sput v0, Lcom/motorola/android/locationproxy/SuplRequest;->sTailLength:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/android/locationproxy/SuplRequest;->sPoolSync:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/locationproxy/SuplRequest;->sPool:Lcom/motorola/android/locationproxy/SuplRequest;

    sput v1, Lcom/motorola/android/locationproxy/SuplRequest;->sPoolSize:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;
    .locals 5
    .parameter "subCommandId"
    .parameter "sessionId"
    .parameter "transactionId"
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .local v0, r:Lcom/motorola/android/locationproxy/SuplRequest;
    sget-object v1, Lcom/motorola/android/locationproxy/SuplRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/motorola/android/locationproxy/SuplRequest;->sPool:Lcom/motorola/android/locationproxy/SuplRequest;

    if-eqz v2, :cond_0

    sget-object v0, Lcom/motorola/android/locationproxy/SuplRequest;->sPool:Lcom/motorola/android/locationproxy/SuplRequest;

    iget-object v2, v0, Lcom/motorola/android/locationproxy/SuplRequest;->mNext:Lcom/motorola/android/locationproxy/SuplRequest;

    sput-object v2, Lcom/motorola/android/locationproxy/SuplRequest;->sPool:Lcom/motorola/android/locationproxy/SuplRequest;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/motorola/android/locationproxy/SuplRequest;->mNext:Lcom/motorola/android/locationproxy/SuplRequest;

    sget v2, Lcom/motorola/android/locationproxy/SuplRequest;->sPoolSize:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sput v2, Lcom/motorola/android/locationproxy/SuplRequest;->sPoolSize:I

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    new-instance v0, Lcom/motorola/android/locationproxy/SuplRequest;

    .end local v0           #r:Lcom/motorola/android/locationproxy/SuplRequest;
    invoke-direct {v0}, Lcom/motorola/android/locationproxy/SuplRequest;-><init>()V

    .restart local v0       #r:Lcom/motorola/android/locationproxy/SuplRequest;
    :cond_1
    sget-object v1, Lcom/motorola/android/locationproxy/SuplRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    sget v2, Lcom/motorola/android/locationproxy/SuplRequest;->sNextSerial:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/motorola/android/locationproxy/SuplRequest;->sNextSerial:I

    iput v2, v0, Lcom/motorola/android/locationproxy/SuplRequest;->mSerial:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-byte p0, v0, Lcom/motorola/android/locationproxy/SuplRequest;->mSubCommandId:B

    iput-byte p1, v0, Lcom/motorola/android/locationproxy/SuplRequest;->mSessionId:B

    iput-byte p2, v0, Lcom/motorola/android/locationproxy/SuplRequest;->mTransactionId:B

    iput-object p3, v0, Lcom/motorola/android/locationproxy/SuplRequest;->mResult:Landroid/os/Message;

    iput-object v4, v0, Lcom/motorola/android/locationproxy/SuplRequest;->mData:[B

    const/4 v1, 0x0

    iput v1, v0, Lcom/motorola/android/locationproxy/SuplRequest;->mposition:I

    return-object v0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method static resetSerial()V
    .locals 2

    .prologue
    sget-object v0, Lcom/motorola/android/locationproxy/SuplRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/motorola/android/locationproxy/SuplRequest;->sNextSerial:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method getData()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mData:[B

    return-object v0
.end method

.method onError(I)V
    .locals 4
    .parameter "error"

    .prologue
    invoke-static {p1}, Lcom/motorola/android/locationproxy/SuplCommandException;->fromSuplErrno(I)Lcom/motorola/android/locationproxy/SuplCommandException;

    move-result-object v0

    .local v0, ex:Lcom/motorola/android/locationproxy/SuplCommandException;
    const-string v1, "SUPLJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/motorola/android/locationproxy/SuplRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mSubCommandId:B

    invoke-static {v3}, Lcom/motorola/android/locationproxy/Supl;->SubCommandIdToString(B)Ljava/lang/String;

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

    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method release()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mData:[B

    sget-object v0, Lcom/motorola/android/locationproxy/SuplRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/motorola/android/locationproxy/SuplRequest;->sPoolSize:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    sget-object v1, Lcom/motorola/android/locationproxy/SuplRequest;->sPool:Lcom/motorola/android/locationproxy/SuplRequest;

    iput-object v1, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mNext:Lcom/motorola/android/locationproxy/SuplRequest;

    sput-object p0, Lcom/motorola/android/locationproxy/SuplRequest;->sPool:Lcom/motorola/android/locationproxy/SuplRequest;

    sget v1, Lcom/motorola/android/locationproxy/SuplRequest;->sPoolSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/motorola/android/locationproxy/SuplRequest;->sPoolSize:I

    :cond_0
    monitor-exit v0

    return-void

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
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x8

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v2, sb:Ljava/lang/StringBuilder;
    iget v4, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mSerial:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, sn:Ljava/lang/String;
    const/16 v4, 0x5b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, s:I
    :goto_0
    const/4 v4, 0x4

    sub-int/2addr v4, v1

    if-ge v0, v4, :cond_0

    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method setDataCapacity(I)V
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mData:[B

    return-void
.end method

.method setDataPosition(I)V
    .locals 1
    .parameter "pos"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mData:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mposition:I

    :cond_0
    return-void
.end method

.method writeByte(B)V
    .locals 3
    .parameter "val"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mData:[B

    iget v1, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mposition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mposition:I

    aput-byte p1, v0, v1

    return-void
.end method

.method writeByteArray([B)V
    .locals 5
    .parameter "b"

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mData:[B

    iget v3, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mposition:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mposition:I

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    aget-byte v4, p1, v0

    aput-byte v4, v2, v3

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    :cond_0
    return-void
.end method

.method writeHeader()V
    .locals 2

    .prologue
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/motorola/android/locationproxy/SuplRequest;->writeByte(B)V

    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mData:[B

    array-length v0, v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/locationproxy/SuplRequest;->writeShort(S)V

    iget-byte v0, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mSubCommandId:B

    invoke-virtual {p0, v0}, Lcom/motorola/android/locationproxy/SuplRequest;->writeByte(B)V

    iget-byte v0, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mSessionId:B

    invoke-virtual {p0, v0}, Lcom/motorola/android/locationproxy/SuplRequest;->writeByte(B)V

    iget-byte v0, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mTransactionId:B

    invoke-virtual {p0, v0}, Lcom/motorola/android/locationproxy/SuplRequest;->writeByte(B)V

    return-void
.end method

.method writeInt(I)V
    .locals 3
    .parameter "val"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mData:[B

    iget v1, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mposition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mposition:I

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mData:[B

    iget v1, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mposition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mposition:I

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mData:[B

    iget v1, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mposition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mposition:I

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mData:[B

    iget v1, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mposition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mposition:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method writeShort(S)V
    .locals 3
    .parameter "val"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mData:[B

    iget v1, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mposition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mposition:I

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mData:[B

    iget v1, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mposition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/motorola/android/locationproxy/SuplRequest;->mposition:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method
