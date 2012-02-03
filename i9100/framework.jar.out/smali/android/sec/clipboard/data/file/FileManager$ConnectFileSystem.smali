.class Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;
.super Ljava/lang/Object;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/data/file/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectFileSystem"
.end annotation


# instance fields
.field dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation
.end field

.field private fileHelper:Landroid/sec/clipboard/util/FileHelper;

.field private gcLifeCount:I

.field private infoFile:Ljava/io/File;

.field private infoTempFile:Ljava/io/File;

.field private rootPath:Ljava/io/File;

.field final synthetic this$0:Landroid/sec/clipboard/data/file/FileManager;


# direct methods
.method public constructor <init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V
    .locals 3
    .parameter
    .parameter "infoFile"

    .prologue
    .line 182
    iput-object p1, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->this$0:Landroid/sec/clipboard/data/file/FileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/16 v0, 0xd

    iput v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->gcLifeCount:I

    .line 183
    iput-object p2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoFile:Ljava/io/File;

    .line 184
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoTempFile:Ljava/io/File;

    .line 186
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->rootPath:Ljava/io/File;

    .line 187
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    .line 188
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/util/FileHelper;->checkDir(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/util/FileHelper;->makeDir(Ljava/io/File;)V

    .line 197
    :cond_0
    return-void
.end method

.method private deleteEquals(Ljava/util/ArrayList;[Ljava/io/File;)[Ljava/io/File;
    .locals 8
    .parameter
    .parameter "_result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;[",
            "Ljava/io/File;",
            ")[",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, base:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    invoke-virtual {p2}, [Ljava/io/File;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/io/File;

    .line 236
    .local v3, result:[Ljava/io/File;
    array-length v4, v3

    .line 237
    .local v4, size:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 238
    .local v5, wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v5}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 239
    .local v0, base_path:Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 240
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoFile:Ljava/io/File;

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v6

    if-nez v6, :cond_2

    .line 241
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    invoke-virtual {v6}, Landroid/sec/clipboard/util/FileHelper;->getNullFile()Ljava/io/File;

    move-result-object v6

    aput-object v6, v3, v1

    .line 239
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    :cond_2
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoTempFile:Ljava/io/File;

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v6

    if-nez v6, :cond_3

    .line 243
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    invoke-virtual {v6}, Landroid/sec/clipboard/util/FileHelper;->getNullFile()Ljava/io/File;

    move-result-object v6

    aput-object v6, v3, v1

    goto :goto_1

    .line 244
    :cond_3
    if-eqz v0, :cond_1

    .line 245
    aget-object v6, v3, v1

    invoke-virtual {v0, v6}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v6

    if-nez v6, :cond_1

    .line 247
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    invoke-virtual {v6}, Landroid/sec/clipboard/util/FileHelper;->getNullFile()Ljava/io/File;

    move-result-object v6

    aput-object v6, v3, v1

    goto :goto_1

    .line 252
    .end local v0           #base_path:Ljava/io/File;
    .end local v1           #i:I
    .end local v5           #wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_4
    return-object v3
.end method

.method private loadDataList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createDataList()Ljava/util/ArrayList;

    move-result-object v3

    .line 288
    .local v3, temp_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 289
    .local v1, size:I
    const/4 v2, 0x0

    .line 290
    .local v2, success:Z
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 292
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->load()Z

    move-result v2

    .line 293
    if-eqz v2, :cond_0

    .line 295
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_1
    return-object v3
.end method

.method private makeDataValue(Ljava/io/File;Landroid/sec/clipboard/data/file/WrapFileClipData;)Z
    .locals 11
    .parameter "dir"
    .parameter "wfClip"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 348
    invoke-virtual {p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v6

    .line 350
    .local v6, temp_clip:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 351
    move-object v0, v6

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    move-object v1, v0

    .line 352
    .local v1, bitmapClip:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v1}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v4

    .line 355
    .local v4, path:Ljava/lang/String;
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 356
    .local v5, separatorIndex:I
    if-gez v5, :cond_0

    move-object v3, v4

    .line 357
    .local v3, fileName:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 361
    .local v2, createFile:Ljava/io/File;
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v2}, Landroid/sec/clipboard/util/FileHelper;->fileCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 362
    const-string/jumbo v7, "sjan"

    const-string/jumbo v8, "ok path change.."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmapPath(Ljava/lang/String;)Z

    .line 364
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1fd

    invoke-static {v7, v8, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move v7, v9

    .line 373
    .end local v1           #bitmapClip:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    .end local v2           #createFile:Ljava/io/File;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #separatorIndex:I
    :goto_1
    return v7

    .line 356
    .restart local v1       #bitmapClip:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    .restart local v4       #path:Ljava/lang/String;
    .restart local v5       #separatorIndex:I
    :cond_0
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    goto :goto_0

    .line 367
    .end local v1           #bitmapClip:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #separatorIndex:I
    :cond_1
    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    move v7, v9

    .line 368
    goto :goto_1

    :cond_2
    move v7, v9

    .line 370
    goto :goto_1

    .line 373
    .restart local v1       #bitmapClip:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    .restart local v2       #createFile:Ljava/io/File;
    .restart local v3       #fileName:Ljava/lang/String;
    .restart local v4       #path:Ljava/lang/String;
    .restart local v5       #separatorIndex:I
    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private saveInfoFile()Z
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/util/FileHelper;->saveObjectFile(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private saveTempInfoFile()Z
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoTempFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/util/FileHelper;->saveObjectFile(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public allDelete()V
    .locals 0

    .prologue
    .line 305
    return-void
.end method

.method public createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;
    .locals 1
    .parameter "element"

    .prologue
    .line 201
    new-instance v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-direct {v0, p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;-><init>(Landroid/sec/clipboard/data/ClipboardData;)V

    return-object v0
.end method

.method public createDataList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public dump()V
    .locals 6

    .prologue
    const-string v5, "==========================================================="

    const-string/jumbo v4, "sjan"

    .line 381
    const-string/jumbo v2, "sjan"

    const-string v2, "==========================================================="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 383
    .local v1, wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    const-string/jumbo v2, "sjan"

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-string/jumbo v2, "sjan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 386
    .end local v1           #wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_0
    const-string/jumbo v2, "sjan"

    const-string v2, "==========================================================="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void
.end method

.method public gc()V
    .locals 6

    .prologue
    const-string/jumbo v5, "sjan"

    .line 392
    const-string/jumbo v3, "sjan"

    const-string/jumbo v3, "run gc()1"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->rootPath:Ljava/io/File;

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/util/FileHelper;->getList(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 396
    .local v1, list:[Ljava/io/File;
    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->dataList:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 410
    :cond_0
    return-void

    .line 400
    :cond_1
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->dataList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->deleteEquals(Ljava/util/ArrayList;[Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 402
    array-length v2, v1

    .line 404
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 405
    aget-object v3, v1, v0

    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    invoke-virtual {v4}, Landroid/sec/clipboard/util/FileHelper;->getNullFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 406
    const-string/jumbo v3, "sjan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    .line 404
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public load()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation

    .prologue
    const-string/jumbo v3, "sjan"

    .line 258
    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createDataList()Ljava/util/ArrayList;

    move-result-object v0

    .line 260
    .local v0, temp_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    const-string/jumbo v1, "sjan"

    const-string v1, "load ...info file"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Landroid/sec/clipboard/util/FileHelper;->loadObjectFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #temp_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 264
    .restart local v0       #temp_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    :cond_0
    if-nez v0, :cond_1

    .line 265
    const-string/jumbo v1, "sjan"

    const-string v1, "failed load ...info file"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoTempFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    const-string/jumbo v1, "sjan"

    const-string v1, "load ...info temp file"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoTempFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Landroid/sec/clipboard/util/FileHelper;->loadObjectFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #temp_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 273
    .restart local v0       #temp_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    :cond_1
    if-nez v0, :cond_2

    .line 274
    const-string/jumbo v1, "sjan"

    const-string v1, "load memory"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createDataList()Ljava/util/ArrayList;

    move-result-object v0

    .line 278
    :cond_2
    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->loadDataList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->dataList:Ljava/util/ArrayList;

    .line 279
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->dataList:Ljava/util/ArrayList;

    return-object v1
.end method

.method public save(Landroid/sec/clipboard/data/file/WrapFileClipData;)Z
    .locals 9
    .parameter "wfClip"

    .prologue
    const/4 v7, 0x0

    const-string/jumbo v8, "sjan"

    .line 309
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v2

    .line 311
    .local v2, fh:Landroid/sec/clipboard/util/FileHelper;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 312
    .local v3, sb:Ljava/lang/StringBuffer;
    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->rootPath:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 313
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    invoke-static {}, Landroid/sec/clipboard/util/StringHelper;->getUniqueString()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 318
    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v2, v1}, Landroid/sec/clipboard/util/FileHelper;->checkDir(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 320
    invoke-virtual {v2, v1}, Landroid/sec/clipboard/util/FileHelper;->makeDir(Ljava/io/File;)V

    .line 324
    :cond_0
    invoke-direct {p0, v1, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->makeDataValue(Ljava/io/File;Landroid/sec/clipboard/data/file/WrapFileClipData;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 326
    const-string v4, "/clip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, cfile:Ljava/io/File;
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/sec/clipboard/util/FileHelper;->saveObjectFile(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 329
    const-string/jumbo v4, "sjan"

    const-string/jumbo v4, "ok Wrap saveData"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {p1, v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setFile(Ljava/io/File;)V

    .line 331
    const/4 v4, 0x1

    .line 342
    .end local v0           #cfile:Ljava/io/File;
    :goto_0
    return v4

    .line 336
    .restart local v0       #cfile:Ljava/io/File;
    :cond_1
    const-string/jumbo v4, "sjan"

    const-string v4, "Don\'t Save File, Delete Directory"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {v2, v1}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    move v4, v7

    .line 338
    goto :goto_0

    .end local v0           #cfile:Ljava/io/File;
    :cond_2
    move v4, v7

    .line 342
    goto :goto_0
.end method

.method public update()V
    .locals 3

    .prologue
    .line 212
    invoke-direct {p0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->saveInfoFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->gcLifeCount:I

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->rootPath:Ljava/io/File;

    invoke-virtual {v1, v2}, Landroid/sec/clipboard/util/FileHelper;->getList(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 214
    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->gc()V

    .line 216
    :cond_0
    invoke-direct {p0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->saveTempInfoFile()Z

    .line 218
    :cond_1
    return-void
.end method
