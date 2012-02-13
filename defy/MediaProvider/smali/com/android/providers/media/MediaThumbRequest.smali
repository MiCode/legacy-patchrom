.class Lcom/android/providers/media/MediaThumbRequest;
.super Ljava/lang/Object;
.source "MediaThumbRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/MediaThumbRequest$State;
    }
.end annotation


# static fields
.field static final PRIORITY_CRITICAL:I = 0x0

.field static final PRIORITY_HIGH:I = 0x5

.field static final PRIORITY_LOW:I = 0x14

.field static final PRIORITY_NORMAL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "MediaThumbRequest"

.field private static final THUMB_PROJECTION:[Ljava/lang/String;


# instance fields
.field mCallingPid:I

.field mCr:Landroid/content/ContentResolver;

.field mGroupId:J

.field mIsVideo:Z

.field mMagic:J

.field mOrigColumnName:Ljava/lang/String;

.field mOrigId:J

.field mPath:Ljava/lang/String;

.field mPriority:I

.field private final mRandom:Ljava/util/Random;

.field mRequestTime:J

.field mState:Lcom/android/providers/media/MediaThumbRequest$State;

.field mThumbUri:Landroid/net/Uri;

.field mUri:Landroid/net/Uri;

.field private sBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MediaThumbRequest;->THUMB_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;IJ)V
    .locals 4
    .parameter "cr"
    .parameter "path"
    .parameter "uri"
    .parameter "priority"
    .parameter "magic"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mRequestTime:J

    .line 62
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mCallingPid:I

    .line 70
    sget-object v1, Lcom/android/providers/media/MediaThumbRequest$State;->WAIT:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 73
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v1, p0, Lcom/android/providers/media/MediaThumbRequest;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 74
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mRandom:Ljava/util/Random;

    .line 89
    iput-object p1, p0, Lcom/android/providers/media/MediaThumbRequest;->mCr:Landroid/content/ContentResolver;

    .line 90
    iput-object p2, p0, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    .line 91
    iput p4, p0, Lcom/android/providers/media/MediaThumbRequest;->mPriority:I

    .line 92
    iput-wide p5, p0, Lcom/android/providers/media/MediaThumbRequest;->mMagic:J

    .line 93
    iput-object p3, p0, Lcom/android/providers/media/MediaThumbRequest;->mUri:Landroid/net/Uri;

    .line 94
    const-string v1, "video"

    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mIsVideo:Z

    .line 95
    invoke-static {p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    .line 96
    iget-boolean v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mIsVideo:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    iput-object v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mThumbUri:Landroid/net/Uri;

    .line 99
    iget-boolean v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mIsVideo:Z

    if-eqz v1, :cond_2

    const-string v1, "video_id"

    :goto_1
    iput-object v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mOrigColumnName:Ljava/lang/String;

    .line 104
    const-string v1, "group_id"

    invoke-virtual {p3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, groupIdParam:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 106
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mGroupId:J

    .line 108
    :cond_0
    return-void

    .line 96
    .end local v0           #groupIdParam:Ljava/lang/String;
    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 99
    :cond_2
    const-string v1, "image_id"

    goto :goto_1
.end method

.method static getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/providers/media/MediaThumbRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/android/providers/media/MediaThumbRequest$1;

    invoke-direct {v0}, Lcom/android/providers/media/MediaThumbRequest$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method execute()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mUri:Landroid/net/Uri;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MiniThumbFile;->instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;

    move-result-object v20

    .line 146
    .local v20, miniThumbFile:Landroid/media/MiniThumbFile;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mMagic:J

    move-wide/from16 v17, v0

    .line 147
    .local v17, magic:J
    const-wide/16 v7, 0x0

    cmp-long v5, v17, v7

    if-eqz v5, :cond_5

    .line 148
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    move-wide v7, v0

    move-object/from16 v0, v20

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Landroid/media/MiniThumbFile;->getMagic(J)J

    move-result-wide v15

    .line 149
    .local v15, fileMagic:J
    cmp-long v5, v15, v17

    if-nez v5, :cond_5

    .line 150
    const/4 v12, 0x0

    .line 151
    .local v12, c:Landroid/database/Cursor;
    const/16 v21, 0x0

    .line 153
    .local v21, pfd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mCr:Landroid/content/ContentResolver;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mThumbUri:Landroid/net/Uri;

    move-object v6, v0

    sget-object v7, Lcom/android/providers/media/MediaThumbRequest;->THUMB_PROJECTION:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mOrigColumnName:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    move-wide v9, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 155
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mCr:Landroid/content/ContentResolver;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mThumbUri:Landroid/net/Uri;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    const-string v7, "r"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 162
    :cond_0
    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_1
    if-eqz v21, :cond_5

    .line 164
    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V

    move-wide/from16 v9, v17

    .line 240
    .end local v12           #c:Landroid/database/Cursor;
    .end local v15           #fileMagic:J
    .end local v17           #magic:J
    .end local v21           #pfd:Landroid/os/ParcelFileDescriptor;
    .local v9, magic:J
    :goto_0
    return-void

    .line 159
    .end local v9           #magic:J
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v15       #fileMagic:J
    .restart local v17       #magic:J
    .restart local v21       #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v5

    .line 162
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_2
    if-eqz v21, :cond_5

    .line 164
    throw v21

    move-wide/from16 v9, v17

    .line 165
    .end local v17           #magic:J
    .restart local v9       #magic:J
    goto :goto_0

    .line 162
    .end local v9           #magic:J
    .restart local v17       #magic:J
    :catchall_0
    move-exception v5

    if-eqz v12, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_3
    if-eqz v21, :cond_4

    .line 164
    throw v21

    move-wide/from16 v9, v17

    .line 165
    .end local v17           #magic:J
    .restart local v9       #magic:J
    goto :goto_0

    .end local v9           #magic:J
    .restart local v17       #magic:J
    :cond_4
    throw v5

    .line 174
    .end local v12           #c:Landroid/database/Cursor;
    .end local v15           #fileMagic:J
    .end local v21           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_5
    const/4 v11, 0x0

    .line 176
    .local v11, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_8

    .line 177
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mIsVideo:Z

    move v5, v0

    if-eqz v5, :cond_6

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 184
    :goto_1
    if-nez v11, :cond_7

    .line 185
    const-string v5, "MediaThumbRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t create mini thumbnail for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v9, v17

    .line 186
    .end local v17           #magic:J
    .restart local v9       #magic:J
    goto :goto_0

    .line 181
    .end local v9           #magic:J
    .restart local v17       #magic:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_1

    .line 189
    :cond_7
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/providers/media/MediaThumbRequest;->updateDatabase(Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v23

    .line 190
    .local v23, uri:Landroid/net/Uri;
    if-eqz v23, :cond_8

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mCr:Landroid/content/ContentResolver;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v22

    .line 192
    .local v22, thumbOut:Ljava/io/OutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x55

    move-object v0, v11

    move-object v1, v5

    move v2, v6

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 193
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V

    .line 197
    .end local v22           #thumbOut:Ljava/io/OutputStream;
    .end local v23           #uri:Landroid/net/Uri;
    :cond_8
    const/16 v5, 0x60

    const/16 v6, 0x60

    const/4 v7, 0x2

    invoke-static {v11, v5, v6, v7}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 202
    if-eqz v11, :cond_a

    .line 203
    new-instance v19, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 204
    .local v19, miniOutStream:Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x4b

    move-object v0, v11

    move-object v1, v5

    move v2, v6

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 205
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 206
    const/4 v6, 0x0

    .line 209
    .local v6, data:[B
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 210
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    .line 219
    :goto_2
    if-eqz v6, :cond_b

    move-wide/from16 v9, v17

    .line 222
    .end local v17           #magic:J
    .restart local v9       #magic:J
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mRandom:Ljava/util/Random;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Random;->nextLong()J

    move-result-wide v9

    .line 223
    const-wide/16 v7, 0x0

    cmp-long v5, v9, v7

    if-eqz v5, :cond_9

    .line 227
    :try_start_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    move-wide v7, v0

    move-object/from16 v5, v20

    invoke-virtual/range {v5 .. v10}, Landroid/media/MiniThumbFile;->saveMiniThumbToFile([BJJ)V

    .line 228
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 230
    .local v24, values:Landroid/content/ContentValues;
    const-string v5, "mini_thumb_magic"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .end local v6           #data:[B
    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mCr:Landroid/content/ContentResolver;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mUri:Landroid/net/Uri;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v24

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 232
    .end local v24           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v5

    move-object v13, v5

    .line 233
    .local v13, e:Ljava/lang/Exception;
    const-string v5, "MediaThumbRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 211
    .end local v9           #magic:J
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v6       #data:[B
    .restart local v17       #magic:J
    :catch_2
    move-exception v5

    move-object v14, v5

    .line 212
    .local v14, ex:Ljava/io/IOException;
    const-string v5, "MediaThumbRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got exception ex "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 238
    .end local v6           #data:[B
    .end local v14           #ex:Ljava/io/IOException;
    .end local v19           #miniOutStream:Ljava/io/ByteArrayOutputStream;
    :cond_a
    const-string v5, "MediaThumbRequest"

    const-string v6, "can\'t create bitmap for thumbnail."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-wide/from16 v9, v17

    .end local v17           #magic:J
    .restart local v9       #magic:J
    goto/16 :goto_0
.end method

.method updateDatabase(Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 11
    .parameter "thumbnail"

    .prologue
    const/4 v4, 0x0

    .line 111
    iget-object v0, p0, Lcom/android/providers/media/MediaThumbRequest;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mThumbUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaThumbRequest;->THUMB_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/providers/media/MediaThumbRequest;->mOrigColumnName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v9, p0, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 113
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1

    move-object v0, v4

    .line 131
    :cond_0
    :goto_0
    return-object v0

    .line 115
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/android/providers/media/MediaThumbRequest;->mThumbUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 119
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_3
    new-instance v8, Landroid/content/ContentValues;

    const/4 v0, 0x4

    invoke-direct {v8, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 123
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "kind"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    iget-object v0, p0, Lcom/android/providers/media/MediaThumbRequest;->mOrigColumnName:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 125
    const-string v0, "width"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    const-string v0, "height"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/media/MediaThumbRequest;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mThumbUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 119
    .end local v8           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 129
    .restart local v8       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 130
    .local v7, ex:Ljava/lang/Exception;
    const-string v0, "MediaThumbRequest"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    .line 131
    goto :goto_0
.end method
