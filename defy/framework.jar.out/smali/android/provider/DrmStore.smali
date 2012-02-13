.class public final Landroid/provider/DrmStore;
.super Ljava/lang/Object;
.source "DrmStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/DrmStore$Audio;,
        Landroid/provider/DrmStore$Images;,
        Landroid/provider/DrmStore$Columns;
    }
.end annotation


# static fields
.field private static final ACCESS_DRM_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_DRM"

.field public static final AUTHORITY:Ljava/lang/String; = "drm"

.field private static final TAG:Ljava/lang/String; = "DrmStore"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addDrmFile(Landroid/content/ContentResolver;Ljava/io/File;Ljava/lang/String;)Landroid/content/Intent;
    .locals 9
    .parameter "cr"
    .parameter "file"
    .parameter "title"

    .prologue
    const-string v8, "IOException in DrmStore.addDrmFile()"

    const-string v7, "DrmStore"

    const/4 v1, 0x0

    .local v1, fis:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .local v4, result:Landroid/content/Intent;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    if-nez p2, :cond_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const/16 v5, 0x2e

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .local v3, lastDot:I
    if-lez v3, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .end local v3           #lastDot:I
    :cond_0
    invoke-static {p0, v2, p2}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/ContentResolver;Ljava/io/FileInputStream;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :cond_2
    :goto_0
    return-object v4

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    const-string v5, "DrmStore"

    const-string v5, "IOException in DrmStore.addDrmFile()"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v5, "DrmStore"

    const-string v6, "pushing file failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    const-string v5, "DrmStore"

    const-string v5, "IOException in DrmStore.addDrmFile()"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_3
    throw v5

    :catch_3
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "DrmStore"

    const-string v6, "IOException in DrmStore.addDrmFile()"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    move-object v0, v5

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static final addDrmFile(Landroid/content/ContentResolver;Ljava/io/FileInputStream;Ljava/lang/String;)Landroid/content/Intent;
    .locals 19
    .parameter "cr"
    .parameter "fis"
    .parameter "title"

    .prologue
    const/4 v8, 0x0

    .local v8, os:Ljava/io/OutputStream;
    const/4 v9, 0x0

    .local v9, result:Landroid/content/Intent;
    :try_start_0
    new-instance v5, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->available()I

    move-result v6

    const-string v7, "application/vnd.oma.drm.message"

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v6

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .local v5, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual {v5}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;

    move-result-object v7

    .local v7, mimeType:Ljava/lang/String;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v6

    .local v6, manager:Landroid/drm/mobile1/DrmRightsManager;
    invoke-virtual {v6, v5}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v6

    .local v6, rights:Landroid/drm/mobile1/DrmRights;
    invoke-virtual {v5, v6}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v12

    .local v12, stream:Ljava/io/InputStream;
    invoke-virtual {v12}, Ljava/io/InputStream;->available()I

    move-result v5

    .end local v5           #content:Landroid/drm/mobile1/DrmRawContent;
    int-to-long v10, v5

    .local v10, size:J
    const/4 v5, 0x0

    .local v5, contentUri:Landroid/net/Uri;
    const-string v6, "audio/"

    .end local v6           #rights:Landroid/drm/mobile1/DrmRights;
    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v5, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    if-eqz v5, :cond_a

    new-instance v6, Landroid/content/ContentValues;

    const/4 v13, 0x3

    invoke-direct {v6, v13}, Landroid/content/ContentValues;-><init>(I)V

    .local v6, values:Landroid/content/ContentValues;
    const-string v13, "title"

    move-object v0, v6

    move-object v1, v13

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "_size"

    .end local p2
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object v0, v6

    move-object/from16 v1, p2

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "mime_type"

    move-object v0, v6

    move-object/from16 v1, p2

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .local v15, uri:Landroid/net/Uri;
    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .end local v8           #os:Ljava/io/OutputStream;
    .local v6, os:Ljava/io/OutputStream;
    const/16 p2, 0x3e8

    :try_start_1
    move/from16 v0, p2

    new-array v0, v0, [B

    move-object/from16 p2, v0

    .local p2, buffer:[B
    const-wide/16 v13, 0x0

    .end local v5           #contentUri:Landroid/net/Uri;
    .local v13, totalCount:J
    :goto_1
    move-object v0, v12

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, count:I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_4

    const/4 v8, 0x0

    move-object v0, v6

    move-object/from16 v1, p2

    move v2, v8

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v13, v13, v16

    goto :goto_1

    .end local v6           #os:Ljava/io/OutputStream;
    .end local v13           #totalCount:J
    .end local v15           #uri:Landroid/net/Uri;
    .local v5, contentUri:Landroid/net/Uri;
    .restart local v8       #os:Ljava/io/OutputStream;
    .local p2, title:Ljava/lang/String;
    :cond_0
    :try_start_2
    const-string v6, "image/"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v5, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    const-string v6, "DrmStore"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "unsupported mime type "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .end local v5           #contentUri:Landroid/net/Uri;
    .end local v7           #mimeType:Ljava/lang/String;
    .end local v10           #size:J
    .end local v12           #stream:Ljava/io/InputStream;
    .end local p2           #title:Ljava/lang/String;
    :catch_0
    move-exception p0

    move-object v5, v9

    .end local v9           #result:Landroid/content/Intent;
    .local v5, result:Landroid/content/Intent;
    move-object/from16 p2, v8

    .end local v8           #os:Ljava/io/OutputStream;
    .local p0, e:Ljava/lang/Exception;
    .local p2, os:Ljava/io/OutputStream;
    :goto_2
    :try_start_3
    const-string v6, "DrmStore"

    const-string v7, "pushing file failed"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz p1, :cond_2

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    move-object/from16 p1, v5

    .end local v5           #result:Landroid/content/Intent;
    .local p1, result:Landroid/content/Intent;
    move-object/from16 p0, p2

    .end local p2           #os:Ljava/io/OutputStream;
    .local p0, os:Ljava/io/OutputStream;
    :goto_3
    return-object p1

    .local v5, count:I
    .restart local v6       #os:Ljava/io/OutputStream;
    .restart local v7       #mimeType:Ljava/lang/String;
    .restart local v9       #result:Landroid/content/Intent;
    .restart local v10       #size:J
    .restart local v12       #stream:Ljava/io/InputStream;
    .restart local v13       #totalCount:J
    .restart local v15       #uri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, fis:Ljava/io/FileInputStream;
    .local p2, buffer:[B
    :cond_4
    const-wide/16 v16, 0x0

    cmp-long p2, v10, v16

    if-nez p2, :cond_5

    .end local p2           #buffer:[B
    const-wide/16 v10, 0x0

    cmp-long p2, v13, v10

    if-eqz p2, :cond_5

    .end local v10           #size:J
    :try_start_5
    new-instance p2, Landroid/content/ContentValues;

    const/4 v5, 0x1

    move-object/from16 v0, p2

    move v1, v5

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .end local v5           #count:I
    .local p2, uValue:Landroid/content/ContentValues;
    const-string v5, "_size"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, p2

    move-object v1, v5

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p2

    move-object v3, v5

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .end local p2           #uValue:Landroid/content/ContentValues;
    :cond_5
    new-instance p0, Landroid/content/Intent;

    .end local p0           #cr:Landroid/content/ContentResolver;
    invoke-direct/range {p0 .. p0}, Landroid/content/Intent;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .end local v9           #result:Landroid/content/Intent;
    .local p0, result:Landroid/content/Intent;
    :try_start_6
    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-object/from16 v5, p0

    .end local p0           #result:Landroid/content/Intent;
    .local v5, result:Landroid/content/Intent;
    move-object/from16 p2, v6

    .end local v6           #os:Ljava/io/OutputStream;
    .end local v13           #totalCount:J
    .end local v15           #uri:Landroid/net/Uri;
    .local p2, os:Ljava/io/OutputStream;
    :goto_4
    if-eqz p1, :cond_6

    :try_start_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_7
    move-object/from16 p1, v5

    .end local v5           #result:Landroid/content/Intent;
    .local p1, result:Landroid/content/Intent;
    move-object/from16 p0, p2

    .end local p2           #os:Ljava/io/OutputStream;
    .local p0, os:Ljava/io/OutputStream;
    goto :goto_3

    .end local p0           #os:Ljava/io/OutputStream;
    .restart local v5       #result:Landroid/content/Intent;
    .local p1, fis:Ljava/io/FileInputStream;
    .restart local p2       #os:Ljava/io/OutputStream;
    :catch_1
    move-exception p0

    .local p0, e:Ljava/io/IOException;
    const-string p1, "DrmStore"

    .end local p1           #fis:Ljava/io/FileInputStream;
    const-string v6, "IOException in DrmStore.addDrmFile()"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 p1, v5

    .end local v5           #result:Landroid/content/Intent;
    .local p1, result:Landroid/content/Intent;
    move-object/from16 p0, p2

    .end local p2           #os:Ljava/io/OutputStream;
    .local p0, os:Ljava/io/OutputStream;
    goto :goto_3

    .end local v7           #mimeType:Ljava/lang/String;
    .end local v12           #stream:Ljava/io/InputStream;
    .restart local v5       #result:Landroid/content/Intent;
    .local p0, e:Ljava/lang/Exception;
    .local p1, fis:Ljava/io/FileInputStream;
    .restart local p2       #os:Ljava/io/OutputStream;
    :catch_2
    move-exception p0

    .local p0, e:Ljava/io/IOException;
    const-string p1, "DrmStore"

    .end local p1           #fis:Ljava/io/FileInputStream;
    const-string v6, "IOException in DrmStore.addDrmFile()"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 p1, v5

    .end local v5           #result:Landroid/content/Intent;
    .local p1, result:Landroid/content/Intent;
    move-object/from16 p0, p2

    .end local p2           #os:Ljava/io/OutputStream;
    .local p0, os:Ljava/io/OutputStream;
    goto :goto_3

    .restart local v8       #os:Ljava/io/OutputStream;
    .restart local v9       #result:Landroid/content/Intent;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, fis:Ljava/io/FileInputStream;
    :catchall_0
    move-exception p0

    move-object/from16 v5, p0

    move-object/from16 p2, v9

    .end local v9           #result:Landroid/content/Intent;
    .local p2, result:Landroid/content/Intent;
    move-object/from16 p0, v8

    .end local v8           #os:Ljava/io/OutputStream;
    .local p0, os:Ljava/io/OutputStream;
    :goto_5
    if-eqz p1, :cond_8

    :try_start_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    :cond_8
    if-eqz p0, :cond_9

    invoke-virtual/range {p0 .. p0}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .end local p0           #os:Ljava/io/OutputStream;
    .end local p1           #fis:Ljava/io/FileInputStream;
    .end local p2           #result:Landroid/content/Intent;
    :cond_9
    :goto_6
    throw v5

    .restart local p0       #os:Ljava/io/OutputStream;
    .restart local p1       #fis:Ljava/io/FileInputStream;
    .restart local p2       #result:Landroid/content/Intent;
    :catch_3
    move-exception p0

    .local p0, e:Ljava/io/IOException;
    const-string p1, "DrmStore"

    .end local p1           #fis:Ljava/io/FileInputStream;
    const-string p2, "IOException in DrmStore.addDrmFile()"

    .end local p2           #result:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .end local p0           #e:Ljava/io/IOException;
    .restart local v6       #os:Ljava/io/OutputStream;
    .restart local v7       #mimeType:Ljava/lang/String;
    .restart local v9       #result:Landroid/content/Intent;
    .restart local v12       #stream:Ljava/io/InputStream;
    .restart local v15       #uri:Landroid/net/Uri;
    .restart local p1       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception p0

    move-object/from16 v5, p0

    move-object/from16 p2, v9

    .end local v9           #result:Landroid/content/Intent;
    .restart local p2       #result:Landroid/content/Intent;
    move-object/from16 p0, v6

    .end local v6           #os:Ljava/io/OutputStream;
    .local p0, os:Ljava/io/OutputStream;
    goto :goto_5

    .end local p2           #result:Landroid/content/Intent;
    .restart local v6       #os:Ljava/io/OutputStream;
    .restart local v13       #totalCount:J
    .local p0, result:Landroid/content/Intent;
    :catchall_2
    move-exception p2

    move-object/from16 v5, p2

    move-object/from16 p2, p0

    .end local p0           #result:Landroid/content/Intent;
    .restart local p2       #result:Landroid/content/Intent;
    move-object/from16 p0, v6

    .end local v6           #os:Ljava/io/OutputStream;
    .local p0, os:Ljava/io/OutputStream;
    goto :goto_5

    .end local v7           #mimeType:Ljava/lang/String;
    .end local v12           #stream:Ljava/io/InputStream;
    .end local v13           #totalCount:J
    .end local v15           #uri:Landroid/net/Uri;
    .restart local v5       #result:Landroid/content/Intent;
    .local p0, e:Ljava/lang/Exception;
    .local p2, os:Ljava/io/OutputStream;
    :catchall_3
    move-exception p0

    move-object/from16 v18, p0

    move-object/from16 p0, p2

    .end local p2           #os:Ljava/io/OutputStream;
    .local p0, os:Ljava/io/OutputStream;
    move-object/from16 p2, v5

    .end local v5           #result:Landroid/content/Intent;
    .local p2, result:Landroid/content/Intent;
    move-object/from16 v5, v18

    goto :goto_5

    .end local p0           #os:Ljava/io/OutputStream;
    .end local p2           #result:Landroid/content/Intent;
    .restart local v6       #os:Ljava/io/OutputStream;
    .restart local v7       #mimeType:Ljava/lang/String;
    .restart local v9       #result:Landroid/content/Intent;
    .restart local v12       #stream:Ljava/io/InputStream;
    .restart local v15       #uri:Landroid/net/Uri;
    :catch_4
    move-exception p0

    move-object v5, v9

    .end local v9           #result:Landroid/content/Intent;
    .restart local v5       #result:Landroid/content/Intent;
    move-object/from16 p2, v6

    .end local v6           #os:Ljava/io/OutputStream;
    .local p2, os:Ljava/io/OutputStream;
    goto/16 :goto_2

    .end local v5           #result:Landroid/content/Intent;
    .end local p2           #os:Ljava/io/OutputStream;
    .restart local v6       #os:Ljava/io/OutputStream;
    .restart local v13       #totalCount:J
    .local p0, result:Landroid/content/Intent;
    :catch_5
    move-exception p2

    move-object/from16 v5, p0

    .end local p0           #result:Landroid/content/Intent;
    .restart local v5       #result:Landroid/content/Intent;
    move-object/from16 p0, p2

    move-object/from16 p2, v6

    .end local v6           #os:Ljava/io/OutputStream;
    .restart local p2       #os:Ljava/io/OutputStream;
    goto/16 :goto_2

    .end local v13           #totalCount:J
    .end local v15           #uri:Landroid/net/Uri;
    .end local p2           #os:Ljava/io/OutputStream;
    .local v5, contentUri:Landroid/net/Uri;
    .restart local v8       #os:Ljava/io/OutputStream;
    .restart local v9       #result:Landroid/content/Intent;
    .restart local v10       #size:J
    .local p0, cr:Landroid/content/ContentResolver;
    :cond_a
    move-object v5, v9

    .end local v9           #result:Landroid/content/Intent;
    .local v5, result:Landroid/content/Intent;
    move-object/from16 p2, v8

    .end local v8           #os:Ljava/io/OutputStream;
    .restart local p2       #os:Ljava/io/OutputStream;
    goto :goto_4
.end method

.method public static enforceAccessDrmPermission(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const-string v0, "android.permission.ACCESS_DRM"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DRM permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
