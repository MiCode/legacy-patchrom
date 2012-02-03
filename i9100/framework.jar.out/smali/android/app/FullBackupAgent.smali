.class public Landroid/app/FullBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "FullBackupAgent.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "FullBackupAgent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 12
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"

    .prologue
    const-string v11, "FullBackupAgent"

    .line 46
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 47
    .local v4, dirsToScan:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/io/File;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v0, allFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/app/FullBackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v9, "FullBackupAgent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Backing up dir tree @ "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Landroid/app/FullBackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 53
    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 54
    .local v3, dir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 55
    .local v2, contents:[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 56
    move-object v1, v2

    .local v1, arr$:[Ljava/io/File;
    array-length v8, v1

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v5, v1, v7

    .line 57
    .local v5, f:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 58
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 60
    const-string v9, "FullBackupAgent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    .end local v1           #arr$:[Ljava/io/File;
    .end local v2           #contents:[Ljava/io/File;
    .end local v3           #dir:Ljava/io/File;
    .end local v5           #f:Ljava/io/File;
    .end local v7           #i$:I
    .end local v8           #len$:I
    :cond_3
    new-instance v6, Landroid/app/backup/FileBackupHelper;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-direct {v6, p0, v9}, Landroid/app/backup/FileBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 70
    .local v6, helper:Landroid/app/backup/FileBackupHelper;
    invoke-virtual {v6, p1, p2, p3}, Landroid/app/backup/FileBackupHelper;->performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    .line 71
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 0
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "newState"

    .prologue
    .line 75
    return-void
.end method
