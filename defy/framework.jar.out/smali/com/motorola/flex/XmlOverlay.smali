.class public Lcom/motorola/flex/XmlOverlay;
.super Ljava/lang/Object;
.source "XmlOverlay.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OverlayRecord"


# instance fields
.field protected final mFile:Ljava/io/File;

.field protected final mTableName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .parameter "tableName"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/flex/XmlOverlay;->mFile:Ljava/io/File;

    iput-object p2, p0, Lcom/motorola/flex/XmlOverlay;->mTableName:Ljava/lang/String;

    return-void
.end method

.method public static getOverlays(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)[Lcom/motorola/flex/XmlOverlay;
    .locals 11
    .parameter "db"
    .parameter "dirPath"
    .parameter "suffix"

    .prologue
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, dir:Ljava/io/File;
    new-instance v3, Lcom/motorola/flex/XmlOverlay$1;

    invoke-direct {v3, p2}, Lcom/motorola/flex/XmlOverlay$1;-><init>(Ljava/lang/String;)V

    .local v3, filter:Ljava/io/FilenameFilter;
    invoke-virtual {v1, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .local v0, children:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, records:[Lcom/motorola/flex/XmlOverlay;
    if-nez v0, :cond_1

    :cond_0
    return-object v5

    :cond_1
    array-length v7, v0

    new-array v5, v7, [Lcom/motorola/flex/XmlOverlay;

    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v7, v0

    if-ge v4, v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, filePath:Ljava/lang/String;
    aget-object v7, v0, v4

    const/4 v8, 0x0

    aget-object v9, v0, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .local v6, tableName:Ljava/lang/String;
    new-instance v7, Lcom/motorola/flex/XmlOverlay;

    invoke-direct {v7, v2, v6}, Lcom/motorola/flex/XmlOverlay;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/flex/XmlOverlay;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/flex/XmlOverlay;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/flex/XmlOverlay;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method public read()Ljava/util/List;
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string v8, "OverlayRecord"

    const/4 v1, 0x0

    .local v1, list:Ljava/util/ArrayList;
    const-string v4, "OverlayRecord"

    const-string v4, "OverlayHelper.readListXml %s"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/motorola/flex/XmlOverlay;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/motorola/flex/XmlOverlay;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    .local v2, stream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/motorola/flex/XmlOverlay;->mFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .end local v2           #stream:Ljava/io/FileInputStream;
    .local v3, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->readListXml(Ljava/io/InputStream;)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    move-result-object v1

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .end local v3           #stream:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-object v1

    .restart local v2       #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v4, "OverlayRecord"

    const-string v5, "File %s unexpectedly missing!"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/motorola/flex/XmlOverlay;->mFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v4

    move-object v0, v4

    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    :try_start_5
    const-string v4, "OverlayRecord"

    const-string v5, "Invalid format for file %s error is %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/motorola/flex/XmlOverlay;->mFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_0

    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string v4, "OverlayRecord"

    const-string v5, "IOException reading file %s error is %"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/motorola/flex/XmlOverlay;->mFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_0

    :catch_5
    move-exception v4

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v2, :cond_1

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :cond_1
    :goto_5
    throw v4

    .end local v2           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :catch_6
    move-exception v4

    goto :goto_0

    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v2       #stream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v5

    goto :goto_5

    .end local v2           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v2       #stream:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v2           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v2       #stream:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v2           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :catch_9
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v2       #stream:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v2           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :catch_a
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v2       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/motorola/flex/XmlOverlay;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
