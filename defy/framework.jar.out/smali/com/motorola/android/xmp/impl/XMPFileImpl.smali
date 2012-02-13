.class public Lcom/motorola/android/xmp/impl/XMPFileImpl;
.super Ljava/lang/Object;
.source "XMPFileImpl.java"

# interfaces
.implements Lcom/motorola/android/xmp/XMPFile;


# static fields
.field private static final TAG:Ljava/lang/String; = "XMP File"


# instance fields
.field private exceptionNum:I

.field private nativeHandler:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    :try_start_0
    const-string v1, "Xmp_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "XMP File"

    const-string v2, "xmp_jni library not found!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v1, "XMP File"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "XMP File"

    const-string v0, "begin XMPFile instance"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/motorola/android/xmp/impl/XMPFileImpl;->xmpCreateXMPFile()I

    move-result v0

    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->nativeHandler:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->exceptionNum:I

    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->nativeHandler:I

    if-gtz v0, :cond_0

    const-string v0, "XMP File"

    const-string v0, "Create native handler failed \n"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private native xmpCanPut(I[B)Z
.end method

.method private native xmpCanPutMeta(ILcom/motorola/android/xmp/impl/XMPMetaJniImpl;)Z
.end method

.method private native xmpCheckFileFormatNat(ILjava/lang/String;)I
.end method

.method private native xmpCloseFile(II)I
.end method

.method private native xmpCreateXMPFile()I
.end method

.method private native xmpGetXmp(ILcom/motorola/android/xmp/XMPPacketInfo;)[B
.end method

.method private native xmpGetXmpMeta(ILcom/motorola/android/xmp/impl/XMPMetaJniImpl;)V
.end method

.method private static native xmpInit()I
.end method

.method private native xmpOpenFile(ILjava/lang/String;II)I
.end method

.method private native xmpPutXmp(I[B)Z
.end method

.method private native xmpPutXmpMeta(ILcom/motorola/android/xmp/impl/XMPMetaJniImpl;)Z
.end method

.method private native xmpReleaseXMPFile(I)V
.end method

.method private static native xmpTerminate()V
.end method


# virtual methods
.method public declared-synchronized canPutXMP(Lcom/motorola/android/xmp/XMPMeta;)Z
    .locals 6
    .parameter "xmpObj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const-string v3, "xmpObj is null"

    const-string v3, "XMP File"

    monitor-enter p0

    :try_start_0
    const-string v3, "XMP File"

    const-string v4, "Enter canPutXMP for XMPMeta xmpObj"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v3, "XMP File"

    const-string v4, "xmpObj is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/motorola/android/xmp/XMPException;

    const-string v4, "xmpObj is null"

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_1
    instance-of v3, p1, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;

    if-eqz v3, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;

    move-object v2, v0

    .local v2, xmpMetaJni:Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;
    const/4 v3, -0x1

    iput v3, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->exceptionNum:I

    iget v3, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->nativeHandler:I

    invoke-direct {p0, v3, v2}, Lcom/motorola/android/xmp/impl/XMPFileImpl;->xmpCanPutMeta(ILcom/motorola/android/xmp/impl/XMPMetaJniImpl;)Z

    move-result v1

    iget v3, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->exceptionNum:I

    invoke-static {v3}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .end local v2           #xmpMetaJni:Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;
    :cond_1
    :try_start_2
    new-instance v3, Lcom/motorola/android/xmp/XMPException;

    const-string v4, "xmpObj is not a correct instance"

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized canPutXMP([B)Z
    .locals 4
    .parameter "xmpPacket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const-string v1, "xmpPacket is null"

    const-string v1, "XMP File"

    monitor-enter p0

    :try_start_0
    const-string v1, "XMP File"

    const-string v2, "Enter canPutXMP for byte[] xmpPacket"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v1, "XMP File"

    const-string v2, "xmpPacket is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/motorola/android/xmp/XMPException;

    const-string v2, "xmpPacket is null"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    const/4 v0, 0x0

    .local v0, result:Z
    const/4 v1, -0x1

    :try_start_1
    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->exceptionNum:I

    iget v1, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->nativeHandler:I

    invoke-direct {p0, v1, p1}, Lcom/motorola/android/xmp/impl/XMPFileImpl;->xmpCanPut(I[B)Z

    move-result v0

    iget v1, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->exceptionNum:I

    invoke-static {v1}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized checkFileFormat(Ljava/lang/String;)I
    .locals 4
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    const/4 v1, -0x1

    :try_start_0
    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->exceptionNum:I

    iget v1, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->nativeHandler:I

    invoke-direct {p0, v1, p1}, Lcom/motorola/android/xmp/impl/XMPFileImpl;->xmpCheckFileFormatNat(ILjava/lang/String;)I

    move-result v0

    .local v0, format:I
    iget v1, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->exceptionNum:I

    invoke-static {v1}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V

    const-string v1, "XMP File"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkFileFormat filePath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local v0           #format:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized close(Lcom/motorola/android/xmp/options/FileCloseOptions;)V
    .locals 4
    .parameter "closeFlags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const-string v1, "XMP File"

    monitor-enter p0

    :try_start_0
    const-string v1, "XMP File"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entry close,closeFlags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/motorola/android/xmp/options/FileCloseOptions;->getOptions()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nativeHandler:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->nativeHandler:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->nativeHandler:I

    if-nez v1, :cond_0

    const-string v1, "XMP File"

    const-string v2, "Can not close ,native handler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/motorola/android/xmp/XMPException;

    const-string v2, "the file did not open before "

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    const/4 v1, -0x1

    :try_start_1
    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->exceptionNum:I

    iget v1, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->nativeHandler:I

    invoke-virtual {p1}, Lcom/motorola/android/xmp/options/FileCloseOptions;->getOptions()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/motorola/android/xmp/impl/XMPFileImpl;->xmpCloseFile(II)I

    move-result v0

    .local v0, result:I
    iget v1, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->exceptionNum:I

    invoke-static {v1}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V

    if-eqz v0, :cond_1

    const-string v1, "XMP File"

    const-string v2, "close handler failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->nativeHandler:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->nativeHandler:I

    invoke-direct {p0, v0}, Lcom/motorola/android/xmp/impl/XMPFileImpl;->xmpReleaseXMPFile(I)V

    return-void
.end method

.method public declared-synchronized getXMP()Lcom/motorola/android/xmp/XMPMeta;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const-string v1, "XMP File"

    monitor-enter p0

    :try_start_0
    const-string v1, "XMP File"

    const-string v2, "Enter getXMP !"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;-><init>(Z)V

    .local v0, xmpMetaJni:Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;
    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->exceptionNum:I

    iget v1, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->nativeHandler:I

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/xmp/impl/XMPFileImpl;->xmpGetXmpMeta(ILcom/motorola/android/xmp/impl/XMPMetaJniImpl;)V

    iget v1, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->exceptionNum:I

    invoke-static {v1}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V

    const-string v1, "XMP File"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Native Handler in xmpMetaJni is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->getNativeHandler()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->getNativeHandler()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0

    .end local v0           #xmpMetaJni:Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getXMP(Lcom/motorola/android/xmp/XMPPacketInfo;)[B
    .locals 4
    .parameter "packetInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const-string v1, "packetInfo is null"

    const-string v1, "XMP File"

    monitor-enter p0

    :try_start_0
    const-string v1, "XMP File"

    const-string v2, "Enter getXMP raw Packet !"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v1, "XMP File"

    const-string v2, "packetInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/motorola/android/xmp/XMPException;

    const-string v2, "packetInfo is null"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    const/4 v1, -0x1

    :try_start_1
    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->exceptionNum:I

    iget v1, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->nativeHandler:I

    invoke-direct {p0, v1, p1}, Lcom/motorola/android/xmp/impl/XMPFileImpl;->xmpGetXmp(ILcom/motorola/android/xmp/XMPPacketInfo;)[B

    move-result-object v0

    .local v0, packBuff:[B
    iget v1, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->exceptionNum:I

    invoke-static {v1}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized open(Ljava/lang/String;ILcom/motorola/android/xmp/options/FileOpenOptions;)Z
    .locals 5
    .parameter "filePath"
    .parameter "format"
    .parameter "openFlags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const-string v1, "the file path is null"

    const-string v1, "XMP File"

    monitor-enter p0

    :try_start_0
    const-string v1, "XMP File"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entry open API, filename:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Format:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Flags:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/motorola/android/xmp/options/FileOpenOptions;->getOptions()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v1, "XMP File"

    const-string v2, "the file path is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/motorola/android/xmp/XMPException;

    const-string v2, "the file path is null"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {p3, v1, v2}, Lcom/motorola/android/xmp/options/FileOpenOptions;->setOption(IZ)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->exceptionNum:I

    iget v1, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->nativeHandler:I

    invoke-virtual {p3}, Lcom/motorola/android/xmp/options/FileOpenOptions;->getOptions()I

    move-result v2

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/motorola/android/xmp/impl/XMPFileImpl;->xmpOpenFile(ILjava/lang/String;II)I

    move-result v0

    .local v0, handler:I
    iget v1, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->exceptionNum:I

    invoke-static {v1}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V

    if-nez v0, :cond_1

    const-string v1, "XMP File"

    const-string v2, "Success open file"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v4

    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    const-string v1, "XMP File"

    const-string v2, "Can not open file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized putXMP(Lcom/motorola/android/xmp/XMPMeta;)V
    .locals 5
    .parameter "xmpObj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const-string v2, "xmpObj is null"

    const-string v2, "XMP File"

    monitor-enter p0

    :try_start_0
    const-string v2, "XMP File"

    const-string v3, "Enter PutXMP for XMPMeta"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v2, "XMP File"

    const-string v3, "xmpObj is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/motorola/android/xmp/XMPException;

    const-string v3, "xmpObj is null"

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    :try_start_1
    instance-of v2, p1, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;

    move-object v1, v0

    .local v1, xmpMetaJni:Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;
    const/4 v2, -0x1

    iput v2, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->exceptionNum:I

    iget v2, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->nativeHandler:I

    invoke-direct {p0, v2, v1}, Lcom/motorola/android/xmp/impl/XMPFileImpl;->xmpPutXmpMeta(ILcom/motorola/android/xmp/impl/XMPMetaJniImpl;)Z

    iget v2, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->exceptionNum:I

    invoke-static {v2}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .end local v1           #xmpMetaJni:Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;
    :cond_1
    :try_start_2
    new-instance v2, Lcom/motorola/android/xmp/XMPException;

    const-string v3, "xmpObj is not a correct instance"

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized putXMP([B)V
    .locals 3
    .parameter "xmpPacket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const-string v0, "xmpPacket is null"

    const-string v0, "XMP File"

    monitor-enter p0

    :try_start_0
    const-string v0, "XMP File"

    const-string v1, "Enter PutXMP for byte[]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "XMP File"

    const-string v1, "xmpPacket is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/motorola/android/xmp/XMPException;

    const-string v1, "xmpPacket is null"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->exceptionNum:I

    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->nativeHandler:I

    invoke-direct {p0, v0, p1}, Lcom/motorola/android/xmp/impl/XMPFileImpl;->xmpPutXmp(I[B)Z

    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPFileImpl;->exceptionNum:I

    invoke-static {v0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method
