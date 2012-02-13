.class public Landroid/database/sqlite/SQLiteContentHelper;
.super Ljava/lang/Object;
.source "SQLiteContentHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBlobColumnAsAssetFile(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .parameter "db"
    .parameter "sql"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/database/sqlite/SQLiteContentHelper;->simpleQueryForBlobMemoryFile(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v1

    .local v1, file:Landroid/os/MemoryFile;
    if-nez v1, :cond_0

    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "No results."

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #file:Landroid/os/MemoryFile;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/io/IOException;
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #ex:Ljava/io/IOException;
    .restart local v1       #file:Landroid/os/MemoryFile;
    :cond_0
    :try_start_1
    invoke-static {v1}, Landroid/content/res/AssetFileDescriptor;->fromMemoryFile(Landroid/os/MemoryFile;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    return-object v2
.end method

.method private static simpleQueryForBlobMemoryFile(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 6
    .parameter "db"
    .parameter "sql"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .local v0, bytes:[B
    if-nez v0, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v3, v4

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v2, Landroid/os/MemoryFile;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-direct {v2, v3, v4}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .local v2, file:Landroid/os/MemoryFile;
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    invoke-virtual {v2}, Landroid/os/MemoryFile;->deactivate()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v3, v2

    goto :goto_0

    .end local v0           #bytes:[B
    .end local v2           #file:Landroid/os/MemoryFile;
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v3
.end method
