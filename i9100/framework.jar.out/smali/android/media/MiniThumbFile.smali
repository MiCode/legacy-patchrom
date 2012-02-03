.class public Landroid/media/MiniThumbFile;
.super Ljava/lang/Object;
.source "MiniThumbFile.java"


# static fields
.field public static final BYTES_PER_MINTHUMB:I = 0x2710

.field private static final EXTERNAL_SD_PATH:Ljava/lang/String; = null

.field private static final HEADER_SIZE:I = 0xd

.field private static final MINI_THUMB_DATA_FILE_VERSION:I = 0x3

.field public static final RESETBOTH:I = 0x3

.field public static final RESETEXTERNALSD:I = 0x2

.field public static final RESETINTERNALSD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MiniThumbFile"

.field public static mIsFromExternalSD:Z

.field private static sThumbFiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MiniThumbFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mChannel:Ljava/nio/channels/FileChannel;

.field private mCr:Landroid/content/ContentResolver;

.field private mMicroThumbId:I

.field private mMiniThumbFile:[Ljava/io/RandomAccessFile;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Landroid/media/MiniThumbFile;->mIsFromExternalSD:Z

    .line 78
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MiniThumbFile;->EXTERNAL_SD_PATH:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/RandomAccessFile;

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    .line 234
    iput-object p1, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    .line 235
    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    .line 236
    return-void
.end method

.method public static declared-synchronized instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;
    .locals 5
    .parameter "uri"

    .prologue
    .line 115
    const-class v2, Landroid/media/MiniThumbFile;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    .local v1, type:Ljava/lang/String;
    sget-object v3, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .line 118
    .local v0, file:Landroid/media/MiniThumbFile;
    if-nez v0, :cond_0

    .line 119
    new-instance v0, Landroid/media/MiniThumbFile;

    .end local v0           #file:Landroid/media/MiniThumbFile;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://media/external/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/media"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    .line 121
    .restart local v0       #file:Landroid/media/MiniThumbFile;
    sget-object v3, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :cond_0
    monitor-exit v2

    return-object v0

    .line 115
    .end local v0           #file:Landroid/media/MiniThumbFile;
    .end local v1           #type:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method private miniThumbDataFile(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/RandomAccessFile;
    .locals 8
    .parameter "uri"
    .parameter "cr"

    .prologue
    .line 198
    invoke-virtual {p0, p1, p2}, Landroid/media/MiniThumbFile;->isExternalSD(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v5

    sput-boolean v5, Landroid/media/MiniThumbFile;->mIsFromExternalSD:Z

    .line 199
    sget-boolean v5, Landroid/media/MiniThumbFile;->mIsFromExternalSD:Z

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    move v3, v5

    .line 201
    .local v3, idx:I
    :goto_0
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    aget-object v5, v5, v3

    if-nez v5, :cond_1

    .line 202
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->removeOldFile()V

    .line 203
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, path:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 205
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    .line 206
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 207
    const-string v5, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create .thumbnails directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v2, f:Ljava/io/File;
    :try_start_0
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    new-instance v6, Ljava/io/RandomAccessFile;

    const-string/jumbo v7, "rw"

    invoke-direct {v6, v2, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v6, v5, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v0           #directory:Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    .end local v4           #path:Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    aget-object v5, v5, v3

    if-eqz v5, :cond_2

    .line 226
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    .line 229
    :cond_2
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    aget-object v5, v5, v3

    return-object v5

    .line 199
    .end local v3           #idx:I
    :cond_3
    const/4 v5, 0x0

    move v3, v5

    goto :goto_0

    .line 214
    .restart local v0       #directory:Ljava/io/File;
    .restart local v2       #f:Ljava/io/File;
    .restart local v3       #idx:I
    .restart local v4       #path:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 218
    .local v1, ex:Ljava/io/IOException;
    :try_start_1
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    new-instance v6, Ljava/io/RandomAccessFile;

    const-string/jumbo v7, "r"

    invoke-direct {v6, v2, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v6, v5, v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 219
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method private randomAccessFilePath(I)Ljava/lang/String;
    .locals 3
    .parameter "version"

    .prologue
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Landroid/media/MiniThumbFile;->mIsFromExternalSD:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/media/MiniThumbFile;->EXTERNAL_SD_PATH:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/.thumbnails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, directoryName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.thumbdata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 138
    .end local v0           #directoryName:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private removeOldFile()V
    .locals 3

    .prologue
    .line 148
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, oldPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, oldFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static declared-synchronized reset()V
    .locals 4

    .prologue
    .line 91
    const-class v2, Landroid/media/MiniThumbFile;

    monitor-enter v2

    :try_start_0
    sget-object v3, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .line 92
    .local v0, file:Landroid/media/MiniThumbFile;
    invoke-virtual {v0}, Landroid/media/MiniThumbFile;->deactivate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 91
    .end local v0           #file:Landroid/media/MiniThumbFile;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 94
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    sget-object v3, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    monitor-exit v2

    return-void
.end method

.method public static declared-synchronized reset(I)V
    .locals 5
    .parameter "where"

    .prologue
    .line 103
    const-class v2, Landroid/media/MiniThumbFile;

    monitor-enter v2

    and-int/lit8 v3, p0, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 104
    :try_start_0
    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    monitor-exit v2

    return-void

    .line 106
    :cond_1
    :try_start_1
    sget-object v3, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .line 107
    .local v0, file:Landroid/media/MiniThumbFile;
    invoke-virtual {v0, p0}, Landroid/media/MiniThumbFile;->deactivate(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    .end local v0           #file:Landroid/media/MiniThumbFile;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method


# virtual methods
.method public declared-synchronized clearMiniThumbFromFile(J)V
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MiniThumbFile;->clearMiniThumbFromFile(JLandroid/content/ContentResolver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    monitor-exit p0

    return-void

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearMiniThumbFromFile(JLandroid/content/ContentResolver;)V
    .locals 10
    .parameter "id"
    .parameter "cr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x2710

    const-string v0, "couldn\'t clear mini thumbnail data for "

    const-string v0, "MiniThumbFile"

    .line 457
    monitor-enter p0

    if-eqz p3, :cond_1

    .line 458
    :try_start_0
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 463
    .local v9, uri:Landroid/net/Uri;
    :goto_0
    invoke-direct {p0, v9, p3}, Landroid/media/MiniThumbFile;->miniThumbDataFile(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 464
    .local v8, r:Ljava/io/RandomAccessFile;
    if-nez v8, :cond_2

    .line 501
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 460
    .end local v8           #r:Ljava/io/RandomAccessFile;
    .end local v9           #uri:Landroid/net/Uri;
    :cond_1
    :try_start_1
    iget-object v9, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    .restart local v9       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 466
    .restart local v8       #r:Ljava/io/RandomAccessFile;
    :cond_2
    iget v0, p0, Landroid/media/MiniThumbFile;->mMicroThumbId:I

    if-lez v0, :cond_3

    .line 467
    iget v0, p0, Landroid/media/MiniThumbFile;->mMicroThumbId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    int-to-long p1, v0

    .line 470
    :cond_3
    mul-long v1, p1, v3

    .line 471
    .local v1, pos:J
    const/4 v7, 0x0

    .line 473
    .local v7, lock:Ljava/nio/channels/FileLock;
    :try_start_2
    const-string v0, "MiniThumbFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clear micro thumbnail - image Id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 476
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 477
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 478
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 479
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 480
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 482
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v3, 0x2710

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v7

    .line 483
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3, v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    .line 484
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 495
    if-eqz v7, :cond_0

    :try_start_3
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 497
    :catch_0
    move-exception v0

    goto :goto_1

    .line 485
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 486
    .local v6, ex:Ljava/io/IOException;
    :try_start_4
    const-string v0, "MiniThumbFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t clear mini thumbnail data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 494
    .end local v6           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 495
    if-eqz v7, :cond_4

    :try_start_5
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 499
    :cond_4
    :goto_2
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 457
    .end local v1           #pos:J
    .end local v7           #lock:Ljava/nio/channels/FileLock;
    .end local v8           #r:Ljava/io/RandomAccessFile;
    .end local v9           #uri:Landroid/net/Uri;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 489
    .restart local v1       #pos:J
    .restart local v7       #lock:Ljava/nio/channels/FileLock;
    .restart local v8       #r:Ljava/io/RandomAccessFile;
    .restart local v9       #uri:Landroid/net/Uri;
    :catch_2
    move-exception v0

    move-object v6, v0

    .line 491
    .local v6, ex:Ljava/lang/RuntimeException;
    :try_start_7
    const-string v0, "MiniThumbFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t clear mini thumbnail data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; disk full or mount read-only? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 495
    if-eqz v7, :cond_0

    :try_start_8
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_1

    .line 497
    :catch_3
    move-exception v0

    goto/16 :goto_1

    .end local v6           #ex:Ljava/lang/RuntimeException;
    :catch_4
    move-exception v3

    goto :goto_2
.end method

.method public declared-synchronized deactivate()V
    .locals 4

    .prologue
    .line 253
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 254
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    aget-object v1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 256
    :try_start_1
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 257
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 258
    const-string v1, "MiniThumbFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiniThumb file for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_1

    const-string v3, "<Internal SD card>"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is closed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_1
    const-string v3, "<External SD card>"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 266
    :cond_2
    monitor-exit p0

    return-void

    .line 253
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 259
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public declared-synchronized deactivate(I)V
    .locals 3
    .parameter "where"

    .prologue
    const/4 v2, 0x1

    const-string v0, "MiniThumbFile"

    .line 273
    monitor-enter p0

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 274
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MiniThumbFile;->deactivate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 275
    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v2, :cond_2

    .line 276
    :try_start_1
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 278
    :try_start_2
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 279
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 280
    const-string v0, "MiniThumbFile"

    const-string v1, "MiniThumb file for <Internal SD card> is closed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    goto :goto_0

    .line 285
    :cond_2
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 286
    :try_start_3
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    const/4 v1, 0x1

    aget-object v0, v0, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_0

    .line 288
    :try_start_4
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 289
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:[Ljava/io/RandomAccessFile;

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 290
    const-string v0, "MiniThumbFile"

    const-string v1, "MiniThumb file for <External SD card> is closed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 291
    :catch_1
    move-exception v0

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMagic(J)J
    .locals 2
    .parameter "id"

    .prologue
    .line 322
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MiniThumbFile;->getMagic(JLandroid/content/ContentResolver;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMagic(JLandroid/content/ContentResolver;)J
    .locals 12
    .parameter "id"
    .parameter "cr"

    .prologue
    const/16 v11, 0x9

    const/4 v10, 0x1

    const-string v0, "MiniThumbFile"

    .line 332
    monitor-enter p0

    if-eqz p3, :cond_2

    .line 333
    :try_start_0
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 338
    .local v9, uri:Landroid/net/Uri;
    :goto_0
    invoke-direct {p0, v9, p3}, Landroid/media/MiniThumbFile;->miniThumbDataFile(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/RandomAccessFile;

    move-result-object v8

    .line 339
    .local v8, r:Ljava/io/RandomAccessFile;
    if-eqz v8, :cond_4

    .line 341
    iget v0, p0, Landroid/media/MiniThumbFile;->mMicroThumbId:I

    if-lez v0, :cond_0

    .line 342
    iget v0, p0, Landroid/media/MiniThumbFile;->mMicroThumbId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    int-to-long p1, v0

    .line 348
    :cond_0
    const-wide/16 v3, 0x2710

    mul-long v1, p1, v3

    .line 349
    .local v1, pos:J
    const/4 v7, 0x0

    .line 351
    .local v7, lock:Ljava/nio/channels/FileLock;
    :try_start_1
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 352
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 354
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v3, 0x9

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v7

    .line 357
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3, v1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v0

    if-ne v0, v11, :cond_3

    .line 358
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 359
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ne v0, v10, :cond_3

    .line 360
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v3

    .line 371
    if-eqz v7, :cond_1

    :try_start_2
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 378
    .end local v1           #pos:J
    .end local v7           #lock:Ljava/nio/channels/FileLock;
    :cond_1
    :goto_1
    monitor-exit p0

    return-wide v3

    .line 335
    .end local v8           #r:Ljava/io/RandomAccessFile;
    .end local v9           #uri:Landroid/net/Uri;
    :cond_2
    :try_start_3
    iget-object v9, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v9       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 371
    .restart local v1       #pos:J
    .restart local v7       #lock:Ljava/nio/channels/FileLock;
    .restart local v8       #r:Ljava/io/RandomAccessFile;
    :cond_3
    if-eqz v7, :cond_4

    :try_start_4
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 378
    .end local v1           #pos:J
    .end local v7           #lock:Ljava/nio/channels/FileLock;
    :cond_4
    :goto_2
    const-wide/16 v3, 0x0

    goto :goto_1

    .line 363
    .restart local v1       #pos:J
    .restart local v7       #lock:Ljava/nio/channels/FileLock;
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 364
    .local v6, ex:Ljava/io/IOException;
    :try_start_5
    const-string v0, "MiniThumbFile"

    const-string v3, "Got exception checking file magic: "

    invoke-static {v0, v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 371
    if-eqz v7, :cond_4

    :try_start_6
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 373
    :catch_1
    move-exception v0

    goto :goto_2

    .line 365
    .end local v6           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v0

    move-object v6, v0

    .line 367
    .local v6, ex:Ljava/lang/RuntimeException;
    :try_start_7
    const-string v0, "MiniThumbFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got exception when reading magic, id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", disk full or mount read-only? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 371
    if-eqz v7, :cond_4

    :try_start_8
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 373
    :catch_3
    move-exception v0

    goto :goto_2

    .line 370
    .end local v6           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    .line 371
    if-eqz v7, :cond_5

    :try_start_9
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 375
    :cond_5
    :goto_3
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 332
    .end local v1           #pos:J
    .end local v7           #lock:Ljava/nio/channels/FileLock;
    .end local v8           #r:Ljava/io/RandomAccessFile;
    .end local v9           #uri:Landroid/net/Uri;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 373
    .restart local v1       #pos:J
    .restart local v7       #lock:Ljava/nio/channels/FileLock;
    .restart local v8       #r:Ljava/io/RandomAccessFile;
    .restart local v9       #uri:Landroid/net/Uri;
    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v3

    goto :goto_3
.end method

.method public declared-synchronized getMiniThumbFromFile(J[B)[B
    .locals 1
    .parameter "id"
    .parameter "data"

    .prologue
    .line 521
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[BLandroid/content/ContentResolver;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMiniThumbFromFile(J[BLandroid/content/ContentResolver;)[B
    .locals 19
    .parameter "id"
    .parameter "data"
    .parameter "cr"

    .prologue
    .line 526
    monitor-enter p0

    if-eqz p4, :cond_0

    .line 527
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    move-object v4, v0

    move-object v0, v4

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 532
    .local v18, uri:Landroid/net/Uri;
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/media/MiniThumbFile;->miniThumbDataFile(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v16

    .line 533
    .local v16, r:Ljava/io/RandomAccessFile;
    if-nez v16, :cond_1

    const/4 v4, 0x0

    .line 571
    :goto_1
    monitor-exit p0

    return-object v4

    .line 529
    .end local v16           #r:Ljava/io/RandomAccessFile;
    .end local v18           #uri:Landroid/net/Uri;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    .restart local v18       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 534
    .restart local v16       #r:Ljava/io/RandomAccessFile;
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MiniThumbFile;->mMicroThumbId:I

    move v4, v0

    if-lez v4, :cond_2

    .line 535
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MiniThumbFile;->mMicroThumbId:I

    move v4, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v4

    int-to-long v0, v0

    move-wide/from16 p1, v0

    .line 540
    :cond_2
    const-wide/16 v7, 0x2710

    mul-long v5, p1, v7

    .line 541
    .local v5, pos:J
    const/4 v13, 0x0

    .line 543
    .local v13, lock:Ljava/nio/channels/FileLock;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    move-object v4, v0

    const-wide/16 v7, 0x2710

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v13

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-object v7, v0

    invoke-virtual {v4, v7, v5, v6}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v17

    .line 546
    .local v17, size:I
    const/16 v4, 0xd

    move/from16 v0, v17

    move v1, v4

    if-le v0, v1, :cond_4

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 548
    .end local v5           #pos:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    .line 549
    .local v11, flag:B
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v14

    .line 550
    .local v14, magic:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    .line 552
    .local v12, length:I
    add-int/lit8 v4, v12, 0xd

    move/from16 v0, v17

    move v1, v4

    if-lt v0, v1, :cond_4

    move-object/from16 v0, p3

    array-length v0, v0

    move v4, v0

    if-lt v4, v12, :cond_4

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, p3

    move v2, v5

    move v3, v12

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 565
    if-eqz v13, :cond_3

    :try_start_3
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_3
    :goto_2
    move-object/from16 v4, p3

    .line 569
    goto/16 :goto_1

    .line 565
    .end local v11           #flag:B
    .end local v12           #length:I
    .end local v14           #magic:J
    :cond_4
    if-eqz v13, :cond_5

    :try_start_4
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 571
    .end local v17           #size:I
    :cond_5
    :goto_3
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 557
    :catch_0
    move-exception v4

    move-object v10, v4

    .line 558
    .local v10, ex:Ljava/io/IOException;
    :try_start_5
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got exception when reading thumbnail id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 565
    if-eqz v13, :cond_5

    :try_start_6
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 567
    :catch_1
    move-exception v4

    goto :goto_3

    .line 559
    .end local v10           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v4

    move-object v10, v4

    .line 561
    .local v10, ex:Ljava/lang/RuntimeException;
    :try_start_7
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got exception when reading thumbnail, id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", disk full or mount read-only? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 565
    if-eqz v13, :cond_5

    :try_start_8
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    .line 567
    :catch_3
    move-exception v4

    goto :goto_3

    .line 564
    .end local v10           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    .line 565
    if-eqz v13, :cond_6

    :try_start_9
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 569
    :cond_6
    :goto_4
    :try_start_a
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 526
    .end local v13           #lock:Ljava/nio/channels/FileLock;
    .end local v16           #r:Ljava/io/RandomAccessFile;
    .end local v18           #uri:Landroid/net/Uri;
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 567
    .restart local v11       #flag:B
    .restart local v12       #length:I
    .restart local v13       #lock:Ljava/nio/channels/FileLock;
    .restart local v14       #magic:J
    .restart local v16       #r:Ljava/io/RandomAccessFile;
    .restart local v17       #size:I
    .restart local v18       #uri:Landroid/net/Uri;
    :catch_4
    move-exception v4

    goto :goto_2

    .end local v11           #flag:B
    .end local v12           #length:I
    .end local v14           #magic:J
    :catch_5
    move-exception v4

    goto :goto_3

    .end local v17           #size:I
    :catch_6
    move-exception v5

    goto :goto_4
.end method

.method public isExternalSD(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    .locals 12
    .parameter "uri"
    .parameter "cr"

    .prologue
    .line 581
    const/4 v0, 0x0

    sput-boolean v0, Landroid/media/MiniThumbFile;->mIsFromExternalSD:Z

    .line 582
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MiniThumbFile;->mMicroThumbId:I

    .line 583
    iput-object p2, p0, Landroid/media/MiniThumbFile;->mCr:Landroid/content/ContentResolver;

    .line 584
    if-eqz p1, :cond_5

    .line 585
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 586
    .local v11, volume:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 587
    .local v10, type:Ljava/lang/String;
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 588
    .local v8, origId:J
    long-to-int v0, v8

    iput v0, p0, Landroid/media/MiniThumbFile;->mMicroThumbId:I

    .line 589
    const-string v0, "external"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "images"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_3

    .line 590
    const/4 v6, 0x0

    .line 592
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "micro_thumb_id"

    aput-object v3, v2, v0

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 594
    if-nez v6, :cond_1

    .line 595
    const/4 v0, 0x1

    sput-boolean v0, Landroid/media/MiniThumbFile;->mIsFromExternalSD:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    const/4 v0, 0x1

    .line 611
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 616
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #origId:J
    .end local v10           #type:Ljava/lang/String;
    .end local v11           #volume:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 599
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v8       #origId:J
    .restart local v10       #type:Ljava/lang/String;
    .restart local v11       #volume:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 600
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 602
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Landroid/media/MiniThumbFile;->mMicroThumbId:I

    .line 603
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/media/MiniThumbFile;->EXTERNAL_SD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 604
    const/4 v0, 0x1

    sput-boolean v0, Landroid/media/MiniThumbFile;->mIsFromExternalSD:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 605
    const/4 v0, 0x1

    .line 611
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 614
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 608
    .restart local v6       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 609
    .local v7, e:Landroid/database/SQLException;
    :try_start_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 611
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 616
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #origId:J
    .end local v10           #type:Ljava/lang/String;
    .end local v11           #volume:Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized saveMiniThumbToFile([BJJ)V
    .locals 7
    .parameter "data"
    .parameter "id"
    .parameter "magic"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    monitor-enter p0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Landroid/media/MiniThumbFile;->saveMiniThumbToFile([BJJLandroid/content/ContentResolver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    monitor-exit p0

    return-void

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveMiniThumbToFile([BJJLandroid/content/ContentResolver;)V
    .locals 13
    .parameter "data"
    .parameter "id"
    .parameter "magic"
    .parameter "cr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    monitor-enter p0

    if-eqz p6, :cond_1

    .line 398
    :try_start_0
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    move-object v0, v3

    move-wide v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 402
    .local v12, uri:Landroid/net/Uri;
    :goto_0
    move-object v0, p0

    move-object v1, v12

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Landroid/media/MiniThumbFile;->miniThumbDataFile(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 403
    .local v11, r:Ljava/io/RandomAccessFile;
    if-nez v11, :cond_2

    .line 445
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 400
    .end local v11           #r:Ljava/io/RandomAccessFile;
    .end local v12           #uri:Landroid/net/Uri;
    :cond_1
    :try_start_1
    iget-object v12, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    .restart local v12       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 405
    .restart local v11       #r:Ljava/io/RandomAccessFile;
    :cond_2
    iget v3, p0, Landroid/media/MiniThumbFile;->mMicroThumbId:I

    if-lez v3, :cond_3

    .line 406
    iget v3, p0, Landroid/media/MiniThumbFile;->mMicroThumbId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    int-to-long p2, v3

    .line 411
    :cond_3
    const-wide/16 v6, 0x2710

    mul-long v4, p2, v6

    .line 412
    .local v4, pos:J
    const/4 v10, 0x0

    .line 414
    .local v10, lock:Ljava/nio/channels/FileLock;
    if-eqz p1, :cond_5

    .line 415
    :try_start_2
    array-length v3, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    const/16 v6, 0x2703

    if-le v3, v6, :cond_4

    .line 439
    if-eqz v10, :cond_0

    :try_start_3
    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 441
    :catch_0
    move-exception v3

    goto :goto_1

    .line 419
    :cond_4
    :try_start_4
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 420
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 421
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-object v0, v3

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 422
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    array-length v6, p1

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 423
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 424
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 426
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v6, 0x2710

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v10

    .line 427
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v6, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v6, v4, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    .line 439
    :cond_5
    if-eqz v10, :cond_0

    :try_start_5
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 441
    :catch_1
    move-exception v3

    goto :goto_1

    .line 429
    :catch_2
    move-exception v3

    move-object v9, v3

    .line 430
    .local v9, ex:Ljava/io/IOException;
    :try_start_6
    const-string v3, "MiniThumbFile"

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #pos:J
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 438
    .end local v9           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 439
    if-eqz v10, :cond_6

    :try_start_7
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 443
    :cond_6
    :goto_2
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 397
    .end local v10           #lock:Ljava/nio/channels/FileLock;
    .end local v11           #r:Ljava/io/RandomAccessFile;
    .end local v12           #uri:Landroid/net/Uri;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 433
    .restart local v4       #pos:J
    .restart local v10       #lock:Ljava/nio/channels/FileLock;
    .restart local v11       #r:Ljava/io/RandomAccessFile;
    .restart local v12       #uri:Landroid/net/Uri;
    :catch_3
    move-exception v3

    move-object v9, v3

    .line 435
    .local v9, ex:Ljava/lang/RuntimeException;
    :try_start_9
    const-string v3, "MiniThumbFile"

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #pos:J
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; disk full or mount read-only? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 439
    if-eqz v10, :cond_0

    :try_start_a
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_1

    .line 441
    :catch_4
    move-exception v3

    goto/16 :goto_1

    .end local v9           #ex:Ljava/lang/RuntimeException;
    :catch_5
    move-exception v4

    goto :goto_2
.end method
