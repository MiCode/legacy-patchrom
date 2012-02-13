.class public final Lcom/motorola/android/locationproxy/Supl;
.super Lcom/motorola/android/locationproxy/BaseSuplCommands;
.source "Supl.java"

# interfaces
.implements Lcom/motorola/android/locationproxy/ISuplCommands;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/locationproxy/Supl$SuplReceiver;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SUPLJ"

.field static final MAX_COMMAND_BYTES:I = 0xfffd

.field static final SOCKET_NAME_SUPLD:Ljava/lang/String; = "location_shim"

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field static final SUPL_LOG:Z = true

.field private static sFqdnReadLock:Ljava/lang/Object;

.field private static sFqdnWriteLock:Ljava/lang/Object;

.field private static sNextSessionId:B

.field private static sNextTransactionId:B

.field private static sSessionIdMonitor:Ljava/lang/Object;

.field private static sTransactionIdMonitor:Ljava/lang/Object;


# instance fields
.field private mFqdnAddr:Ljava/lang/String;

.field private mFqdnWriteResult:Z

.field mReceiver:Lcom/motorola/android/locationproxy/Supl$SuplReceiver;

.field mReceiverThread:Ljava/lang/Thread;

.field mRequestsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/locationproxy/SuplRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSocket:Landroid/net/LocalSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x2

    sput-byte v0, Lcom/motorola/android/locationproxy/Supl;->sNextSessionId:B

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/android/locationproxy/Supl;->sSessionIdMonitor:Ljava/lang/Object;

    const/4 v0, 0x1

    sput-byte v0, Lcom/motorola/android/locationproxy/Supl;->sNextTransactionId:B

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/android/locationproxy/Supl;->sTransactionIdMonitor:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/android/locationproxy/Supl;->sFqdnReadLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/android/locationproxy/Supl;->sFqdnWriteLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/BaseSuplCommands;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/locationproxy/Supl;->mFqdnAddr:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/locationproxy/Supl;->mFqdnWriteResult:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    const-string v0, "1"

    const-string v1, "ro.kernel.qemu"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;

    invoke-direct {v0, p0}, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;-><init>(Lcom/motorola/android/locationproxy/Supl;)V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/Supl;->mReceiver:Lcom/motorola/android/locationproxy/Supl$SuplReceiver;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/motorola/android/locationproxy/Supl;->mReceiver:Lcom/motorola/android/locationproxy/Supl$SuplReceiver;

    const-string v2, "SuplReceiver"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/Supl;->mReceiverThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/motorola/android/locationproxy/Supl;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method static SubCommandIdToString(B)Ljava/lang/String;
    .locals 1
    .parameter "subCommandId"

    .prologue
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "<unknown subCommandId>"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "WRITE_DB_REQ"

    goto :goto_0

    :pswitch_2
    const-string v0, "WRITE_DB_RES"

    goto :goto_0

    :pswitch_3
    const-string v0, "READ_DB_REQ"

    goto :goto_0

    :pswitch_4
    const-string v0, "READ_DB_RES"

    goto :goto_0

    :pswitch_5
    const-string v0, "OPEN_SOCK_REQ"

    goto :goto_0

    :pswitch_6
    const-string v0, "OPEN_SOCK_RES"

    goto :goto_0

    :pswitch_7
    const-string v0, "SOCK_DATA_REQ"

    goto :goto_0

    :pswitch_8
    const-string v0, "SOCK_DATA_RES"

    goto :goto_0

    :pswitch_9
    const-string v0, "SOCK_DATA_IND"

    goto :goto_0

    :pswitch_a
    const-string v0, "CLOSE_SOCK_REQ"

    goto :goto_0

    :pswitch_b
    const-string v0, "CLOSE_SOCK_RES"

    goto :goto_0

    :pswitch_c
    const-string v0, "WAP_PUSH_IND"

    goto :goto_0

    :pswitch_d
    const-string v0, "MTLR_NOTIFY_IND"

    goto :goto_0

    :pswitch_e
    const-string v0, "MTLR_NOTIFY_RES"

    goto :goto_0

    :pswitch_f
    const-string v0, "MTLR_NOTIFY_STATUS"

    goto :goto_0

    :pswitch_10
    const-string v0, "TLS_REQ"

    goto :goto_0

    :pswitch_11
    const-string v0, "TLS_RES"

    goto :goto_0

    :pswitch_12
    const-string v0, "MTLR2_IND"

    goto :goto_0

    :pswitch_13
    const-string v0, "HTTP_POST_REQ"

    goto :goto_0

    :pswitch_14
    const-string v0, "HTTP_POST_RES"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method static synthetic access$000(Ljava/io/InputStream;[B)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->readSuplMessage(Ljava/io/InputStream;[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([BI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-static {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->logHexData([BI)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/android/locationproxy/Supl;Landroid/os/Parcel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->processResponse(Landroid/os/Parcel;)V

    return-void
.end method

.method private convertUcs2ToUtf8([B)[B
    .locals 8
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .local v2, l:I
    const/16 v6, 0xd8

    new-array v0, v6, [B

    .local v0, buf:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_2

    aget-byte v6, p1, v1

    and-int/lit16 v6, v6, 0xff

    int-to-char v5, v6

    .local v5, v:C
    shl-int/lit8 v6, v5, 0x8

    int-to-char v5, v6

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v5

    int-to-char v5, v6

    const/16 v6, 0x80

    if-ge v5, v6, :cond_0

    add-int/lit8 v3, v2, 0x1

    .end local v2           #l:I
    .local v3, l:I
    and-int/lit8 v6, v5, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    move v2, v3

    .end local v3           #l:I
    .restart local v2       #l:I
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    const/16 v6, 0x800

    if-ge v5, v6, :cond_1

    add-int/lit8 v3, v2, 0x1

    .end local v2           #l:I
    .restart local v3       #l:I
    and-int/lit16 v6, v5, 0x7c0

    or-int/lit16 v6, v6, 0x3000

    shr-int/lit8 v6, v6, 0x6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    add-int/lit8 v2, v3, 0x1

    .end local v3           #l:I
    .restart local v2       #l:I
    and-int/lit8 v6, v5, 0x3f

    or-int/lit16 v6, v6, 0x80

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2           #l:I
    .restart local v3       #l:I
    const v6, 0xf000

    and-int/2addr v6, v5

    shr-int/lit8 v6, v6, 0xc

    or-int/lit16 v6, v6, 0xe0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    add-int/lit8 v2, v3, 0x1

    .end local v3           #l:I
    .restart local v2       #l:I
    and-int/lit16 v6, v5, 0xfc0

    or-int/lit16 v6, v6, 0x2000

    shr-int/lit8 v6, v6, 0x6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    add-int/lit8 v3, v2, 0x1

    .end local v2           #l:I
    .restart local v3       #l:I
    and-int/lit8 v6, v5, 0x3f

    or-int/lit16 v6, v6, 0x80

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    move v2, v3

    .end local v3           #l:I
    .restart local v2       #l:I
    goto :goto_1

    .end local v5           #v:C
    :cond_2
    new-array v4, v2, [B

    .local v4, utf8String:[B
    invoke-static {v0, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4}, Lcom/motorola/android/locationproxy/Supl;->logHexData([B)V

    return-object v4
.end method

.method private findAndRemoveRequestFromList(BBB)Lcom/motorola/android/locationproxy/SuplRequest;
    .locals 7
    .parameter "sessionId"
    .parameter "transactionId"
    .parameter "subCmdId"

    .prologue
    const-string v6, " tID="

    const-string v5, " cmd="

    iget-object v3, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, i:I
    :try_start_0
    iget-object v4, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, s:I
    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v4, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/locationproxy/SuplRequest;

    .local v1, r:Lcom/motorola/android/locationproxy/SuplRequest;
    iget-byte v4, v1, Lcom/motorola/android/locationproxy/SuplRequest;->mSessionId:B

    if-ne v4, p1, :cond_0

    iget-byte v4, v1, Lcom/motorola/android/locationproxy/SuplRequest;->mTransactionId:B

    if-ne v4, p2, :cond_0

    iget-byte v4, v1, Lcom/motorola/android/locationproxy/SuplRequest;->mSubCommandId:B

    if-ne v4, p3, :cond_0

    iget-object v4, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findAndRemoveRequestFromList: Found REQUEST: sID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cmd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Lcom/motorola/android/locationproxy/Supl;->SubCommandIdToString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/motorola/android/locationproxy/Supl;->suplLog(Ljava/lang/String;)V

    monitor-exit v3

    move-object v3, v1

    .end local v1           #r:Lcom/motorola/android/locationproxy/SuplRequest;
    :goto_1
    return-object v3

    .restart local v1       #r:Lcom/motorola/android/locationproxy/SuplRequest;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #r:Lcom/motorola/android/locationproxy/SuplRequest;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findAndRemoveRequestFromList: NOT Found REQUEST: sID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tID="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cmd="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Lcom/motorola/android/locationproxy/Supl;->SubCommandIdToString(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/motorola/android/locationproxy/Supl;->suplLog(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_1

    .end local v2           #s:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private findAndRemoveRequestFromList(I)Lcom/motorola/android/locationproxy/SuplRequest;
    .locals 6
    .parameter "serial"

    .prologue
    iget-object v3, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, i:I
    :try_start_0
    iget-object v4, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, s:I
    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v4, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/locationproxy/SuplRequest;

    .local v1, r:Lcom/motorola/android/locationproxy/SuplRequest;
    iget v4, v1, Lcom/motorola/android/locationproxy/SuplRequest;->mSerial:I

    if-ne v4, p1, :cond_0

    iget-object v4, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findAndRemoveRequestFromList: Found REQUEST: id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/motorola/android/locationproxy/Supl;->suplLog(Ljava/lang/String;)V

    monitor-exit v3

    move-object v3, v1

    .end local v1           #r:Lcom/motorola/android/locationproxy/SuplRequest;
    :goto_1
    return-object v3

    .restart local v1       #r:Lcom/motorola/android/locationproxy/SuplRequest;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #r:Lcom/motorola/android/locationproxy/SuplRequest;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findAndRemoveRequestFromList: NOT Found REQUEST id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/motorola/android/locationproxy/Supl;->suplLog(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_1

    .end local v2           #s:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private generateSessionID()B
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, ret:B
    sget-object v1, Lcom/motorola/android/locationproxy/Supl;->sSessionIdMonitor:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-byte v0, Lcom/motorola/android/locationproxy/Supl;->sNextSessionId:B

    sget-byte v2, Lcom/motorola/android/locationproxy/Supl;->sNextSessionId:B

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    sput-byte v2, Lcom/motorola/android/locationproxy/Supl;->sNextSessionId:B

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private generateTransactionId()B
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, ret:B
    sget-object v1, Lcom/motorola/android/locationproxy/Supl;->sTransactionIdMonitor:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-byte v0, Lcom/motorola/android/locationproxy/Supl;->sNextTransactionId:B

    sget-byte v2, Lcom/motorola/android/locationproxy/Supl;->sNextTransactionId:B

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    sput-byte v2, Lcom/motorola/android/locationproxy/Supl;->sNextTransactionId:B

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static logHexData([B)V
    .locals 1
    .parameter "data"

    .prologue
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/motorola/android/locationproxy/Supl;->logHexData([BI)V

    return-void
.end method

.method private static logHexData([BI)V
    .locals 9
    .parameter "data"
    .parameter "length"

    .prologue
    const-string v8, "]"

    const-string v7, "[ "

    const-string v6, "SUPLJ"

    array-length v4, p0

    if-ge p1, v4, :cond_1

    move v1, p1

    .local v1, l:I
    :goto_0
    const-string v4, "SUPLJ"

    const-string v4, "package: "

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[ "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    rem-int/lit8 v4, v0, 0x8

    if-nez v4, :cond_0

    if-lez v0, :cond_0

    const-string v4, "]"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "SUPLJ"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #sb:Ljava/lang/StringBuilder;
    const-string v4, "[ "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v2       #sb:Ljava/lang/StringBuilder;
    :cond_0
    aget-byte v3, p0, v0

    .local v3, v:I
    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_2

    const-string v4, "0x0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #l:I
    .end local v2           #sb:Ljava/lang/StringBuilder;
    .end local v3           #v:I
    :cond_1
    array-length v4, p0

    move v1, v4

    goto :goto_0

    .restart local v0       #i:I
    .restart local v1       #l:I
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    .restart local v3       #v:I
    :cond_2
    const-string v4, "0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v3           #v:I
    :cond_3
    const-string v4, "]"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "SUPLJ"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logSuplApBpRequest([B)V
    .locals 6
    .parameter "msg"

    .prologue
    const-string v5, "SUPLJ"

    const/4 v3, 0x3

    invoke-direct {p0, p1, v3}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v1

    .local v1, subCommandId:B
    const/4 v3, 0x4

    invoke-direct {p0, p1, v3}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v0

    .local v0, sessionId:B
    const/4 v3, 0x5

    invoke-direct {p0, p1, v3}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v2

    .local v2, transactionId:B
    const-string v3, "SUPLJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/motorola/android/locationproxy/Supl;->SubCommandIdToString(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SUPLJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], transaction ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/android/locationproxy/Supl;->logHexData([B)V

    return-void
.end method

.method private processCloseSocketRequest(Landroid/os/Parcel;)V
    .locals 9
    .parameter "p"

    .prologue
    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .local v0, buf:[B
    const/4 v1, 0x1

    .local v1, offset:I
    invoke-direct {p0, v0, v1}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v4

    .local v4, sessionId:B
    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v5

    .local v5, transactionId:B
    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0xe

    invoke-static {v6, v4, v5, v8}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v2

    .local v2, r:Lcom/motorola/android/locationproxy/SuplRequest;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, v2, Lcom/motorola/android/locationproxy/SuplRequest;->mSubCommandId:B

    invoke-static {v7}, Lcom/motorola/android/locationproxy/Supl;->SubCommandIdToString(B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/motorola/android/locationproxy/Supl;->suplLog(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/Object;

    .local v3, result:[Ljava/lang/Object;
    const/4 v6, 0x0

    iget v7, v2, Lcom/motorola/android/locationproxy/SuplRequest;->mSerial:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x1

    invoke-direct {p0, v0, v1}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    add-int/lit8 v1, v1, 0x4

    iget-object v6, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mCloseSocketRegistrants:Landroid/os/RegistrantList;

    new-instance v7, Landroid/os/AsyncResult;

    invoke-direct {v7, v8, v3, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v7}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .end local v3           #result:[Ljava/lang/Object;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method private processDbReadResult(Landroid/os/Parcel;)V
    .locals 15
    .parameter "p"

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .local v0, buf:[B
    const/4 v6, 0x1

    .local v6, offset:I
    invoke-direct {p0, v0, v6}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v9

    .local v9, sessionId:B
    add-int/lit8 v6, v6, 0x1

    invoke-direct {p0, v0, v6}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v11

    .local v11, transactionId:B
    add-int/lit8 v6, v6, 0x1

    const/4 v12, 0x6

    invoke-direct {p0, v9, v11, v12}, Lcom/motorola/android/locationproxy/Supl;->findAndRemoveRequestFromList(BBB)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v7

    .local v7, r:Lcom/motorola/android/locationproxy/SuplRequest;
    if-nez v7, :cond_1

    const-string v12, "SUPLJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unexpected DB write result! sessiionId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "transactionId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    iput-object v12, p0, Lcom/motorola/android/locationproxy/Supl;->mFqdnAddr:Ljava/lang/String;

    :cond_0
    :goto_0
    sget-object v12, Lcom/motorola/android/locationproxy/Supl;->sFqdnReadLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    const-string v13, "SUPLJ"

    const-string v14, "calling sFqdnReadLock.notifyAll()"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Lcom/motorola/android/locationproxy/Supl;->sFqdnReadLock:Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    invoke-virtual {v7}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    :try_start_1
    invoke-direct {p0, v0, v6}, Lcom/motorola/android/locationproxy/Supl;->readShort([BI)S

    move-result v5

    .local v5, numFiles:S
    add-int/lit8 v6, v6, 0x2

    const-string v12, "SUPLJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Number of files: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .local v3, i:S
    :goto_1
    if-ge v3, v5, :cond_2

    invoke-direct {p0, v0, v6}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v2

    .local v2, fileId:I
    add-int/lit8 v6, v6, 0x4

    invoke-direct {p0, v0, v6}, Lcom/motorola/android/locationproxy/Supl;->readShort([BI)S

    move-result v4

    .local v4, length:S
    add-int/lit8 v6, v6, 0x2

    invoke-direct {p0, v0, v6, v4}, Lcom/motorola/android/locationproxy/Supl;->readByteArray([BII)[B

    move-result-object v1

    .local v1, data:[B
    add-int/2addr v6, v4

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v12, p0, Lcom/motorola/android/locationproxy/Supl;->mFqdnAddr:Ljava/lang/String;

    const-string v12, "SUPLJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "read supl address:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/motorola/android/locationproxy/Supl;->mFqdnAddr:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v12, v3, 0x1

    int-to-short v3, v12

    goto :goto_1

    .end local v1           #data:[B
    .end local v2           #fileId:I
    .end local v4           #length:S
    :cond_2
    invoke-direct {p0, v0, v6}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v8

    .local v8, result:I
    if-eqz v8, :cond_0

    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "DB Error"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .end local v3           #i:S
    .end local v5           #numFiles:S
    .end local v8           #result:I
    :catch_0
    move-exception v12

    move-object v10, v12

    .local v10, tr:Ljava/lang/Throwable;
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/motorola/android/locationproxy/Supl;->mFqdnAddr:Ljava/lang/String;

    goto :goto_0

    .end local v10           #tr:Ljava/lang/Throwable;
    :catchall_0
    move-exception v13

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v13
.end method

.method private processDbWriteResult(Landroid/os/Parcel;)V
    .locals 11
    .parameter "p"

    .prologue
    const/4 v10, 0x0

    const-string v9, "SUPLJ"

    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .local v0, buf:[B
    const/4 v1, 0x1

    .local v1, offset:I
    invoke-direct {p0, v0, v1}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v4

    .local v4, sessionId:B
    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v6

    .local v6, transactionId:B
    add-int/lit8 v1, v1, 0x1

    const/4 v7, 0x4

    invoke-direct {p0, v4, v6, v7}, Lcom/motorola/android/locationproxy/Supl;->findAndRemoveRequestFromList(BBB)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v2

    .local v2, r:Lcom/motorola/android/locationproxy/SuplRequest;
    if-nez v2, :cond_0

    const-string v7, "SUPLJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected DB write result! sessiionId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " transactionId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v10, p0, Lcom/motorola/android/locationproxy/Supl;->mFqdnWriteResult:Z

    :goto_0
    sget-object v7, Lcom/motorola/android/locationproxy/Supl;->sFqdnWriteLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    const-string v8, "SUPLJ"

    const-string v9, "calling sFqdnWriteLock.notifyAll()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/motorola/android/locationproxy/Supl;->sFqdnWriteLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v3

    .local v3, result:I
    add-int/lit8 v1, v1, 0x4

    const-string v7, "SUPLJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1

    const-string v7, "SUPLJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DB Error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "DB Error"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .end local v3           #result:I
    :catch_0
    move-exception v7

    move-object v5, v7

    .local v5, tr:Ljava/lang/Throwable;
    iput-boolean v10, p0, Lcom/motorola/android/locationproxy/Supl;->mFqdnWriteResult:Z

    goto :goto_0

    .end local v5           #tr:Ljava/lang/Throwable;
    .restart local v3       #result:I
    :cond_1
    const/4 v7, 0x1

    :try_start_2
    iput-boolean v7, p0, Lcom/motorola/android/locationproxy/Supl;->mFqdnWriteResult:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v3           #result:I
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8
.end method

.method private processHttpPostRequest(Landroid/os/Parcel;)V
    .locals 23
    .parameter "p"

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    .local v4, buf:[B
    const/4 v6, 0x1

    .local v6, offset:I
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v12

    .local v12, sessionId:B
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v13

    .local v13, transactionId:B
    add-int/lit8 v6, v6, 0x1

    const/16 v19, 0x21

    const/16 v20, 0x0

    move/from16 v0, v19

    move v1, v12

    move v2, v13

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v10

    .local v10, r:Lcom/motorola/android/locationproxy/SuplRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object v11, v0

    .local v11, result:[Ljava/lang/Object;
    const/16 v19, 0x0

    move-object v0, v10

    iget v0, v0, Lcom/motorola/android/locationproxy/SuplRequest;->mSerial:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v11, v19

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move v15, v0

    .local v15, urlLength:I
    add-int/lit8 v6, v6, 0x1

    if-lez v15, :cond_0

    const/16 v19, 0x1

    sub-int v19, v15, v19

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v6

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/locationproxy/Supl;->readByteArray([BII)[B

    move-result-object v5

    .local v5, httpUrl:[B
    const/16 v19, 0x1

    aput-object v5, v11, v19

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v5}, Ljava/lang/String;-><init>([B)V

    .local v14, url:Ljava/lang/String;
    const-string v19, "SUPLJ"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "url:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5           #httpUrl:[B
    .end local v14           #url:Ljava/lang/String;
    :goto_0
    add-int/lit8 v6, v15, 0x4

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move v9, v0

    .local v9, pathLength:I
    add-int/lit8 v6, v6, 0x1

    if-lez v9, :cond_1

    const/16 v19, 0x1

    sub-int v19, v9, v19

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v6

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/locationproxy/Supl;->readByteArray([BII)[B

    move-result-object v8

    .local v8, path:[B
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    .local v7, pa:Ljava/lang/String;
    const-string v19, "SUPLJ"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "path:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x2

    aput-object v8, v11, v19

    .end local v7           #pa:Ljava/lang/String;
    .end local v8           #path:[B
    :goto_1
    add-int/2addr v6, v9

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    .local v18, userAgentLength:I
    add-int/lit8 v6, v6, 0x1

    if-lez v18, :cond_2

    const/16 v19, 0x1

    sub-int v19, v18, v19

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v6

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/locationproxy/Supl;->readByteArray([BII)[B

    move-result-object v17

    .local v17, userAgent:[B
    new-instance v16, Ljava/lang/String;

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>([B)V

    .local v16, user:Ljava/lang/String;
    const-string v19, "SUPLJ"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "agent:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x3

    aput-object v17, v11, v19

    .end local v16           #user:Ljava/lang/String;
    .end local v17           #userAgent:[B
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mHttpRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v11

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .end local v9           #pathLength:I
    .end local v11           #result:[Ljava/lang/Object;
    .end local v15           #urlLength:I
    .end local v18           #userAgentLength:I
    :catchall_0
    move-exception v20

    :try_start_1
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v20

    .restart local v11       #result:[Ljava/lang/Object;
    .restart local v15       #urlLength:I
    :cond_0
    const-string v19, "SUPLJ"

    const-string v20, "url length is 0"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x1

    const/16 v20, 0x0

    aput-object v20, v11, v19

    goto/16 :goto_0

    .restart local v9       #pathLength:I
    :cond_1
    const-string v19, "SUPLJ"

    const-string v20, "path length is 0"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x2

    const/16 v20, 0x0

    aput-object v20, v11, v19

    goto/16 :goto_1

    .restart local v18       #userAgentLength:I
    :cond_2
    const-string v19, "SUPLJ"

    const-string v20, "userAgent length is 0"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x3

    const/16 v20, 0x0

    aput-object v20, v11, v19

    goto :goto_2
.end method

.method private processMtlr2Request(Landroid/os/Parcel;)V
    .locals 24
    .parameter "p"

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    .local v4, buf:[B
    const/4 v13, 0x1

    .local v13, offset:I
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v18

    .local v18, sessionId:B
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v19

    .local v19, transactionId:B
    add-int/lit8 v13, v13, 0x1

    const/16 v20, 0x1e

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v14

    .local v14, r:Lcom/motorola/android/locationproxy/SuplRequest;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/motorola/android/locationproxy/SuplRequest;->serialString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "> "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object v0, v14

    iget-byte v0, v0, Lcom/motorola/android/locationproxy/SuplRequest;->mSubCommandId:B

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/motorola/android/locationproxy/Supl;->SubCommandIdToString(B)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/motorola/android/locationproxy/Supl;->suplLog(Ljava/lang/String;)V

    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .local v17, result:[Ljava/lang/Object;
    const/16 v20, 0x0

    move-object v0, v14

    iget v0, v0, Lcom/motorola/android/locationproxy/SuplRequest;->mSerial:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v17, v20

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v12

    .local v12, notifyType:I
    const/16 v20, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v17, v20

    add-int/lit8 v13, v13, 0x4

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v17, v20

    add-int/lit8 v13, v13, 0x4

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v9

    .local v9, codingSchema:B
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v11

    .local v11, length:B
    add-int/lit8 v13, v13, 0x1

    const-string v15, ""

    .local v15, requestorId:Ljava/lang/String;
    if-lez v11, :cond_0

    :try_start_0
    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/locationproxy/Supl;->readByteArray([BII)[B

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/motorola/android/locationproxy/Supl;->convertUcs2ToUtf8([B)[B

    move-result-object v20

    const-string v21, "UTF8"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v15           #requestorId:Ljava/lang/String;
    .local v16, requestorId:Ljava/lang/String;
    move-object/from16 v15, v16

    .end local v16           #requestorId:Ljava/lang/String;
    .restart local v15       #requestorId:Ljava/lang/String;
    :goto_0
    add-int/lit8 v13, v11, 0xd

    :cond_0
    const/16 v20, 0x3

    aput-object v15, v17, v20

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    aput-object v21, v17, v20

    add-int/lit8 v13, v13, 0x1

    const-string v6, ""

    .local v6, clientName:Ljava/lang/String;
    const/16 v20, 0xff

    move v0, v9

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v11

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/locationproxy/Supl;->readByteArray([BII)[B

    move-result-object v8

    .local v8, clientNameBuf:[B
    add-int/2addr v13, v11

    :try_start_1
    new-instance v7, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/motorola/android/locationproxy/Supl;->convertUcs2ToUtf8([B)[B

    move-result-object v20

    const-string v21, "UTF8"

    move-object v0, v7

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v6           #clientName:Ljava/lang/String;
    .local v7, clientName:Ljava/lang/String;
    move-object v6, v7

    .end local v7           #clientName:Ljava/lang/String;
    .end local v8           #clientNameBuf:[B
    .restart local v6       #clientName:Ljava/lang/String;
    :cond_1
    :goto_1
    const/16 v20, 0x5

    aput-object v6, v17, v20

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    aput-object v21, v17, v20

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v11

    add-int/lit8 v13, v13, 0x1

    const-string v5, ""

    .local v5, clientExtAddr:Ljava/lang/String;
    if-lez v11, :cond_2

    new-instance v5, Ljava/lang/String;

    .end local v5           #clientExtAddr:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/locationproxy/Supl;->readByteArray([BII)[B

    move-result-object v20

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .restart local v5       #clientExtAddr:Ljava/lang/String;
    :cond_2
    const/16 v20, 0x7

    aput-object v5, v17, v20

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    monitor-enter v20

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mMtlr2Registrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .end local v5           #clientExtAddr:Ljava/lang/String;
    .end local v6           #clientName:Ljava/lang/String;
    :catch_0
    move-exception v20

    move-object/from16 v10, v20

    .local v10, ex:Ljava/io/UnsupportedEncodingException;
    const-string v20, "SUPLJ"

    const-string v21, "Unsupported Encoding: "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v10

    invoke-static {v0, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v10           #ex:Ljava/io/UnsupportedEncodingException;
    .restart local v6       #clientName:Ljava/lang/String;
    .restart local v8       #clientNameBuf:[B
    :catch_1
    move-exception v20

    move-object/from16 v10, v20

    .restart local v10       #ex:Ljava/io/UnsupportedEncodingException;
    const-string v20, "SUPLJ"

    const-string v21, "Unsupported Encoding: "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v10

    invoke-static {v0, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .end local v8           #clientNameBuf:[B
    .end local v10           #ex:Ljava/io/UnsupportedEncodingException;
    .restart local v5       #clientExtAddr:Ljava/lang/String;
    :catchall_0
    move-exception v21

    :try_start_3
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v21
.end method

.method private processMtlrRequest(Landroid/os/Parcel;)V
    .locals 22
    .parameter "p"

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    .local v4, buf:[B
    const/4 v13, 0x1

    .local v13, offset:I
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v16

    .local v16, sessionId:B
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v17

    .local v17, transactionId:B
    add-int/lit8 v13, v13, 0x1

    const/16 v18, 0x13

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v14

    .local v14, r:Lcom/motorola/android/locationproxy/SuplRequest;
    const/16 v18, 0x6

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object v15, v0

    .local v15, result:[Ljava/lang/Object;
    const/16 v18, 0x0

    move-object v0, v14

    iget v0, v0, Lcom/motorola/android/locationproxy/SuplRequest;->mSerial:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v15, v18

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v12

    .local v12, notifyType:I
    const/16 v18, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v15, v18

    add-int/lit8 v13, v13, 0x4

    const/16 v18, 0x2

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v15, v18

    add-int/lit8 v13, v13, 0x4

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v9

    .local v9, codingSchema:B
    add-int/lit8 v13, v13, 0x1

    const-string v6, ""

    .local v6, clientName:Ljava/lang/String;
    const/16 v18, 0xff

    move v0, v9

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move v11, v0

    .local v11, length:I
    add-int/lit8 v13, v13, 0x1

    if-lez v11, :cond_0

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/locationproxy/Supl;->readByteArray([BII)[B

    move-result-object v8

    .local v8, clientNameBuf:[B
    add-int/lit8 v13, v11, 0xd

    :try_start_0
    new-instance v7, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/motorola/android/locationproxy/Supl;->convertUcs2ToUtf8([B)[B

    move-result-object v18

    const-string v19, "UTF8"

    move-object v0, v7

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #clientName:Ljava/lang/String;
    .local v7, clientName:Ljava/lang/String;
    move-object v6, v7

    .end local v7           #clientName:Ljava/lang/String;
    .end local v8           #clientNameBuf:[B
    .end local v11           #length:I
    .restart local v6       #clientName:Ljava/lang/String;
    :cond_0
    :goto_0
    const/16 v18, 0x3

    aput-object v6, v15, v18

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v11

    .local v11, length:B
    add-int/lit8 v13, v13, 0x1

    const-string v5, ""

    .local v5, clientExtAddr:Ljava/lang/String;
    if-lez v11, :cond_1

    new-instance v5, Ljava/lang/String;

    .end local v5           #clientExtAddr:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/locationproxy/Supl;->readByteArray([BII)[B

    move-result-object v18

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .restart local v5       #clientExtAddr:Ljava/lang/String;
    :cond_1
    const/16 v18, 0x4

    aput-object v5, v15, v18

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mMtlrRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/AsyncResult;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v15

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v18 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .end local v5           #clientExtAddr:Ljava/lang/String;
    .restart local v8       #clientNameBuf:[B
    .local v11, length:I
    :catch_0
    move-exception v18

    move-object/from16 v10, v18

    .local v10, ex:Ljava/io/UnsupportedEncodingException;
    const-string v18, "SUPLJ"

    const-string v19, "Unsupported Encoding"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v10

    invoke-static {v0, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v8           #clientNameBuf:[B
    .end local v10           #ex:Ljava/io/UnsupportedEncodingException;
    .restart local v5       #clientExtAddr:Ljava/lang/String;
    .local v11, length:B
    :catchall_0
    move-exception v19

    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v19

    :cond_2
    invoke-virtual {v14}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    goto :goto_1
.end method

.method private processMtlrStatus(Landroid/os/Parcel;)V
    .locals 9
    .parameter "p"

    .prologue
    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .local v0, buf:[B
    const/4 v1, 0x1

    .local v1, offset:I
    invoke-direct {p0, v0, v1}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v4

    .local v4, sessionId:B
    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v5

    .local v5, transactionId:B
    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0x13

    invoke-direct {p0, v4, v5, v6}, Lcom/motorola/android/locationproxy/Supl;->findAndRemoveRequestFromList(BBB)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v2

    .local v2, r:Lcom/motorola/android/locationproxy/SuplRequest;
    if-nez v2, :cond_0

    const/16 v6, 0x20

    invoke-direct {p0, v4, v5, v6}, Lcom/motorola/android/locationproxy/Supl;->findAndRemoveRequestFromList(BBB)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    const-string v6, "SUPLJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MTLR request doesnot exist! sessiionId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "transactionId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/Object;

    .local v3, result:[Ljava/lang/Object;
    const/4 v6, 0x0

    iget v7, v2, Lcom/motorola/android/locationproxy/SuplRequest;->mSerial:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x1

    invoke-direct {p0, v0, v1}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    iget-object v6, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mMtlrStatusRegistrants:Landroid/os/RegistrantList;

    new-instance v7, Landroid/os/AsyncResult;

    invoke-direct {v7, v8, v3, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v7}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    goto :goto_0
.end method

.method private processOpenSocketRequest(Landroid/os/Parcel;)V
    .locals 12
    .parameter "p"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .local v0, buf:[B
    const/4 v3, 0x1

    .local v3, offset:I
    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v6

    .local v6, sessionId:B
    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v7

    .local v7, transactionId:B
    add-int/lit8 v3, v3, 0x1

    const/16 v8, 0x9

    invoke-static {v8, v6, v7, v10}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v4

    .local v4, r:Lcom/motorola/android/locationproxy/SuplRequest;
    iget-object v8, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_0
    iget-object v9, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x6

    new-array v5, v8, [Ljava/lang/Object;

    .local v5, result:[Ljava/lang/Object;
    const/4 v8, 0x0

    iget v9, v4, Lcom/motorola/android/locationproxy/SuplRequest;->mSerial:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    add-int/lit8 v3, v3, 0x4

    const/4 v8, 0x2

    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    add-int/lit8 v3, v3, 0x4

    const/4 v8, 0x3

    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readShort([BI)S

    move-result v9

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    aput-object v9, v5, v8

    add-int/lit8 v3, v3, 0x2

    const/4 v8, 0x4

    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    add-int/lit8 v3, v3, 0x4

    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v8

    and-int/lit16 v2, v8, 0xff

    .local v2, dnsLength:I
    add-int/lit8 v3, v3, 0x1

    if-lez v2, :cond_0

    invoke-direct {p0, v0, v3, v2}, Lcom/motorola/android/locationproxy/Supl;->readByteArray([BII)[B

    move-result-object v1

    .local v1, dns:[B
    aput-object v1, v5, v11

    .end local v1           #dns:[B
    :goto_0
    iget-object v8, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mOpenSocketRegistrants:Landroid/os/RegistrantList;

    new-instance v9, Landroid/os/AsyncResult;

    invoke-direct {v9, v10, v5, v10}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v8, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .end local v2           #dnsLength:I
    .end local v5           #result:[Ljava/lang/Object;
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .restart local v2       #dnsLength:I
    .restart local v5       #result:[Ljava/lang/Object;
    :cond_0
    aput-object v10, v5, v11

    goto :goto_0
.end method

.method private processResponse(Landroid/os/Parcel;)V
    .locals 5
    .parameter "p"

    .prologue
    const-string v4, "SUPLJ"

    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .local v0, msg:[B
    const/4 v2, 0x0

    aget-byte v1, v0, v2

    .local v1, subCommandId:B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handle SubCMD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/motorola/android/locationproxy/Supl;->SubCommandIdToString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/locationproxy/Supl;->suplLog(Ljava/lang/String;)V

    sparse-switch v1, :sswitch_data_0

    const-string v2, "SUPLJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid supl event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/motorola/android/locationproxy/Supl;->SubCommandIdToString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->processDbWriteResult(Landroid/os/Parcel;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->processDbReadResult(Landroid/os/Parcel;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->processOpenSocketRequest(Landroid/os/Parcel;)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->processSocketDataRequest(Landroid/os/Parcel;)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->processCloseSocketRequest(Landroid/os/Parcel;)V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->processTlsSessionRequest(Landroid/os/Parcel;)V

    goto :goto_0

    :sswitch_6
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->processMtlrRequest(Landroid/os/Parcel;)V

    goto :goto_0

    :sswitch_7
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->processMtlr2Request(Landroid/os/Parcel;)V

    goto :goto_0

    :sswitch_8
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->processMtlrStatus(Landroid/os/Parcel;)V

    goto :goto_0

    :sswitch_9
    const-string v2, "SUPLJ"

    const-string v2, "TIPC_GPS_HTTP_POST_FILE_BPAP_REQ"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->processHttpPostRequest(Landroid/os/Parcel;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x7 -> :sswitch_1
        0x9 -> :sswitch_2
        0xb -> :sswitch_3
        0xe -> :sswitch_4
        0x13 -> :sswitch_6
        0x15 -> :sswitch_8
        0x1e -> :sswitch_5
        0x20 -> :sswitch_7
        0x21 -> :sswitch_9
    .end sparse-switch
.end method

.method private processSocketDataRequest(Landroid/os/Parcel;)V
    .locals 12
    .parameter "p"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .local v0, buf:[B
    const/4 v3, 0x1

    .local v3, offset:I
    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v6

    .local v6, sessionId:B
    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v7

    .local v7, transactionId:B
    add-int/lit8 v3, v3, 0x1

    const/16 v8, 0xb

    invoke-static {v8, v6, v7, v10}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v4

    .local v4, r:Lcom/motorola/android/locationproxy/SuplRequest;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/motorola/android/locationproxy/SuplRequest;->serialString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-byte v9, v4, Lcom/motorola/android/locationproxy/SuplRequest;->mSubCommandId:B

    invoke-static {v9}, Lcom/motorola/android/locationproxy/Supl;->SubCommandIdToString(B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/motorola/android/locationproxy/Supl;->suplLog(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_0
    iget-object v9, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x3

    new-array v5, v8, [Ljava/lang/Object;

    .local v5, result:[Ljava/lang/Object;
    const/4 v8, 0x0

    iget v9, v4, Lcom/motorola/android/locationproxy/SuplRequest;->mSerial:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    add-int/lit8 v3, v3, 0x4

    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v2

    .local v2, dataLength:I
    add-int/lit8 v3, v3, 0x4

    if-lez v2, :cond_0

    invoke-direct {p0, v0, v3, v2}, Lcom/motorola/android/locationproxy/Supl;->readByteArray([BII)[B

    move-result-object v1

    .local v1, data:[B
    aput-object v1, v5, v11

    .end local v1           #data:[B
    :goto_0
    iget-object v8, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mSocketDataRegistrants:Landroid/os/RegistrantList;

    new-instance v9, Landroid/os/AsyncResult;

    invoke-direct {v9, v10, v5, v10}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v8, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .end local v2           #dataLength:I
    .end local v5           #result:[Ljava/lang/Object;
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .restart local v2       #dataLength:I
    .restart local v5       #result:[Ljava/lang/Object;
    :cond_0
    aput-object v10, v5, v11

    const-string v8, "SUPLJ"

    const-string v9, "No data to be fwd"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processTlsSessionRequest(Landroid/os/Parcel;)V
    .locals 13
    .parameter "p"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .local v0, buf:[B
    const/4 v3, 0x1

    .local v3, offset:I
    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v6

    .local v6, sessionId:B
    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v7

    .local v7, transactionId:B
    add-int/lit8 v3, v3, 0x1

    const/16 v8, 0x1e

    invoke-static {v8, v6, v7, v10}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v4

    .local v4, r:Lcom/motorola/android/locationproxy/SuplRequest;
    iget-object v8, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_0
    iget-object v9, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x3

    new-array v5, v8, [Ljava/lang/Object;

    .local v5, result:[Ljava/lang/Object;
    const/4 v8, 0x0

    iget v9, v4, Lcom/motorola/android/locationproxy/SuplRequest;->mSerial:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v11

    add-int/lit8 v3, v3, 0x4

    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    sub-int v2, v8, v11

    .local v2, fqdnLength:I
    add-int/lit8 v3, v3, 0x1

    if-lez v2, :cond_0

    invoke-direct {p0, v0, v3, v2}, Lcom/motorola/android/locationproxy/Supl;->readByteArray([BII)[B

    move-result-object v1

    .local v1, fqdn:[B
    aput-object v1, v5, v12

    .end local v1           #fqdn:[B
    :goto_0
    iget-object v8, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mTlsRegistrants:Landroid/os/RegistrantList;

    new-instance v9, Landroid/os/AsyncResult;

    invoke-direct {v9, v10, v5, v10}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v8, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .end local v2           #fqdnLength:I
    .end local v5           #result:[Ljava/lang/Object;
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .restart local v2       #fqdnLength:I
    .restart local v5       #result:[Ljava/lang/Object;
    :cond_0
    const-string v8, "LOG_TAG"

    const-string v9, "fqdn length is 0"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    aput-object v10, v5, v12

    goto :goto_0
.end method

.method private readByte([BI)B
    .locals 1
    .parameter "buf"
    .parameter "offset"

    .prologue
    aget-byte v0, p1, p2

    return v0
.end method

.method private readByteArray([BII)[B
    .locals 4
    .parameter "buf"
    .parameter "offset"
    .parameter "length"

    .prologue
    new-array v2, p3, [B

    .local v2, val:[B
    const/4 v0, 0x0

    .local v0, i:I
    move v1, p2

    .end local p2
    .local v1, offset:I
    :goto_0
    if-ge v0, p3, :cond_0

    add-int/lit8 p2, v1, 0x1

    .end local v1           #offset:I
    .restart local p2
    aget-byte v3, p1, v1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    move v1, p2

    .end local p2
    .restart local v1       #offset:I
    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static readCommandId(Ljava/io/InputStream;)B
    .locals 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [B

    .local v0, buf:[B
    invoke-static {p0, v0, v2}, Lcom/motorola/android/locationproxy/Supl;->readSocket(Ljava/io/InputStream;[BI)I

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "SUPLJ"

    const-string v2, "Reading CommandID Error"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    :goto_0
    return v1

    :cond_0
    aget-byte v1, v0, v3

    goto :goto_0
.end method

.method private readInt([BI)I
    .locals 3
    .parameter "buf"
    .parameter "offset"

    .prologue
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, offset:I
    aget-byte v2, p1, p2

    and-int/lit16 v1, v2, 0xff

    .local v1, val:I
    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p2, v0, 0x1

    .end local v0           #offset:I
    .restart local p2
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #offset:I
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p2, v0, 0x1

    .end local v0           #offset:I
    .restart local p2
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method private static readMessageLength(Ljava/io/InputStream;)S
    .locals 5
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    new-array v0, v3, [B

    .local v0, buf:[B
    invoke-static {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readSocket(Ljava/io/InputStream;[BI)I

    move-result v2

    if-eq v2, v3, :cond_0

    const-string v2, "SUPLJ"

    const-string v3, "Reading Message Length ERROR"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    :goto_0
    return v2

    :cond_0
    const/4 v1, 0x0

    .local v1, length:S
    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v1

    int-to-short v1, v2

    shl-int/lit8 v2, v1, 0x8

    int-to-short v1, v2

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v1

    int-to-short v1, v2

    move v2, v1

    goto :goto_0
.end method

.method private readShort([BI)S
    .locals 3
    .parameter "buf"
    .parameter "offset"

    .prologue
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, offset:I
    aget-byte v2, p1, p2

    and-int/lit16 v1, v2, 0xff

    .local v1, val:I
    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    const v2, 0xffff

    and-int/2addr v2, v1

    int-to-short v2, v2

    return v2
.end method

.method private static readSocket(Ljava/io/InputStream;[BI)I
    .locals 5
    .parameter "is"
    .parameter "buffer"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, countRead:I
    const/4 v1, 0x0

    .local v1, offset:I
    move v2, p2

    .local v2, remaining:I
    :cond_0
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_1

    const-string v3, "SUPLJ"

    const-string v4, "Reading Socket ERROR"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_1
    add-int/2addr v1, v0

    sub-int/2addr v2, v0

    if-gtz v2, :cond_0

    sub-int v3, p2, v2

    goto :goto_0
.end method

.method private static readSuplMessage(Ljava/io/InputStream;[B)I
    .locals 6
    .parameter "is"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const-string v4, "SUPLJ"

    invoke-static {p0}, Lcom/motorola/android/locationproxy/Supl;->readCommandId(Ljava/io/InputStream;)B

    move-result v2

    const/16 v3, 0x50

    if-eq v2, v3, :cond_0

    const-string v2, "SUPLJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown cmd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    :goto_0
    return v2

    :cond_0
    invoke-static {p0}, Lcom/motorola/android/locationproxy/Supl;->readMessageLength(Ljava/io/InputStream;)S

    move-result v1

    .local v1, messageLength:I
    const-string v2, "SUPLJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    sub-int v0, v1, v2

    .local v0, bodyLength:I
    add-int/lit8 v2, v0, 0x2

    invoke-static {p0, p1, v2}, Lcom/motorola/android/locationproxy/Supl;->readSocket(Ljava/io/InputStream;[BI)I

    aget-byte v2, p1, v0

    const/16 v3, -0x31

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    const/16 v3, -0x50

    if-eq v2, v3, :cond_2

    :cond_1
    const-string v2, "SUPLJ"

    const-string v2, "NO tail marker"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method private send(Lcom/motorola/android/locationproxy/SuplRequest;)V
    .locals 7
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, "SUPLJ"

    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/locationproxy/Supl;->mSocket:Landroid/net/LocalSocket;

    .local v2, s:Landroid/net/LocalSocket;
    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/motorola/android/locationproxy/SuplRequest;->getData()[B

    move-result-object v0

    .local v0, data:[B
    invoke-direct {p0, v0}, Lcom/motorola/android/locationproxy/Supl;->logSuplApBpRequest([B)V

    const-string v3, "SUPLJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writing packet: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0           #data:[B
    .end local v2           #s:Landroid/net/LocalSocket;
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, ex:Ljava/io/IOException;
    const-string v3, "SUPLJ"

    const-string v3, "IOException"

    invoke-static {v6, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v1
.end method

.method private suplLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    const-string v0, "SUPLJ"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public forwardSocketData(I[BI)V
    .locals 7
    .parameter "linkId"
    .parameter "data"
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-static {v4, v6, v6, v5}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v3

    .local v3, r:Lcom/motorola/android/locationproxy/SuplRequest;
    array-length v0, p2

    .local v0, dataLength:I
    sget v4, Lcom/motorola/android/locationproxy/SuplRequest;->sHeaderLength:I

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x4

    sget v5, Lcom/motorola/android/locationproxy/SuplRequest;->sTailLength:I

    add-int v2, v4, v5

    .local v2, length:I
    invoke-virtual {v3, v2}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataCapacity(I)V

    invoke-virtual {v3, v6}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataPosition(I)V

    invoke-virtual {v3}, Lcom/motorola/android/locationproxy/SuplRequest;->writeHeader()V

    invoke-virtual {v3, p1}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    invoke-virtual {v3, v0}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    invoke-virtual {v3, p2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeByteArray([B)V

    invoke-virtual {v3, p3}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    const/16 v4, -0x3050

    invoke-virtual {v3, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->writeShort(S)V

    :try_start_0
    invoke-direct {p0, v3}, Lcom/motorola/android/locationproxy/Supl;->send(Lcom/motorola/android/locationproxy/SuplRequest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v3}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    return-void

    :catch_0
    move-exception v1

    .local v1, ex:Ljava/io/IOException;
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->onError(I)V

    goto :goto_0
.end method

.method public getDefaultConfigFQDN()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .local v3, result:Landroid/os/Message;
    const/4 v4, 0x6

    invoke-direct {p0}, Lcom/motorola/android/locationproxy/Supl;->generateSessionID()B

    move-result v5

    invoke-direct {p0}, Lcom/motorola/android/locationproxy/Supl;->generateTransactionId()B

    move-result v6

    invoke-static {v4, v5, v6, v3}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v2

    .local v2, r:Lcom/motorola/android/locationproxy/SuplRequest;
    sget v4, Lcom/motorola/android/locationproxy/SuplRequest;->sHeaderLength:I

    add-int/lit8 v4, v4, 0x4

    sget v5, Lcom/motorola/android/locationproxy/SuplRequest;->sTailLength:I

    add-int v1, v4, v5

    .local v1, length:I
    invoke-virtual {v2, v1}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataCapacity(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataPosition(I)V

    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeHeader()V

    const/high16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    const/16 v4, -0x3050

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->writeShort(S)V

    sget-object v4, Lcom/motorola/android/locationproxy/Supl;->sFqdnReadLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v2}, Lcom/motorola/android/locationproxy/Supl;->send(Lcom/motorola/android/locationproxy/SuplRequest;)V

    iget-object v6, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v5, Lcom/motorola/android/locationproxy/Supl;->sFqdnReadLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    iget-object v4, p0, Lcom/motorola/android/locationproxy/Supl;->mFqdnAddr:Ljava/lang/String;

    :goto_0
    return-object v4

    :catch_0
    move-exception v6

    move-object v0, v6

    .local v0, ex:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v4, v7

    goto :goto_0

    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v6

    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v5

    :catch_1
    move-exception v5

    move-object v0, v5

    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_9
    const-string v5, "SUPLJ"

    const-string v6, "got InterruptedException!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object v4, v7

    goto :goto_0
.end method

.method public getUserConfigFQDN()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-string v4, "Getting user config FQDN"

    invoke-direct {p0, v4}, Lcom/motorola/android/locationproxy/Supl;->suplLog(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .local v3, result:Landroid/os/Message;
    const/4 v4, 0x6

    invoke-direct {p0}, Lcom/motorola/android/locationproxy/Supl;->generateSessionID()B

    move-result v5

    invoke-direct {p0}, Lcom/motorola/android/locationproxy/Supl;->generateTransactionId()B

    move-result v6

    invoke-static {v4, v5, v6, v3}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v2

    .local v2, r:Lcom/motorola/android/locationproxy/SuplRequest;
    sget v4, Lcom/motorola/android/locationproxy/SuplRequest;->sHeaderLength:I

    add-int/lit8 v4, v4, 0x4

    sget v5, Lcom/motorola/android/locationproxy/SuplRequest;->sTailLength:I

    add-int v1, v4, v5

    .local v1, length:I
    invoke-virtual {v2, v1}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataCapacity(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataPosition(I)V

    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeHeader()V

    const/high16 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    const/16 v4, -0x3050

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->writeShort(S)V

    sget-object v4, Lcom/motorola/android/locationproxy/Supl;->sFqdnReadLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v2}, Lcom/motorola/android/locationproxy/Supl;->send(Lcom/motorola/android/locationproxy/SuplRequest;)V

    iget-object v6, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v5, Lcom/motorola/android/locationproxy/Supl;->sFqdnReadLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    iget-object v4, p0, Lcom/motorola/android/locationproxy/Supl;->mFqdnAddr:Ljava/lang/String;

    :goto_0
    return-object v4

    :catch_0
    move-exception v6

    move-object v0, v6

    .local v0, ex:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v4, v7

    goto :goto_0

    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v6

    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v5

    :catch_1
    move-exception v5

    move-object v0, v5

    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_9
    const-string v5, "SUPLJ"

    const-string v6, "got InterruptedException!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object v4, v7

    goto :goto_0
.end method

.method public sendCloseSocketResult(III)V
    .locals 8
    .parameter "id"
    .parameter "linkId"
    .parameter "result"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->findAndRemoveRequestFromList(I)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v3

    .local v3, req:Lcom/motorola/android/locationproxy/SuplRequest;
    if-nez v3, :cond_0

    const-string v4, "SUPLJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/16 v4, 0xf

    iget-byte v5, v3, Lcom/motorola/android/locationproxy/SuplRequest;->mSessionId:B

    iget-byte v6, v3, Lcom/motorola/android/locationproxy/SuplRequest;->mTransactionId:B

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v2

    .local v2, r:Lcom/motorola/android/locationproxy/SuplRequest;
    invoke-virtual {v3}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    sget v4, Lcom/motorola/android/locationproxy/SuplRequest;->sHeaderLength:I

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x4

    sget v5, Lcom/motorola/android/locationproxy/SuplRequest;->sTailLength:I

    add-int v1, v4, v5

    .local v1, length:I
    invoke-virtual {v2, v1}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataCapacity(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataPosition(I)V

    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeHeader()V

    invoke-virtual {v2, p2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    invoke-virtual {v2, p3}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    const/16 v4, -0x3050

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->writeShort(S)V

    :try_start_0
    invoke-direct {p0, v2}, Lcom/motorola/android/locationproxy/Supl;->send(Lcom/motorola/android/locationproxy/SuplRequest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/io/IOException;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->onError(I)V

    goto :goto_1
.end method

.method public sendHttpResult(IIB)V
    .locals 8
    .parameter "id"
    .parameter "linkId"
    .parameter "http_result"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->findAndRemoveRequestFromList(I)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v3

    .local v3, req:Lcom/motorola/android/locationproxy/SuplRequest;
    if-nez v3, :cond_0

    const-string v4, "SUPLJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/16 v4, 0x22

    iget-byte v5, v3, Lcom/motorola/android/locationproxy/SuplRequest;->mSessionId:B

    iget-byte v6, v3, Lcom/motorola/android/locationproxy/SuplRequest;->mTransactionId:B

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v2

    .local v2, r:Lcom/motorola/android/locationproxy/SuplRequest;
    invoke-virtual {v3}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    sget v4, Lcom/motorola/android/locationproxy/SuplRequest;->sHeaderLength:I

    add-int/lit8 v4, v4, 0x1

    sget v5, Lcom/motorola/android/locationproxy/SuplRequest;->sTailLength:I

    add-int v1, v4, v5

    .local v1, length:I
    invoke-virtual {v2, v1}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataCapacity(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataPosition(I)V

    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeHeader()V

    invoke-virtual {v2, p3}, Lcom/motorola/android/locationproxy/SuplRequest;->writeByte(B)V

    const/16 v4, -0x3050

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->writeShort(S)V

    :try_start_0
    invoke-direct {p0, v2}, Lcom/motorola/android/locationproxy/Supl;->send(Lcom/motorola/android/locationproxy/SuplRequest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/io/IOException;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->onError(I)V

    goto :goto_1
.end method

.method public sendLocationRequestResponse(II)V
    .locals 8
    .parameter "id"
    .parameter "response_type"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->findAndRemoveRequestFromList(I)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v3

    .local v3, req:Lcom/motorola/android/locationproxy/SuplRequest;
    if-nez v3, :cond_0

    const-string v4, "SUPLJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/16 v4, 0x14

    iget-byte v5, v3, Lcom/motorola/android/locationproxy/SuplRequest;->mSessionId:B

    iget-byte v6, v3, Lcom/motorola/android/locationproxy/SuplRequest;->mTransactionId:B

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v2

    .local v2, r:Lcom/motorola/android/locationproxy/SuplRequest;
    invoke-virtual {v3}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    sget v4, Lcom/motorola/android/locationproxy/SuplRequest;->sHeaderLength:I

    add-int/lit8 v4, v4, 0x4

    sget v5, Lcom/motorola/android/locationproxy/SuplRequest;->sTailLength:I

    add-int v1, v4, v5

    .local v1, length:I
    invoke-virtual {v2, v1}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataCapacity(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataPosition(I)V

    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeHeader()V

    invoke-virtual {v2, p2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    const/16 v4, -0x3050

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->writeShort(S)V

    :try_start_0
    invoke-direct {p0, v2}, Lcom/motorola/android/locationproxy/Supl;->send(Lcom/motorola/android/locationproxy/SuplRequest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/io/IOException;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->onError(I)V

    goto :goto_1
.end method

.method public sendOpenSocketResult(III)V
    .locals 8
    .parameter "id"
    .parameter "linkId"
    .parameter "result"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->findAndRemoveRequestFromList(I)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v3

    .local v3, req:Lcom/motorola/android/locationproxy/SuplRequest;
    if-nez v3, :cond_0

    const-string v4, "SUPLJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/16 v4, 0xa

    iget-byte v5, v3, Lcom/motorola/android/locationproxy/SuplRequest;->mSessionId:B

    iget-byte v6, v3, Lcom/motorola/android/locationproxy/SuplRequest;->mTransactionId:B

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v2

    .local v2, r:Lcom/motorola/android/locationproxy/SuplRequest;
    invoke-virtual {v3}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    sget v4, Lcom/motorola/android/locationproxy/SuplRequest;->sHeaderLength:I

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x4

    sget v5, Lcom/motorola/android/locationproxy/SuplRequest;->sTailLength:I

    add-int v1, v4, v5

    .local v1, length:I
    invoke-virtual {v2, v1}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataCapacity(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataPosition(I)V

    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeHeader()V

    invoke-virtual {v2, p2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    invoke-virtual {v2, p3}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    const/16 v4, -0x3050

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->writeShort(S)V

    :try_start_0
    invoke-direct {p0, v2}, Lcom/motorola/android/locationproxy/Supl;->send(Lcom/motorola/android/locationproxy/SuplRequest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/io/IOException;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->onError(I)V

    goto :goto_1
.end method

.method public sendSocketDataResult(III)V
    .locals 8
    .parameter "id"
    .parameter "linkId"
    .parameter "result"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->findAndRemoveRequestFromList(I)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v3

    .local v3, req:Lcom/motorola/android/locationproxy/SuplRequest;
    if-nez v3, :cond_0

    const-string v4, "SUPLJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/16 v4, 0xc

    iget-byte v5, v3, Lcom/motorola/android/locationproxy/SuplRequest;->mSessionId:B

    iget-byte v6, v3, Lcom/motorola/android/locationproxy/SuplRequest;->mTransactionId:B

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v2

    .local v2, r:Lcom/motorola/android/locationproxy/SuplRequest;
    invoke-virtual {v3}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    sget v4, Lcom/motorola/android/locationproxy/SuplRequest;->sHeaderLength:I

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x4

    sget v5, Lcom/motorola/android/locationproxy/SuplRequest;->sTailLength:I

    add-int v1, v4, v5

    .local v1, length:I
    invoke-virtual {v2, v1}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataCapacity(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataPosition(I)V

    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeHeader()V

    invoke-virtual {v2, p2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    invoke-virtual {v2, p3}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    const/16 v4, -0x3050

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->writeShort(S)V

    :try_start_0
    invoke-direct {p0, v2}, Lcom/motorola/android/locationproxy/Supl;->send(Lcom/motorola/android/locationproxy/SuplRequest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/io/IOException;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->onError(I)V

    goto :goto_1
.end method

.method public sendTlsResult(IIB)V
    .locals 8
    .parameter "id"
    .parameter "linkId"
    .parameter "tls_result"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->findAndRemoveRequestFromList(I)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v3

    .local v3, req:Lcom/motorola/android/locationproxy/SuplRequest;
    if-nez v3, :cond_0

    const-string v4, "SUPLJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/16 v4, 0x1f

    iget-byte v5, v3, Lcom/motorola/android/locationproxy/SuplRequest;->mSessionId:B

    iget-byte v6, v3, Lcom/motorola/android/locationproxy/SuplRequest;->mTransactionId:B

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v2

    .local v2, r:Lcom/motorola/android/locationproxy/SuplRequest;
    invoke-virtual {v3}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    sget v4, Lcom/motorola/android/locationproxy/SuplRequest;->sHeaderLength:I

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x1

    sget v5, Lcom/motorola/android/locationproxy/SuplRequest;->sTailLength:I

    add-int v1, v4, v5

    .local v1, length:I
    invoke-virtual {v2, v1}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataCapacity(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataPosition(I)V

    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeHeader()V

    invoke-virtual {v2, p2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    invoke-virtual {v2, p3}, Lcom/motorola/android/locationproxy/SuplRequest;->writeByte(B)V

    const/16 v4, -0x3050

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->writeShort(S)V

    :try_start_0
    invoke-direct {p0, v2}, Lcom/motorola/android/locationproxy/Supl;->send(Lcom/motorola/android/locationproxy/SuplRequest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/io/IOException;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->onError(I)V

    goto :goto_1
.end method

.method public sendWapPushNotification([B)V
    .locals 7
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Forward wap push data "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/motorola/android/locationproxy/Supl;->suplLog(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/android/locationproxy/Supl;->logHexData([B)V

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-static {v4, v6, v6, v5}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v3

    .local v3, r:Lcom/motorola/android/locationproxy/SuplRequest;
    array-length v0, p1

    .local v0, dataLength:I
    sget v4, Lcom/motorola/android/locationproxy/SuplRequest;->sHeaderLength:I

    add-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v0

    sget v5, Lcom/motorola/android/locationproxy/SuplRequest;->sTailLength:I

    add-int v2, v4, v5

    .local v2, length:I
    invoke-virtual {v3, v2}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataCapacity(I)V

    invoke-virtual {v3, v6}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataPosition(I)V

    invoke-virtual {v3}, Lcom/motorola/android/locationproxy/SuplRequest;->writeHeader()V

    invoke-virtual {v3, v0}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    invoke-virtual {v3, p1}, Lcom/motorola/android/locationproxy/SuplRequest;->writeByteArray([B)V

    const/16 v4, -0x3050

    invoke-virtual {v3, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->writeShort(S)V

    :try_start_0
    invoke-direct {p0, v3}, Lcom/motorola/android/locationproxy/Supl;->send(Lcom/motorola/android/locationproxy/SuplRequest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v3}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    return-void

    :catch_0
    move-exception v1

    .local v1, ex:Ljava/io/IOException;
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->onError(I)V

    goto :goto_0
.end method

.method public setUserConfigFQDN(Ljava/lang/String;)Z
    .locals 10
    .parameter "newFQDN"

    .prologue
    const/4 v9, 0x0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .local v5, result:Landroid/os/Message;
    const/4 v6, 0x4

    invoke-direct {p0}, Lcom/motorola/android/locationproxy/Supl;->generateSessionID()B

    move-result v7

    invoke-direct {p0}, Lcom/motorola/android/locationproxy/Supl;->generateTransactionId()B

    move-result v8

    invoke-static {v6, v7, v8, v5}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v4

    .local v4, r:Lcom/motorola/android/locationproxy/SuplRequest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, data:[B
    array-length v6, v0

    add-int/lit8 v1, v6, 0x1

    .local v1, dataLength:I
    sget v6, Lcom/motorola/android/locationproxy/SuplRequest;->sHeaderLength:I

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    sget v7, Lcom/motorola/android/locationproxy/SuplRequest;->sTailLength:I

    add-int v3, v6, v7

    .local v3, length:I
    invoke-virtual {v4, v3}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataCapacity(I)V

    invoke-virtual {v4, v9}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataPosition(I)V

    invoke-virtual {v4}, Lcom/motorola/android/locationproxy/SuplRequest;->writeHeader()V

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/motorola/android/locationproxy/SuplRequest;->writeShort(S)V

    const/high16 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    int-to-short v6, v1

    invoke-virtual {v4, v6}, Lcom/motorola/android/locationproxy/SuplRequest;->writeShort(S)V

    invoke-virtual {v4, v0}, Lcom/motorola/android/locationproxy/SuplRequest;->writeByteArray([B)V

    invoke-virtual {v4, v9}, Lcom/motorola/android/locationproxy/SuplRequest;->writeByte(B)V

    const/16 v6, -0x3050

    invoke-virtual {v4, v6}, Lcom/motorola/android/locationproxy/SuplRequest;->writeShort(S)V

    iput-boolean v9, p0, Lcom/motorola/android/locationproxy/Supl;->mFqdnWriteResult:Z

    sget-object v6, Lcom/motorola/android/locationproxy/Supl;->sFqdnWriteLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v4}, Lcom/motorola/android/locationproxy/Supl;->send(Lcom/motorola/android/locationproxy/SuplRequest;)V

    iget-object v8, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v7, Lcom/motorola/android/locationproxy/Supl;->sFqdnWriteLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v5}, Landroid/os/Message;->recycle()V

    iget-boolean v6, p0, Lcom/motorola/android/locationproxy/Supl;->mFqdnWriteResult:Z

    :goto_0
    return v6

    :catch_0
    move-exception v8

    move-object v2, v8

    .local v2, ex:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v4}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    invoke-virtual {v5}, Landroid/os/Message;->recycle()V

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v6, v9

    goto :goto_0

    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v8

    :catchall_1
    move-exception v7

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v7

    :catch_1
    move-exception v7

    move-object v2, v7

    .local v2, ex:Ljava/lang/InterruptedException;
    :try_start_9
    const-string v7, "SUPLJ"

    const-string v8, "got InterruptedException!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/os/Message;->recycle()V

    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move v6, v9

    goto :goto_0
.end method
