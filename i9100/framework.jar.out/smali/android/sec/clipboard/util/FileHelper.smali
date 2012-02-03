.class public Landroid/sec/clipboard/util/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# static fields
.field private static instance:Landroid/sec/clipboard/util/FileHelper;


# instance fields
.field private NullFile:Ljava/io/File;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Landroid/sec/clipboard/util/FileHelper;

    invoke-direct {v0}, Landroid/sec/clipboard/util/FileHelper;-><init>()V

    sput-object v0, Landroid/sec/clipboard/util/FileHelper;->instance:Landroid/sec/clipboard/util/FileHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string/jumbo v0, "sjan"

    iput-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->tag:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/io/File;

    const-string v1, "_TEMP_FILE"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    return-void
.end method

.method public static getInstance()Landroid/sec/clipboard/util/FileHelper;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Landroid/sec/clipboard/util/FileHelper;->instance:Landroid/sec/clipboard/util/FileHelper;

    return-object v0
.end method


# virtual methods
.method public checkDir(Ljava/io/File;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 219
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public checkFile(Ljava/io/File;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 241
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public delete(Ljava/io/File;)V
    .locals 6
    .parameter "file"

    .prologue
    .line 253
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 254
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 259
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 260
    .local v4, list:[Ljava/io/File;
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 261
    .local v1, f:Ljava/io/File;
    invoke-virtual {p0, v1}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 263
    .end local v1           #f:Ljava/io/File;
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public fileCopy(Ljava/io/File;Ljava/io/File;)Z
    .locals 13
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 72
    const/4 v6, 0x0

    .line 73
    .local v6, Result:Z
    const/4 v9, 0x0

    .line 74
    .local v9, inputStream:Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 77
    .local v11, outputStream:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 78
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1fd

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 79
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v9           #inputStream:Ljava/io/FileInputStream;
    .local v10, inputStream:Ljava/io/FileInputStream;
    move-object v9, v10

    .line 90
    .end local v10           #inputStream:Ljava/io/FileInputStream;
    .restart local v9       #inputStream:Ljava/io/FileInputStream;
    :goto_0
    :try_start_1
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v11           #outputStream:Ljava/io/FileOutputStream;
    .local v12, outputStream:Ljava/io/FileOutputStream;
    move-object v11, v12

    .line 97
    .end local v12           #outputStream:Ljava/io/FileOutputStream;
    .restart local v11       #outputStream:Ljava/io/FileOutputStream;
    :goto_1
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 98
    .local v0, fcin:Ljava/nio/channels/FileChannel;
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 100
    .local v5, fcout:Ljava/nio/channels/FileChannel;
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    .line 101
    .local v3, lSize:J
    const-wide/16 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 103
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 104
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 106
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 107
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 108
    const/4 v6, 0x1

    .end local v3           #lSize:J
    :goto_2
    move v7, v6

    .line 114
    .end local v0           #fcin:Ljava/nio/channels/FileChannel;
    .end local v5           #fcout:Ljava/nio/channels/FileChannel;
    .end local v6           #Result:Z
    .local v7, Result:I
    :goto_3
    return v7

    .line 81
    .end local v7           #Result:I
    .restart local v6       #Result:Z
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 82
    .local v8, e:Ljava/io/FileNotFoundException;
    const-string/jumbo v1, "sjan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InputStream~ FileNotFoundException Error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string/jumbo v1, "sjan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileCopy~ Source file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ Destination file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 84
    .restart local v7       #Result:I
    goto :goto_3

    .line 85
    .end local v7           #Result:I
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    move-object v8, v1

    .line 86
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v8           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    move-object v8, v1

    .line 92
    .local v8, e:Ljava/io/FileNotFoundException;
    const-string/jumbo v1, "sjan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutputStream~ FileNotFoundException Error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string/jumbo v1, "sjan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileCopy~ Source file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ Destination file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 109
    .end local v8           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #fcin:Ljava/nio/channels/FileChannel;
    .restart local v5       #fcout:Ljava/nio/channels/FileChannel;
    :catch_3
    move-exception v1

    move-object v8, v1

    .line 110
    .local v8, e:Ljava/io/IOException;
    const-string/jumbo v1, "sjan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileCopy~ IOException Error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string/jumbo v1, "sjan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileCopy~ Source file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ Destination file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v6, 0x0

    goto/16 :goto_2
.end method

.method public getAbsoluteNullFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getList(Ljava/io/File;)[Ljava/io/File;
    .locals 1
    .parameter "file"

    .prologue
    .line 246
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 248
    .local v0, list:[Ljava/io/File;
    return-object v0
.end method

.method public getNullFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    return-object v0
.end method

.method public getSDCardPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 203
    const-string v1, ""

    .line 204
    .local v1, path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, ext:Ljava/lang/String;
    const-string/jumbo v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 210
    :goto_0
    return-object v1

    .line 208
    :cond_0
    const-string/jumbo v1, "unmounted"

    goto :goto_0
.end method

.method public loadObjectFile(Ljava/io/File;)Ljava/lang/Object;
    .locals 10
    .parameter "file"

    .prologue
    const-string v6, "ClassNotFoundException"

    const-string v9, "close IOException"

    const-string/jumbo v8, "sjan"

    .line 165
    const/4 v5, 0x0

    .line 166
    .local v5, result:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 167
    .local v1, fis:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 169
    .local v3, ois:Ljava/io/ObjectInputStream;
    :try_start_0
    const-string/jumbo v6, "sjan"

    const-string v7, "load object file"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 171
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 172
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .local v4, ois:Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/io/StreamCorruptedException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    move-result-object v5

    .line 187
    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 188
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 194
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v5           #result:Ljava/lang/Object;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :cond_2
    :goto_0
    return-object v5

    .line 189
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #result:Ljava/lang/Object;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 190
    .local v0, e:Ljava/io/IOException;
    const-string/jumbo v6, "sjan"

    const-string v6, "close IOException"

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 193
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 173
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 174
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    const-string/jumbo v6, "sjan"

    const-string v7, "FileNotFoundException"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 187
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 188
    :cond_3
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 189
    :catch_2
    move-exception v6

    move-object v0, v6

    .line 190
    .local v0, e:Ljava/io/IOException;
    const-string/jumbo v6, "sjan"

    const-string v6, "close IOException"

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 176
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v6

    move-object v0, v6

    .line 177
    .local v0, e:Ljava/io/StreamCorruptedException;
    :goto_2
    :try_start_6
    const-string/jumbo v6, "sjan"

    const-string v7, "StreamCorruptedException"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 187
    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 188
    :cond_4
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 189
    :catch_4
    move-exception v6

    move-object v0, v6

    .line 190
    .local v0, e:Ljava/io/IOException;
    const-string/jumbo v6, "sjan"

    const-string v6, "close IOException"

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 179
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v6

    move-object v0, v6

    .line 180
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :goto_3
    :try_start_8
    const-string/jumbo v6, "sjan"

    const-string v7, "ClassNotFoundException"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 187
    if-eqz v3, :cond_5

    :try_start_9
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 188
    :cond_5
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_0

    .line 189
    :catch_6
    move-exception v6

    move-object v0, v6

    .line 190
    .local v0, e:Ljava/io/IOException;
    const-string/jumbo v6, "sjan"

    const-string v6, "close IOException"

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 182
    .end local v0           #e:Ljava/io/IOException;
    :catch_7
    move-exception v6

    move-object v0, v6

    .line 183
    .restart local v0       #e:Ljava/io/IOException;
    :goto_4
    :try_start_a
    const-string/jumbo v6, "sjan"

    const-string v7, "ClassNotFoundException"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 187
    if-eqz v3, :cond_6

    :try_start_b
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 188
    :cond_6
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto/16 :goto_0

    .line 189
    :catch_8
    move-exception v6

    move-object v0, v6

    .line 190
    const-string/jumbo v6, "sjan"

    const-string v6, "close IOException"

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 186
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 187
    :goto_5
    if-eqz v3, :cond_7

    :try_start_c
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 188
    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 192
    :cond_8
    :goto_6
    throw v6

    .line 189
    :catch_9
    move-exception v7

    move-object v0, v7

    .line 190
    .restart local v0       #e:Ljava/io/IOException;
    const-string/jumbo v7, "sjan"

    const-string v7, "close IOException"

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 186
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .line 182
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_a
    move-exception v6

    move-object v0, v6

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catch_b
    move-exception v6

    move-object v0, v6

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .line 179
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_c
    move-exception v6

    move-object v0, v6

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catch_d
    move-exception v6

    move-object v0, v6

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 176
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_e
    move-exception v6

    move-object v0, v6

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catch_f
    move-exception v6

    move-object v0, v6

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 173
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_10
    move-exception v6

    move-object v0, v6

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catch_11
    move-exception v6

    move-object v0, v6

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method public makeDir(Ljava/io/File;)V
    .locals 3
    .parameter "file"

    .prologue
    const/4 v2, -0x1

    .line 228
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 230
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 232
    :cond_0
    return-void
.end method

.method public saveObjectFile(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 11
    .parameter "file"
    .parameter "obj"

    .prologue
    const-string v10, "close : "

    const-string/jumbo v9, "sjan"

    .line 127
    if-nez p2, :cond_0

    .line 128
    const-string/jumbo v6, "sjan"

    const-string/jumbo v6, "obj == null"

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v6, 0x0

    .line 155
    :goto_0
    return v6

    .line 133
    :cond_0
    const/4 v5, 0x1

    .line 134
    .local v5, result:Z
    const/4 v1, 0x0

    .line 135
    .local v1, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 138
    .local v3, oos:Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 140
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .local v4, oos:Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v4, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 147
    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 148
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    move v6, v5

    .line 155
    goto :goto_0

    .line 149
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 150
    .local v0, e:Ljava/io/IOException;
    const-string/jumbo v6, "sjan"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "close : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .line 153
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 141
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 142
    .restart local v0       #e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string/jumbo v6, "sjan"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 144
    const/4 v5, 0x0

    .line 147
    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 148
    :cond_4
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 149
    :catch_2
    move-exception v6

    move-object v0, v6

    .line 150
    const-string/jumbo v6, "sjan"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "close : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 146
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 147
    :goto_3
    if-eqz v3, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 148
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 152
    :cond_6
    :goto_4
    throw v6

    .line 149
    :catch_3
    move-exception v7

    move-object v0, v7

    .line 150
    .restart local v0       #e:Ljava/io/IOException;
    const-string/jumbo v7, "sjan"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 146
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 141
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v6

    move-object v0, v6

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catch_5
    move-exception v6

    move-object v0, v6

    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2
.end method
