.class public Landroid/app/backup/BackupDataOutput;
.super Ljava/lang/Object;
.source "BackupDataOutput.java"


# instance fields
.field mBackupWriter:I


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 3
    .parameter "fd"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-static {p1}, Landroid/app/backup/BackupDataOutput;->ctor(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:I

    iget v0, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:I

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Native initialization failed with fd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private static native ctor(Ljava/io/FileDescriptor;)I
.end method

.method private static native dtor(I)V
.end method

.method private static native setKeyPrefix_native(ILjava/lang/String;)V
.end method

.method private static native writeEntityData_native(I[BI)I
.end method

.method private static native writeEntityHeader_native(ILjava/lang/String;I)I
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    iget v0, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:I

    invoke-static {v0}, Landroid/app/backup/BackupDataOutput;->dtor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public setKeyPrefix(Ljava/lang/String;)V
    .locals 1
    .parameter "keyPrefix"

    .prologue
    iget v0, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:I

    invoke-static {v0, p1}, Landroid/app/backup/BackupDataOutput;->setKeyPrefix_native(ILjava/lang/String;)V

    return-void
.end method

.method public writeEntityData([BI)I
    .locals 4
    .parameter "data"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget v1, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:I

    invoke-static {v1, p1, p2}, Landroid/app/backup/BackupDataOutput;->writeEntityData_native(I[BI)I

    move-result v0

    .local v0, result:I
    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeEntityHeader(Ljava/lang/String;I)I
    .locals 4
    .parameter "key"
    .parameter "dataSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget v1, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:I

    invoke-static {v1, p1, p2}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader_native(ILjava/lang/String;I)I

    move-result v0

    .local v0, result:I
    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
