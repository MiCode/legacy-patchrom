.class public final Landroid/net/Downloads$ById;
.super Landroid/net/Downloads$DownloadBase;
.source "Downloads.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Downloads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ById"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/net/Downloads$DownloadBase;-><init>()V

    return-void
.end method

.method public static deleteDownload(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "downloadId"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .local v2, mimeType:Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/net/Downloads$ById;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v1

    .local v1, downloadUri:Landroid/net/Uri;
    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static getDownloadUri(J)Landroid/net/Uri;
    .locals 2
    .parameter "downloadId"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getMimeTypeForId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "downloadId"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .local v7, mimeType:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, downloadCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p1, p2}, Landroid/net/Downloads$ById;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v1

    .local v1, downloadUri:Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mimetype"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v7

    .end local v1           #downloadUri:Landroid/net/Uri;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public static final getStatus(Landroid/content/Context;J)Landroid/net/Downloads$StatusInfo;
    .locals 7
    .parameter "context"
    .parameter "downloadId"

    .prologue
    const/4 v6, 0x0

    .local v6, result:Landroid/net/Downloads$StatusInfo;
    const/4 v0, 0x0

    .local v0, hasFailedDownload:Z
    const-wide/16 v0, 0x0

    .local v0, failedDownloadModificationTime:J
    invoke-static {p1, p2}, Landroid/net/Downloads$ById;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v1

    .end local v0           #failedDownloadModificationTime:J
    .local v1, downloadUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/net/Downloads;->access$000()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .local p0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p1

    .end local p1
    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object p0, v6

    .end local v6           #result:Landroid/net/Downloads$StatusInfo;
    .local p0, result:Landroid/net/Downloads$StatusInfo;
    move-object p1, v6

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local p0           #result:Landroid/net/Downloads$StatusInfo;
    .local p1, result:Landroid/net/Downloads$StatusInfo;
    :goto_0
    return-object p1

    .end local p1           #result:Landroid/net/Downloads$StatusInfo;
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v6       #result:Landroid/net/Downloads$StatusInfo;
    .local p0, c:Landroid/database/Cursor;
    :cond_1
    if-nez v6, :cond_8

    :try_start_1
    new-instance p1, Landroid/net/Downloads$StatusInfo;

    invoke-direct {p1}, Landroid/net/Downloads$StatusInfo;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v6           #result:Landroid/net/Downloads$StatusInfo;
    .restart local p1       #result:Landroid/net/Downloads$StatusInfo;
    move-object v0, p1

    .end local p1           #result:Landroid/net/Downloads$StatusInfo;
    .local v0, result:Landroid/net/Downloads$StatusInfo;
    :goto_1
    const-wide/16 p1, 0x0

    :try_start_2
    #calls: Landroid/net/Downloads;->getStatusOfDownload(Landroid/database/Cursor;J)I
    invoke-static {p0, p1, p2}, Landroid/net/Downloads;->access$100(Landroid/database/Cursor;J)I

    move-result p1

    .local p1, status:I
    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-ne p1, p2, :cond_5

    :cond_2
    const/4 p2, 0x4

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    .end local p1           #status:I
    :goto_2
    iput-boolean p1, v0, Landroid/net/Downloads$StatusInfo;->completed:Z

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/net/Downloads$StatusInfo;->filename:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    iput-wide p1, v0, Landroid/net/Downloads$StatusInfo;->id:J

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v0, Landroid/net/Downloads$StatusInfo;->statusCode:I

    const/4 p1, 0x5

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    iput-wide p1, v0, Landroid/net/Downloads$StatusInfo;->bytesSoFar:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object p0, v0

    .end local v0           #result:Landroid/net/Downloads$StatusInfo;
    .local p0, result:Landroid/net/Downloads$StatusInfo;
    move-object p1, v0

    .end local p0           #result:Landroid/net/Downloads$StatusInfo;
    .local p1, result:Landroid/net/Downloads$StatusInfo;
    goto :goto_0

    .restart local v0       #result:Landroid/net/Downloads$StatusInfo;
    .local p0, c:Landroid/database/Cursor;
    .local p1, status:I
    :cond_4
    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    const/4 p1, 0x4

    :try_start_3
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    .end local p1           #status:I
    move-result-wide p1

    .local p1, modTime:J
    const/4 p1, 0x2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    .end local p1           #modTime:J
    move-result p1

    iput p1, v0, Landroid/net/Downloads$StatusInfo;->statusCode:I

    const/4 p1, 0x5

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    iput-wide p1, v0, Landroid/net/Downloads$StatusInfo;->bytesSoFar:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_6

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object p0, v0

    .end local v0           #result:Landroid/net/Downloads$StatusInfo;
    .local p0, result:Landroid/net/Downloads$StatusInfo;
    move-object p1, v0

    .end local p0           #result:Landroid/net/Downloads$StatusInfo;
    .local p1, result:Landroid/net/Downloads$StatusInfo;
    goto :goto_0

    .end local p1           #result:Landroid/net/Downloads$StatusInfo;
    .local v0, cr:Landroid/content/ContentResolver;
    .restart local v6       #result:Landroid/net/Downloads$StatusInfo;
    .local p0, c:Landroid/database/Cursor;
    :catchall_0
    move-exception p1

    move-object p2, p1

    move-object p1, v6

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #result:Landroid/net/Downloads$StatusInfo;
    .restart local p1       #result:Landroid/net/Downloads$StatusInfo;
    :goto_3
    if-eqz p0, :cond_7

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p2

    .end local p1           #result:Landroid/net/Downloads$StatusInfo;
    .local v0, result:Landroid/net/Downloads$StatusInfo;
    :catchall_1
    move-exception p1

    move-object p2, p1

    move-object p1, v0

    .end local v0           #result:Landroid/net/Downloads$StatusInfo;
    .restart local p1       #result:Landroid/net/Downloads$StatusInfo;
    goto :goto_3

    .end local p1           #result:Landroid/net/Downloads$StatusInfo;
    .local v0, cr:Landroid/content/ContentResolver;
    .restart local v6       #result:Landroid/net/Downloads$StatusInfo;
    :cond_8
    move-object v0, v6

    .end local v6           #result:Landroid/net/Downloads$StatusInfo;
    .local v0, result:Landroid/net/Downloads$StatusInfo;
    goto :goto_1
.end method

.method public static openDownload(Landroid/content/Context;JLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .parameter "context"
    .parameter "downloadId"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .local v2, mimeType:Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/net/Downloads$ById;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v1

    .local v1, downloadUri:Landroid/net/Uri;
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    return-object v3
.end method

.method public static openDownloadStream(Landroid/content/Context;J)Ljava/io/InputStream;
    .locals 4
    .parameter "context"
    .parameter "downloadId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .local v2, mimeType:Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/net/Downloads$ById;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v1

    .local v1, downloadUri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    return-object v3
.end method
