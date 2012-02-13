.class public Lcom/android/internal/util/JournaledFile;
.super Ljava/lang/Object;
.source "JournaledFile.java"


# instance fields
.field mReal:Ljava/io/File;

.field mTemp:Ljava/io/File;

.field mWriting:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .parameter "real"
    .parameter "temp"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/JournaledFile;->mReal:Ljava/io/File;

    iput-object p2, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public chooseForRead()Ljava/io/File;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/util/JournaledFile;->mReal:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/util/JournaledFile;->mReal:Ljava/io/File;

    .local v0, result:Ljava/io/File;
    iget-object v1, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    :goto_0
    move-object v1, v0

    .end local v0           #result:Ljava/io/File;
    :goto_1
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    .restart local v0       #result:Ljava/io/File;
    iget-object v1, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/util/JournaledFile;->mReal:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0

    .end local v0           #result:Ljava/io/File;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/util/JournaledFile;->mReal:Ljava/io/File;

    goto :goto_1
.end method

.method public chooseForWrite()Ljava/io/File;
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/util/JournaledFile;->mWriting:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "uncommitted write already in progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/JournaledFile;->mReal:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/JournaledFile;->mReal:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/JournaledFile;->mWriting:Z

    iget-object v0, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public commit()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/util/JournaledFile;->mWriting:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no file to commit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/JournaledFile;->mWriting:Z

    iget-object v0, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/util/JournaledFile;->mReal:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-void
.end method

.method public rollback()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/util/JournaledFile;->mWriting:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no file to roll back"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/JournaledFile;->mWriting:Z

    iget-object v0, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
