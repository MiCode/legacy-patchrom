.class final Landroid/app/ContextImpl$SharedPreferencesImpl;
.super Ljava/lang/Object;
.source "ContextImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SharedPreferencesImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;,
        Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;
    }
.end annotation


# static fields
.field private static final mContent:Ljava/lang/Object;


# instance fields
.field private final mBackupFile:Ljava/io/File;

.field private mDiskWritesInFlight:I

.field private final mFile:Ljava/io/File;

.field private final mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaded:Z

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mMode:I

.field private mStatSize:J

.field private mStatTimestamp:J

.field private final mWritingToDiskLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mContent:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/io/File;ILjava/util/Map;)V
    .locals 3
    .parameter "file"
    .parameter "mode"
    .parameter "initialContents"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mDiskWritesInFlight:I

    iput-boolean v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mLoaded:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mWritingToDiskLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    #calls: Landroid/app/ContextImpl;->makeBackupFile(Ljava/io/File;)Ljava/io/File;
    invoke-static {p1}, Landroid/app/ContextImpl;->access$000(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    iput p2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMode:I

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mLoaded:Z

    if-eqz p3, :cond_2

    move-object v1, p3

    :goto_1
    iput-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    new-instance v0, Landroid/os/FileUtils$FileStatus;

    invoke-direct {v0}, Landroid/os/FileUtils$FileStatus;-><init>()V

    .local v0, stat:Landroid/os/FileUtils$FileStatus;
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Landroid/os/FileUtils$FileStatus;->mtime:J

    iput-wide v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mStatTimestamp:J

    :cond_0
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    return-void

    .end local v0           #stat:Landroid/os/FileUtils$FileStatus;
    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_1
.end method

.method static synthetic access$100(Landroid/app/ContextImpl$SharedPreferencesImpl;Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/ContextImpl$SharedPreferencesImpl;->enqueueDiskWrite(Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$300(Landroid/app/ContextImpl$SharedPreferencesImpl;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mDiskWritesInFlight:I

    return v0
.end method

.method static synthetic access$308(Landroid/app/ContextImpl$SharedPreferencesImpl;)I
    .locals 2
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mDiskWritesInFlight:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mDiskWritesInFlight:I

    return v0
.end method

.method static synthetic access$310(Landroid/app/ContextImpl$SharedPreferencesImpl;)I
    .locals 2
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mDiskWritesInFlight:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mDiskWritesInFlight:I

    return v0
.end method

.method static synthetic access$400(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$402(Landroid/app/ContextImpl$SharedPreferencesImpl;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$500(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/WeakHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$700(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mWritingToDiskLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Landroid/app/ContextImpl$SharedPreferencesImpl;Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ContextImpl$SharedPreferencesImpl;->writeToFile(Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V

    return-void
.end method

.method private static createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 9
    .parameter "file"

    .prologue
    const/4 v7, -0x1

    const-string v8, "ApplicationContext"

    const/4 v3, 0x0

    .local v3, str:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #str:Ljava/io/FileOutputStream;
    .local v4, str:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #str:Ljava/io/FileOutputStream;
    .restart local v3       #str:Ljava/io/FileOutputStream;
    :goto_0
    move-object v5, v3

    :goto_1
    return-object v5

    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .local v2, parent:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "ApplicationContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t create directory for SharedPreferences file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f9

    invoke-static {v5, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v3           #str:Ljava/io/FileOutputStream;
    .restart local v4       #str:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #str:Ljava/io/FileOutputStream;
    .restart local v3       #str:Ljava/io/FileOutputStream;
    goto :goto_0

    :catch_1
    move-exception v5

    move-object v1, v5

    .local v1, e2:Ljava/io/FileNotFoundException;
    const-string v5, "ApplicationContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t create SharedPreferences file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private enqueueDiskWrite(Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    .locals 6
    .parameter "mcr"
    .parameter "postWriteRunnable"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v2, Landroid/app/ContextImpl$SharedPreferencesImpl$1;

    invoke-direct {v2, p0, p1, p2}, Landroid/app/ContextImpl$SharedPreferencesImpl$1;-><init>(Landroid/app/ContextImpl$SharedPreferencesImpl;Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    .local v2, writeToDiskRunnable:Ljava/lang/Runnable;
    if-nez p2, :cond_0

    move v0, v4

    .local v0, isFromSyncCommit:Z
    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .local v1, wasEmpty:Z
    monitor-enter p0

    :try_start_0
    iget v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mDiskWritesInFlight:I

    if-ne v3, v4, :cond_1

    move v1, v4

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .end local v1           #wasEmpty:Z
    :goto_2
    return-void

    .end local v0           #isFromSyncCommit:Z
    :cond_0
    move v0, v5

    goto :goto_0

    .restart local v0       #isFromSyncCommit:Z
    .restart local v1       #wasEmpty:Z
    :cond_1
    move v1, v5

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .end local v1           #wasEmpty:Z
    :cond_2
    invoke-static {}, Landroid/app/QueuedWork;->singleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method private writeToFile(Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V
    .locals 9
    .parameter "mcr"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v8, "writeToFile: Got exception:"

    const-string v7, "ApplicationContext"

    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p1, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->changesMade:Z

    if-nez v3, :cond_0

    invoke-virtual {p1, v4}, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    iget-object v4, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "ApplicationContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t rename file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to backup file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v6}, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2
    :try_start_0
    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-static {v3}, Landroid/app/ContextImpl$SharedPreferencesImpl;->createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v2

    .local v2, str:Ljava/io/FileOutputStream;
    if-nez v2, :cond_4

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v2           #str:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "ApplicationContext"

    const-string v3, "writeToFile: Got exception:"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ApplicationContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t clean up partially-written file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1, v6}, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V

    goto/16 :goto_0

    .restart local v2       #str:Ljava/io/FileOutputStream;
    :cond_4
    :try_start_1
    iget-object v3, p1, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->mapToWriteToDisk:Ljava/util/Map;

    invoke-static {v3, v2}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V

    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMode:I

    const/4 v5, 0x0

    #calls: Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V
    invoke-static {v3, v4, v5}, Landroid/app/ContextImpl;->access$900(Ljava/lang/String;II)V

    new-instance v1, Landroid/os/FileUtils$FileStatus;

    invoke-direct {v1}, Landroid/os/FileUtils$FileStatus;-><init>()V

    .local v1, stat:Landroid/os/FileUtils$FileStatus;
    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/os/FileUtils;->getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z

    move-result v3

    if-eqz v3, :cond_5

    monitor-enter p0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-wide v3, v1, Landroid/os/FileUtils$FileStatus;->mtime:J

    iput-wide v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mStatTimestamp:J

    iget-wide v3, v1, Landroid/os/FileUtils$FileStatus;->size:J

    iput-wide v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mStatSize:J

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :try_start_3
    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .end local v1           #stat:Landroid/os/FileUtils$FileStatus;
    .end local v2           #str:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/io/IOException;
    const-string v3, "ApplicationContext"

    const-string v3, "writeToFile: Got exception:"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #stat:Landroid/os/FileUtils$FileStatus;
    .restart local v2       #str:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    new-instance v0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;

    invoke-direct {v0, p0}, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;-><init>(Landroid/app/ContextImpl$SharedPreferencesImpl;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .local v0, v:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    move v1, p2

    goto :goto_0

    .end local v0           #v:Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .local v0, v:Ljava/lang/Float;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    move v1, p2

    goto :goto_0

    .end local v0           #v:Ljava/lang/Float;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, v:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    move v1, p2

    goto :goto_0

    .end local v0           #v:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 3
    .parameter "key"
    .parameter "defValue"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .local v0, v:Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    monitor-exit p0

    return-wide v1

    :cond_0
    move-wide v1, p2

    goto :goto_0

    .end local v0           #v:Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, v:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0

    .end local v0           #v:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasFileChangedUnexpectedly()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    iget v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mDiskWritesInFlight:I

    if-lez v1, :cond_0

    monitor-exit p0

    move v1, v5

    :goto_0
    return v1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/os/FileUtils$FileStatus;

    invoke-direct {v0}, Landroid/os/FileUtils$FileStatus;-><init>()V

    .local v0, stat:Landroid/os/FileUtils$FileStatus;
    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v6

    goto :goto_0

    .end local v0           #stat:Landroid/os/FileUtils$FileStatus;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .restart local v0       #stat:Landroid/os/FileUtils$FileStatus;
    :cond_1
    monitor-enter p0

    :try_start_2
    iget-wide v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mStatTimestamp:J

    iget-wide v3, v0, Landroid/os/FileUtils$FileStatus;->mtime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    iget-wide v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mStatSize:J

    iget-wide v3, v0, Landroid/os/FileUtils$FileStatus;->size:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    :cond_2
    move v1, v6

    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_3
    move v1, v5

    goto :goto_1
.end method

.method isLoaded()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mLoaded:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    sget-object v1, Landroid/app/ContextImpl$SharedPreferencesImpl;->mContent:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method replace(Ljava/util/Map;Landroid/os/FileUtils$FileStatus;)V
    .locals 2
    .parameter "newContents"
    .parameter "stat"

    .prologue
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mLoaded:Z

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    :cond_0
    if-eqz p2, :cond_1

    iget-wide v0, p2, Landroid/os/FileUtils$FileStatus;->mtime:J

    iput-wide v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mStatTimestamp:J

    iget-wide v0, p2, Landroid/os/FileUtils$FileStatus;->size:J

    iput-wide v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mStatSize:J

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
