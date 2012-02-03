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
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
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

    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, fis:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 107
    .local v4, result:Landroid/content/Intent;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    if-nez p2, :cond_0

    .line 109
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    .line 110
    const/16 v5, 0x2e

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 111
    .local v3, lastDot:I
    if-lez v3, :cond_0

    .line 112
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 115
    .end local v3           #lastDot:I
    :cond_0
    invoke-static {p0, v2, p2}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/ContentResolver;Ljava/io/FileInputStream;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    .line 120
    if-eqz v2, :cond_1

    .line 121
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v1, v2

    .line 127
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :cond_2
    :goto_0
    return-object v4

    .line 122
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/io/IOException;
    const-string v5, "DrmStore"

    const-string v5, "IOException in DrmStore.addDrmFile()"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 125
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 116
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 117
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v5, "DrmStore"

    const-string/jumbo v6, "pushing file failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    if-eqz v1, :cond_2

    .line 121
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 122
    :catch_2
    move-exception v0

    .line 123
    .local v0, e:Ljava/io/IOException;
    const-string v5, "DrmStore"

    const-string v5, "IOException in DrmStore.addDrmFile()"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 119
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 120
    :goto_2
    if-eqz v1, :cond_3

    .line 121
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 124
    :cond_3
    :goto_3
    throw v5

    .line 122
    :catch_3
    move-exception v0

    .line 123
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "DrmStore"

    const-string v6, "IOException in DrmStore.addDrmFile()"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 119
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 116
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
    .locals 11
    .parameter "cr"
    .parameter "fis"
    .parameter "title"

    .prologue
    .line 139
    const/4 v3, 0x0

    .line 140
    .local v3, os:Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 143
    .local v4, result:Landroid/content/Intent;
    :try_start_0
    new-instance v0, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result v1

    const-string v2, "application/vnd.oma.drm.message"

    invoke-direct {v0, p1, v1, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 145
    .local v0, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual {v0}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, mimeType:Ljava/lang/String;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v1

    .line 148
    .local v1, manager:Landroid/drm/mobile1/DrmRightsManager;
    invoke-virtual {v1, v0}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v1

    .line 149
    .local v1, rights:Landroid/drm/mobile1/DrmRights;
    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v1

    .line 150
    .local v1, stream:Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    .end local v0           #content:Landroid/drm/mobile1/DrmRawContent;
    int-to-long v5, v0

    .line 152
    .local v5, size:J
    const/4 v0, 0x0

    .line 153
    .local v0, contentUri:Landroid/net/Uri;
    const-string v7, "audio/"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 154
    sget-object v0, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    .line 161
    :goto_0
    if-eqz v0, :cond_9

    .line 162
    new-instance v7, Landroid/content/ContentValues;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 163
    .local v7, values:Landroid/content/ContentValues;
    const-string/jumbo v8, "title"

    invoke-virtual {v7, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string p2, "_size"

    .end local p2
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .end local v5           #size:J
    invoke-virtual {v7, p2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 165
    const-string/jumbo p2, "mime_type"

    invoke-virtual {v7, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0, v0, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 168
    .local v5, uri:Landroid/net/Uri;
    if-eqz v5, :cond_9

    .line 169
    invoke-virtual {p0, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 171
    .end local v3           #os:Ljava/io/OutputStream;
    .local v0, os:Ljava/io/OutputStream;
    const/16 p0, 0x3e8

    :try_start_1
    new-array p0, p0, [B

    .line 174
    .local p0, buffer:[B
    :goto_1
    invoke-virtual {v1, p0}, Ljava/io/InputStream;->read([B)I

    move-result p2

    .local p2, count:I
    const/4 v3, -0x1

    if-eq p2, v3, :cond_4

    .line 175
    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, p2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 182
    .end local p0           #buffer:[B
    .end local p2           #count:I
    :catch_0
    move-exception p0

    move-object p2, v0

    .end local v0           #os:Ljava/io/OutputStream;
    .local p2, os:Ljava/io/OutputStream;
    move-object v0, v4

    .line 183
    .end local v1           #stream:Ljava/io/InputStream;
    .end local v2           #mimeType:Ljava/lang/String;
    .end local v4           #result:Landroid/content/Intent;
    .end local v5           #uri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    .local v0, result:Landroid/content/Intent;
    .local p0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_2
    const-string v1, "DrmStore"

    const-string/jumbo v2, "pushing file failed"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 186
    if-eqz p1, :cond_0

    .line 187
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 188
    :cond_0
    if-eqz p2, :cond_1

    .line 189
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    move-object p1, v0

    .end local v0           #result:Landroid/content/Intent;
    .local p1, result:Landroid/content/Intent;
    move-object p0, p2

    .line 195
    .end local p2           #os:Ljava/io/OutputStream;
    .local p0, os:Ljava/io/OutputStream;
    :goto_3
    return-object p1

    .line 155
    .local v0, contentUri:Landroid/net/Uri;
    .restart local v1       #stream:Ljava/io/InputStream;
    .restart local v2       #mimeType:Ljava/lang/String;
    .restart local v3       #os:Ljava/io/OutputStream;
    .restart local v4       #result:Landroid/content/Intent;
    .local v5, size:J
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, fis:Ljava/io/FileInputStream;
    .local p2, title:Ljava/lang/String;
    :cond_2
    :try_start_4
    const-string v7, "image/"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 156
    sget-object v0, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 158
    :cond_3
    const-string v7, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unsupported mime type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 182
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v1           #stream:Ljava/io/InputStream;
    .end local v2           #mimeType:Ljava/lang/String;
    .end local v5           #size:J
    .end local p2           #title:Ljava/lang/String;
    :catch_1
    move-exception p0

    move-object v0, v4

    .end local v4           #result:Landroid/content/Intent;
    .local v0, result:Landroid/content/Intent;
    move-object p2, v3

    .end local v3           #os:Ljava/io/OutputStream;
    .local p2, os:Ljava/io/OutputStream;
    goto :goto_2

    .line 177
    .local v0, os:Ljava/io/OutputStream;
    .restart local v1       #stream:Ljava/io/InputStream;
    .restart local v2       #mimeType:Ljava/lang/String;
    .restart local v4       #result:Landroid/content/Intent;
    .local v5, uri:Landroid/net/Uri;
    .restart local v7       #values:Landroid/content/ContentValues;
    .local p0, buffer:[B
    .local p2, count:I
    :cond_4
    :try_start_5
    new-instance p0, Landroid/content/Intent;

    .end local p0           #buffer:[B
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 178
    .end local v4           #result:Landroid/content/Intent;
    .local p0, result:Landroid/content/Intent;
    :try_start_6
    invoke-virtual {p0, v5, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-object p2, v0

    .end local v0           #os:Ljava/io/OutputStream;
    .local p2, os:Ljava/io/OutputStream;
    move-object v0, p0

    .line 186
    .end local v5           #uri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    .end local p0           #result:Landroid/content/Intent;
    .local v0, result:Landroid/content/Intent;
    :goto_4
    if-eqz p1, :cond_5

    .line 187
    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 188
    :cond_5
    if-eqz p2, :cond_6

    .line 189
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_6
    move-object p1, v0

    .end local v0           #result:Landroid/content/Intent;
    .local p1, result:Landroid/content/Intent;
    move-object p0, p2

    .line 192
    .end local p2           #os:Ljava/io/OutputStream;
    .local p0, os:Ljava/io/OutputStream;
    goto :goto_3

    .line 190
    .end local p0           #os:Ljava/io/OutputStream;
    .restart local v0       #result:Landroid/content/Intent;
    .local p1, fis:Ljava/io/FileInputStream;
    .restart local p2       #os:Ljava/io/OutputStream;
    :catch_2
    move-exception p0

    .line 191
    .local p0, e:Ljava/io/IOException;
    const-string p1, "DrmStore"

    .end local p1           #fis:Ljava/io/FileInputStream;
    const-string v1, "IOException in DrmStore.addDrmFile()"

    .end local v1           #stream:Ljava/io/InputStream;
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v0

    .end local v0           #result:Landroid/content/Intent;
    .local p1, result:Landroid/content/Intent;
    move-object p0, p2

    .line 193
    .end local p2           #os:Ljava/io/OutputStream;
    .local p0, os:Ljava/io/OutputStream;
    goto :goto_3

    .line 190
    .end local v2           #mimeType:Ljava/lang/String;
    .restart local v0       #result:Landroid/content/Intent;
    .local p0, e:Ljava/lang/Exception;
    .local p1, fis:Ljava/io/FileInputStream;
    .restart local p2       #os:Ljava/io/OutputStream;
    :catch_3
    move-exception p0

    .line 191
    .local p0, e:Ljava/io/IOException;
    const-string p1, "DrmStore"

    .end local p1           #fis:Ljava/io/FileInputStream;
    const-string v1, "IOException in DrmStore.addDrmFile()"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v0

    .end local v0           #result:Landroid/content/Intent;
    .local p1, result:Landroid/content/Intent;
    move-object p0, p2

    .line 193
    .end local p2           #os:Ljava/io/OutputStream;
    .local p0, os:Ljava/io/OutputStream;
    goto :goto_3

    .line 185
    .restart local v3       #os:Ljava/io/OutputStream;
    .restart local v4       #result:Landroid/content/Intent;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, fis:Ljava/io/FileInputStream;
    :catchall_0
    move-exception p0

    move-object v0, p0

    move-object p2, v4

    .end local v4           #result:Landroid/content/Intent;
    .local p2, result:Landroid/content/Intent;
    move-object p0, v3

    .line 186
    .end local v3           #os:Ljava/io/OutputStream;
    .local p0, os:Ljava/io/OutputStream;
    :goto_5
    if-eqz p1, :cond_7

    .line 187
    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 188
    :cond_7
    if-eqz p0, :cond_8

    .line 189
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 192
    .end local p0           #os:Ljava/io/OutputStream;
    .end local p1           #fis:Ljava/io/FileInputStream;
    .end local p2           #result:Landroid/content/Intent;
    :cond_8
    :goto_6
    throw v0

    .line 190
    .restart local p0       #os:Ljava/io/OutputStream;
    .restart local p1       #fis:Ljava/io/FileInputStream;
    .restart local p2       #result:Landroid/content/Intent;
    :catch_4
    move-exception p0

    .line 191
    .local p0, e:Ljava/io/IOException;
    const-string p1, "DrmStore"

    .end local p1           #fis:Ljava/io/FileInputStream;
    const-string p2, "IOException in DrmStore.addDrmFile()"

    .end local p2           #result:Landroid/content/Intent;
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 185
    .end local p0           #e:Ljava/io/IOException;
    .local v0, os:Ljava/io/OutputStream;
    .restart local v1       #stream:Ljava/io/InputStream;
    .restart local v2       #mimeType:Ljava/lang/String;
    .restart local v4       #result:Landroid/content/Intent;
    .restart local v5       #uri:Landroid/net/Uri;
    .restart local v7       #values:Landroid/content/ContentValues;
    .restart local p1       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception p0

    move-object p2, v4

    .end local v4           #result:Landroid/content/Intent;
    .restart local p2       #result:Landroid/content/Intent;
    move-object v10, p0

    move-object p0, v0

    .end local v0           #os:Ljava/io/OutputStream;
    .local p0, os:Ljava/io/OutputStream;
    move-object v0, v10

    goto :goto_5

    .restart local v0       #os:Ljava/io/OutputStream;
    .local p0, result:Landroid/content/Intent;
    .local p2, count:I
    :catchall_2
    move-exception p2

    move-object v10, p2

    move-object p2, p0

    .end local p0           #result:Landroid/content/Intent;
    .local p2, result:Landroid/content/Intent;
    move-object p0, v0

    .end local v0           #os:Ljava/io/OutputStream;
    .local p0, os:Ljava/io/OutputStream;
    move-object v0, v10

    goto :goto_5

    .end local v1           #stream:Ljava/io/InputStream;
    .end local v2           #mimeType:Ljava/lang/String;
    .end local v5           #uri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    .local v0, result:Landroid/content/Intent;
    .local p0, e:Ljava/lang/Exception;
    .local p2, os:Ljava/io/OutputStream;
    :catchall_3
    move-exception p0

    move-object v10, p0

    move-object p0, p2

    .end local p2           #os:Ljava/io/OutputStream;
    .local p0, os:Ljava/io/OutputStream;
    move-object p2, v0

    .end local v0           #result:Landroid/content/Intent;
    .local p2, result:Landroid/content/Intent;
    move-object v0, v10

    goto :goto_5

    .line 182
    .local v0, os:Ljava/io/OutputStream;
    .restart local v1       #stream:Ljava/io/InputStream;
    .restart local v2       #mimeType:Ljava/lang/String;
    .restart local v5       #uri:Landroid/net/Uri;
    .restart local v7       #values:Landroid/content/ContentValues;
    .local p0, result:Landroid/content/Intent;
    .local p2, count:I
    :catch_5
    move-exception p2

    move-object v10, p2

    move-object p2, v0

    .end local v0           #os:Ljava/io/OutputStream;
    .local p2, os:Ljava/io/OutputStream;
    move-object v0, p0

    .end local p0           #result:Landroid/content/Intent;
    .local v0, result:Landroid/content/Intent;
    move-object p0, v10

    goto/16 :goto_2

    .end local v5           #uri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    .end local p2           #os:Ljava/io/OutputStream;
    .local v0, contentUri:Landroid/net/Uri;
    .restart local v3       #os:Ljava/io/OutputStream;
    .restart local v4       #result:Landroid/content/Intent;
    .local p0, cr:Landroid/content/ContentResolver;
    :cond_9
    move-object v0, v4

    .end local v4           #result:Landroid/content/Intent;
    .local v0, result:Landroid/content/Intent;
    move-object p2, v3

    .end local v3           #os:Ljava/io/OutputStream;
    .restart local p2       #os:Ljava/io/OutputStream;
    goto :goto_4
.end method

.method public static enforceAccessDrmPermission(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 205
    const-string v0, "android.permission.ACCESS_DRM"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DRM permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    return-void
.end method
