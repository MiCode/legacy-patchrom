.class public final Landroid/net/Downloads$ByUri;
.super Landroid/net/Downloads$DownloadBase;
.source "Downloads.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Downloads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByUri"
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final QUERY_WHERE_APP_DATA_CLAUSE:Ljava/lang/String; = "entity=?"

.field private static final QUERY_WHERE_CLAUSE:Ljava/lang/String; = "notificationpackage=? AND notificationclass=?"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "current_bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "total_bytes"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/Downloads$ByUri;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/net/Downloads$DownloadBase;-><init>()V

    return-void
.end method

.method private static final getCurrentOtaDownloads(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"
    .parameter "url"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Landroid/net/Downloads;->access$000()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "entity=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getProgressColumnCurrentBytes()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public static final getProgressColumnId()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static final getProgressColumnTotalBytes()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    return v0
.end method

.method public static final getProgressCursor(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 6
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, downloadUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/net/Downloads$ByUri;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getStatus(Landroid/content/Context;Ljava/lang/String;J)Landroid/net/Downloads$StatusInfo;
    .locals 8
    .parameter "context"
    .parameter "url"
    .parameter "redownload_threshold"

    .prologue
    const/4 v3, 0x0

    .local v3, result:Landroid/net/Downloads$StatusInfo;
    const/4 v2, 0x0

    .local v2, hasFailedDownload:Z
    const-wide/16 v0, 0x0

    .local v0, failedDownloadModificationTime:J
    invoke-static {p0, p1}, Landroid/net/Downloads$ByUri;->getCurrentOtaDownloads(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .local p0, c:Landroid/database/Cursor;
    move p1, v2

    .end local v2           #hasFailedDownload:Z
    .local p1, hasFailedDownload:Z
    :goto_0
    if-eqz p0, :cond_5

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v3, :cond_8

    new-instance v2, Landroid/net/Downloads$StatusInfo;

    invoke-direct {v2}, Landroid/net/Downloads$StatusInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3           #result:Landroid/net/Downloads$StatusInfo;
    .local v2, result:Landroid/net/Downloads$StatusInfo;
    move-object v4, v2

    .end local v2           #result:Landroid/net/Downloads$StatusInfo;
    .local v4, result:Landroid/net/Downloads$StatusInfo;
    :goto_1
    :try_start_1
    #calls: Landroid/net/Downloads;->getStatusOfDownload(Landroid/database/Cursor;J)I
    invoke-static {p0, p2, p3}, Landroid/net/Downloads;->access$100(Landroid/database/Cursor;J)I

    move-result v2

    .local v2, status:I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    :cond_0
    const/4 p2, 0x4

    if-ne v2, p2, :cond_2

    .end local p2
    const/4 p2, 0x1

    :goto_2
    iput-boolean p2, v4, Landroid/net/Downloads$StatusInfo;->completed:Z

    const/4 p2, 0x3

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v4, Landroid/net/Downloads$StatusInfo;->filename:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    iput-wide p2, v4, Landroid/net/Downloads$StatusInfo;->id:J

    const/4 p2, 0x2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, v4, Landroid/net/Downloads$StatusInfo;->statusCode:I

    const/4 p2, 0x5

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    iput-wide p2, v4, Landroid/net/Downloads$StatusInfo;->bytesSoFar:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object p0, v4

    .end local v4           #result:Landroid/net/Downloads$StatusInfo;
    .local p0, result:Landroid/net/Downloads$StatusInfo;
    move-object p1, v4

    .end local v2           #status:I
    .end local p0           #result:Landroid/net/Downloads$StatusInfo;
    .local p1, result:Landroid/net/Downloads$StatusInfo;
    :goto_3
    return-object p1

    .restart local v2       #status:I
    .restart local v4       #result:Landroid/net/Downloads$StatusInfo;
    .local p0, c:Landroid/database/Cursor;
    .local p1, hasFailedDownload:Z
    :cond_2
    const/4 p2, 0x0

    goto :goto_2

    .restart local p2
    :cond_3
    const/4 v2, 0x4

    :try_start_2
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    .end local v2           #status:I
    move-result-wide v2

    .local v2, modTime:J
    if-eqz p1, :cond_4

    cmp-long v5, v2, v0

    if-gez v5, :cond_4

    move-object v3, v4

    .end local v2           #modTime:J
    .end local v4           #result:Landroid/net/Downloads$StatusInfo;
    .restart local v3       #result:Landroid/net/Downloads$StatusInfo;
    goto :goto_0

    .end local v3           #result:Landroid/net/Downloads$StatusInfo;
    .restart local v2       #modTime:J
    .restart local v4       #result:Landroid/net/Downloads$StatusInfo;
    :cond_4
    const/4 p1, 0x1

    move-wide v0, v2

    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    .end local v2           #modTime:J
    move-result v2

    iput v2, v4, Landroid/net/Downloads$StatusInfo;->statusCode:I

    const/4 v2, 0x5

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v4, Landroid/net/Downloads$StatusInfo;->bytesSoFar:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, v4

    .end local v4           #result:Landroid/net/Downloads$StatusInfo;
    .restart local v3       #result:Landroid/net/Downloads$StatusInfo;
    goto :goto_0

    :cond_5
    if-eqz p0, :cond_6

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object p0, v3

    .end local v3           #result:Landroid/net/Downloads$StatusInfo;
    .local p0, result:Landroid/net/Downloads$StatusInfo;
    move-object p1, v3

    .end local p0           #result:Landroid/net/Downloads$StatusInfo;
    .local p1, result:Landroid/net/Downloads$StatusInfo;
    goto :goto_3

    .restart local v3       #result:Landroid/net/Downloads$StatusInfo;
    .local p0, c:Landroid/database/Cursor;
    .local p1, hasFailedDownload:Z
    :catchall_0
    move-exception p2

    move p3, p1

    .end local p1           #hasFailedDownload:Z
    .end local p2
    .local p3, hasFailedDownload:Z
    move-wide v6, v0

    .end local v0           #failedDownloadModificationTime:J
    .local v6, failedDownloadModificationTime:J
    move-object v1, p2

    move-object v0, v3

    .end local v3           #result:Landroid/net/Downloads$StatusInfo;
    .local v0, result:Landroid/net/Downloads$StatusInfo;
    move-wide p1, v6

    .end local v6           #failedDownloadModificationTime:J
    .local p1, failedDownloadModificationTime:J
    :goto_4
    if-eqz p0, :cond_7

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1

    .end local p3           #hasFailedDownload:Z
    .local v0, failedDownloadModificationTime:J
    .restart local v4       #result:Landroid/net/Downloads$StatusInfo;
    .local p1, hasFailedDownload:Z
    :catchall_1
    move-exception p2

    move p3, p1

    .end local p1           #hasFailedDownload:Z
    .restart local p3       #hasFailedDownload:Z
    move-wide v6, v0

    .end local v0           #failedDownloadModificationTime:J
    .restart local v6       #failedDownloadModificationTime:J
    move-object v1, p2

    move-object v0, v4

    .end local v4           #result:Landroid/net/Downloads$StatusInfo;
    .local v0, result:Landroid/net/Downloads$StatusInfo;
    move-wide p1, v6

    .end local v6           #failedDownloadModificationTime:J
    .local p1, failedDownloadModificationTime:J
    goto :goto_4

    .end local p3           #hasFailedDownload:Z
    .local v0, failedDownloadModificationTime:J
    .restart local v3       #result:Landroid/net/Downloads$StatusInfo;
    .local p1, hasFailedDownload:Z
    .restart local p2
    :cond_8
    move-object v4, v3

    .end local v3           #result:Landroid/net/Downloads$StatusInfo;
    .restart local v4       #result:Landroid/net/Downloads$StatusInfo;
    goto :goto_1
.end method

.method public static final removeAllDownloadsByPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "notification_package"
    .parameter "notification_class"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "notificationpackage=? AND notificationclass=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
