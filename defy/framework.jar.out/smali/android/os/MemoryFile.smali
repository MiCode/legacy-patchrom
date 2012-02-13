.class public Landroid/os/MemoryFile;
.super Ljava/lang/Object;
.source "MemoryFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MemoryFile$1;,
        Landroid/os/MemoryFile$MemoryOutputStream;,
        Landroid/os/MemoryFile$MemoryInputStream;
    }
.end annotation


# static fields
.field private static final PROT_READ:I = 0x1

.field private static final PROT_WRITE:I = 0x2

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAddress:I

.field private mAllowPurging:Z

.field private mFD:Ljava/io/FileDescriptor;

.field private mLength:I

.field private final mOwnsRegion:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "MemoryFile"

    sput-object v0, Landroid/os/MemoryFile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;ILjava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "length"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "File descriptor is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Landroid/os/MemoryFile;->isMemoryFile(Ljava/io/FileDescriptor;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a memory file."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p2, p0, Landroid/os/MemoryFile;->mLength:I

    iput-object p1, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    invoke-static {p3}, Landroid/os/MemoryFile;->modeToProt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, p2, v1}, Landroid/os/MemoryFile;->native_mmap(Ljava/io/FileDescriptor;II)I

    move-result v0

    iput v0, p0, Landroid/os/MemoryFile;->mAddress:I

    iput-boolean v2, p0, Landroid/os/MemoryFile;->mOwnsRegion:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "name"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    iput p2, p0, Landroid/os/MemoryFile;->mLength:I

    invoke-static {p1, p2}, Landroid/os/MemoryFile;->native_open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    const/4 v1, 0x3

    invoke-static {v0, p2, v1}, Landroid/os/MemoryFile;->native_mmap(Ljava/io/FileDescriptor;II)I

    move-result v0

    iput v0, p0, Landroid/os/MemoryFile;->mAddress:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/MemoryFile;->mOwnsRegion:Z

    return-void
.end method

.method static synthetic access$200(Landroid/os/MemoryFile;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    return v0
.end method

.method public static getSize(Ljava/io/FileDescriptor;)I
    .locals 1
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {p0}, Landroid/os/MemoryFile;->native_get_size(Ljava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method private isClosed()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDeactivated()Z
    .locals 1

    .prologue
    iget v0, p0, Landroid/os/MemoryFile;->mAddress:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMemoryFile(Ljava/io/FileDescriptor;)Z
    .locals 1
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {p0}, Landroid/os/MemoryFile;->native_get_size(Ljava/io/FileDescriptor;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static modeToProt(Ljava/lang/String;)I
    .locals 3
    .parameter "mode"

    .prologue
    const-string v0, "r"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported file mode: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native native_close(Ljava/io/FileDescriptor;)V
.end method

.method private static native native_get_size(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_mmap(Ljava/io/FileDescriptor;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_munmap(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_open(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_pin(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_read(Ljava/io/FileDescriptor;I[BIIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_write(Ljava/io/FileDescriptor;I[BIIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public declared-synchronized allowPurging(Z)Z
    .locals 3
    .parameter "allowPurging"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/os/MemoryFile;->mOwnsRegion:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Only the owner can make ashmem regions purgable."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    .local v0, oldValue:Z
    if-eq v0, p1, :cond_1

    iget-object v1, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    if-nez p1, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-static {v1, v2}, Landroid/os/MemoryFile;->native_pin(Ljava/io/FileDescriptor;Z)V

    iput-boolean p1, p0, Landroid/os/MemoryFile;->mAllowPurging:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return v0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/os/MemoryFile;->deactivate()V

    invoke-direct {p0}, Landroid/os/MemoryFile;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/os/MemoryFile;->native_close(Ljava/io/FileDescriptor;)V

    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 3

    .prologue
    invoke-direct {p0}, Landroid/os/MemoryFile;->isDeactivated()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget v1, p0, Landroid/os/MemoryFile;->mAddress:I

    iget v2, p0, Landroid/os/MemoryFile;->mLength:I

    invoke-static {v1, v2}, Landroid/os/MemoryFile;->native_munmap(II)V

    const/4 v1, 0x0

    iput v1, p0, Landroid/os/MemoryFile;->mAddress:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/io/IOException;
    sget-object v1, Landroid/os/MemoryFile;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/os/MemoryFile;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/MemoryFile;->TAG:Ljava/lang/String;

    const-string v1, "MemoryFile.finalize() called while ashmem still open"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/MemoryFile;->close()V

    :cond_0
    return-void
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    new-instance v0, Landroid/os/MemoryFile$MemoryInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/MemoryFile$MemoryInputStream;-><init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile$1;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    new-instance v0, Landroid/os/MemoryFile$MemoryOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/MemoryFile$MemoryOutputStream;-><init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile$1;)V

    return-object v0
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .local v0, fd:Ljava/io/FileDescriptor;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPurgingAllowed()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    return v0
.end method

.method public readBytes([BIII)I
    .locals 7
    .parameter "buffer"
    .parameter "srcOffset"
    .parameter "destOffset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/os/MemoryFile;->isDeactivated()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t read from deactivated memory file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p3, :cond_1

    array-length v0, p1

    if-gt p3, v0, :cond_1

    if-ltz p4, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p4, v0, :cond_1

    if-ltz p2, :cond_1

    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    if-gt p2, v0, :cond_1

    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    sub-int/2addr v0, p2

    if-le p4, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    iget v1, p0, Landroid/os/MemoryFile;->mAddress:I

    iget-boolean v6, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/os/MemoryFile;->native_read(Ljava/io/FileDescriptor;I[BIIIZ)I

    move-result v0

    return v0
.end method

.method public writeBytes([BIII)V
    .locals 7
    .parameter "buffer"
    .parameter "srcOffset"
    .parameter "destOffset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/os/MemoryFile;->isDeactivated()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t write to deactivated memory file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    array-length v0, p1

    if-gt p2, v0, :cond_1

    if-ltz p4, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p4, v0, :cond_1

    if-ltz p3, :cond_1

    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    if-gt p3, v0, :cond_1

    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    sub-int/2addr v0, p3

    if-le p4, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    iget v1, p0, Landroid/os/MemoryFile;->mAddress:I

    iget-boolean v6, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/os/MemoryFile;->native_write(Ljava/io/FileDescriptor;I[BIIIZ)V

    return-void
.end method
