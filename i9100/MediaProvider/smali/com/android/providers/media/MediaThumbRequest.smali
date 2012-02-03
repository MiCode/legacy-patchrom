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
.field private static final THUMB_PROJECTION:[Ljava/lang/String;

.field static final mountedExternalSDPath:Ljava/lang/String;

.field static final mountedInternalSDPath:Ljava/lang/String;


# instance fields
.field mCallingPid:I

.field mCr:Landroid/content/ContentResolver;

.field mGroupId:J

.field mIsExternalRequest:Z

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
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaThumbRequest;->mountedInternalSDPath:Ljava/lang/String;

    .line 56
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaThumbRequest;->mountedExternalSDPath:Ljava/lang/String;

    .line 59
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
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mRequestTime:J

    .line 66
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mCallingPid:I

    .line 74
    sget-object v1, Lcom/android/providers/media/MediaThumbRequest$State;->WAIT:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 78
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v1, p0, Lcom/android/providers/media/MediaThumbRequest;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 79
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mRandom:Ljava/util/Random;

    .line 94
    iput-object p1, p0, Lcom/android/providers/media/MediaThumbRequest;->mCr:Landroid/content/ContentResolver;

    .line 95
    iput-object p2, p0, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    .line 96
    iput p4, p0, Lcom/android/providers/media/MediaThumbRequest;->mPriority:I

    .line 97
    iput-wide p5, p0, Lcom/android/providers/media/MediaThumbRequest;->mMagic:J

    .line 98
    iput-object p3, p0, Lcom/android/providers/media/MediaThumbRequest;->mUri:Landroid/net/Uri;

    .line 99
    const-string v1, "video"

    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mIsVideo:Z

    .line 100
    invoke-static {p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    .line 101
    iget-boolean v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mIsVideo:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    iput-object v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mThumbUri:Landroid/net/Uri;

    .line 104
    iget-boolean v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mIsVideo:Z

    if-eqz v1, :cond_2

    const-string v1, "video_id"

    :goto_1
    iput-object v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mOrigColumnName:Ljava/lang/String;

    .line 109
    const-string v1, "group_id"

    invoke-virtual {p3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, groupIdParam:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 111
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mGroupId:J

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/media/MediaThumbRequest;->isRequestForExternalSD()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mIsExternalRequest:Z

    .line 114
    return-void

    .line 101
    .end local v0           #groupIdParam:Ljava/lang/String;
    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 104
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
    .line 82
    new-instance v0, Lcom/android/providers/media/MediaThumbRequest$1;

    invoke-direct {v0}, Lcom/android/providers/media/MediaThumbRequest$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method execute()V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mUri:Landroid/net/Uri;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MiniThumbFile;->instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;

    move-result-object v21

    .line 152
    .local v21, miniThumbFile:Landroid/media/MiniThumbFile;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mMagic:J

    move-wide/from16 v18, v0

    .line 153
    .local v18, magic:J
    const-wide/16 v7, 0x0

    cmp-long v5, v18, v7

    if-eqz v5, :cond_9

    .line 154
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mIsExternalRequest:Z

    move v5, v0

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalMemoryStatus()Z

    move-result v5

    if-nez v5, :cond_0

    .line 155
    const-string v5, "MediaThumbRequest"

    const-string v6, "execute() : SD card is gone. Do not need to continue for items on SD card. "

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v9, v18

    .line 283
    .end local v18           #magic:J
    .local v9, magic:J
    :goto_0
    return-void

    .line 159
    .end local v9           #magic:J
    .restart local v18       #magic:J
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    move-wide v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mCr:Landroid/content/ContentResolver;

    move-object v5, v0

    move-object/from16 v0, v21

    move-wide v1, v7

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->getMagic(JLandroid/content/ContentResolver;)J

    move-result-wide v16

    .line 160
    .local v16, fileMagic:J
    cmp-long v5, v16, v18

    if-nez v5, :cond_9

    .line 161
    const/4 v13, 0x0

    .line 162
    .local v13, c:Landroid/database/Cursor;
    const/16 v22, 0x0

    .line 164
    .local v22, pfd:Landroid/os/ParcelFileDescriptor;
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

    move-result-object v13

    .line 166
    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mCr:Landroid/content/ContentResolver;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mThumbUri:Landroid/net/Uri;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

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

    move-result-object v22

    .line 177
    :cond_1
    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_2
    if-eqz v22, :cond_9

    .line 179
    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->close()V

    move-wide/from16 v9, v18

    .line 180
    .end local v18           #magic:J
    .restart local v9       #magic:J
    goto/16 :goto_0

    .line 170
    .end local v9           #magic:J
    .restart local v18       #magic:J
    :catch_0
    move-exception v5

    move-object v15, v5

    .line 173
    .local v15, ex:Ljava/io/IOException;
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mIsExternalRequest:Z

    move v5, v0

    if-eqz v5, :cond_5

    invoke-static {}, Landroid/os/Environment;->getExternalMemoryStatus()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_5

    .line 177
    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_3
    if-eqz v22, :cond_4

    .line 179
    throw v22

    move-wide/from16 v9, v18

    .line 180
    .end local v18           #magic:J
    .restart local v9       #magic:J
    goto/16 :goto_0

    .end local v9           #magic:J
    .restart local v18       #magic:J
    :cond_4
    move-wide/from16 v9, v18

    .end local v18           #magic:J
    .restart local v9       #magic:J
    goto/16 :goto_0

    .line 177
    .end local v9           #magic:J
    .restart local v18       #magic:J
    :cond_5
    if-eqz v13, :cond_6

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_6
    if-eqz v22, :cond_9

    .line 179
    throw v22

    move-wide/from16 v9, v18

    .line 180
    .end local v18           #magic:J
    .restart local v9       #magic:J
    goto/16 :goto_0

    .line 177
    .end local v9           #magic:J
    .end local v15           #ex:Ljava/io/IOException;
    .restart local v18       #magic:J
    :catchall_0
    move-exception v5

    if-eqz v13, :cond_7

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_7
    if-eqz v22, :cond_8

    .line 179
    throw v22

    move-wide/from16 v9, v18

    .line 180
    .end local v18           #magic:J
    .restart local v9       #magic:J
    goto/16 :goto_0

    .end local v9           #magic:J
    .restart local v18       #magic:J
    :cond_8
    throw v5

    .line 189
    .end local v13           #c:Landroid/database/Cursor;
    .end local v16           #fileMagic:J
    .end local v22           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_9
    const/4 v12, 0x0

    .line 191
    .local v12, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_10

    .line 192
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mIsVideo:Z

    move v5, v0

    if-eqz v5, :cond_a

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 199
    :goto_1
    if-nez v12, :cond_b

    .line 200
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

    move-wide/from16 v9, v18

    .line 201
    .end local v18           #magic:J
    .restart local v9       #magic:J
    goto/16 :goto_0

    .line 196
    .end local v9           #magic:J
    .restart local v18       #magic:J
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v12

    goto :goto_1

    .line 209
    :cond_b
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/providers/media/MediaThumbRequest;->updateDatabase(Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v25

    .line 210
    .local v25, uri:Landroid/net/Uri;
    if-eqz v25, :cond_f

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mCr:Landroid/content/ContentResolver;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v24

    .line 212
    .local v24, thumbOut:Ljava/io/OutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x55

    move-object v0, v12

    move-object v1, v5

    move v2, v6

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 213
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/io/FileOutputStream;

    move v5, v0

    if-eqz v5, :cond_c

    .line 215
    :try_start_2
    move-object/from16 v0, v24

    check-cast v0, Ljava/io/FileOutputStream;

    move-object/from16 v25, v0

    .end local v25           #uri:Landroid/net/Uri;
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 220
    :cond_c
    :goto_2
    if-eqz v24, :cond_d

    .line 221
    invoke-virtual/range {v24 .. v24}, Ljava/io/OutputStream;->close()V

    .line 232
    :cond_d
    const/16 v5, 0x60

    const/16 v6, 0x60

    const/4 v7, 0x2

    invoke-static {v12, v5, v6, v7}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 237
    if-eqz v12, :cond_12

    .line 238
    new-instance v20, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 239
    .local v20, miniOutStream:Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x4b

    move-object v0, v12

    move-object v1, v5

    move v2, v6

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 240
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 241
    const/4 v6, 0x0

    .line 244
    .local v6, data:[B
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 245
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v6

    .line 254
    :goto_3
    if-eqz v6, :cond_13

    move-wide/from16 v9, v18

    .line 257
    .end local v18           #magic:J
    .restart local v9       #magic:J
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mRandom:Ljava/util/Random;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Random;->nextLong()J

    move-result-wide v9

    .line 258
    const-wide/16 v7, 0x0

    cmp-long v5, v9, v7

    if-eqz v5, :cond_e

    .line 260
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mIsExternalRequest:Z

    move v5, v0

    if-eqz v5, :cond_11

    invoke-static {}, Landroid/os/Environment;->getExternalMemoryStatus()Z

    move-result v5

    if-nez v5, :cond_11

    .line 261
    const-string v5, "MediaThumbRequest"

    const-string v6, "execute() : SD card is gone. Do not need to continue for items on SD card. "

    .end local v6           #data:[B
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 216
    .end local v9           #magic:J
    .end local v20           #miniOutStream:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #magic:J
    :catch_1
    move-exception v5

    move-object/from16 v23, v5

    .line 217
    .local v23, t:Ljava/lang/Throwable;
    const-string v5, "MediaThumbRequest"

    const-string v6, "Unable to sync thumbnail file"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v23           #t:Ljava/lang/Throwable;
    .end local v24           #thumbOut:Ljava/io/OutputStream;
    .restart local v25       #uri:Landroid/net/Uri;
    :cond_f
    move-wide/from16 v9, v18

    .line 225
    .end local v18           #magic:J
    .restart local v9       #magic:J
    goto/16 :goto_0

    .end local v9           #magic:J
    .end local v25           #uri:Landroid/net/Uri;
    .restart local v18       #magic:J
    :cond_10
    move-wide/from16 v9, v18

    .line 229
    .end local v18           #magic:J
    .restart local v9       #magic:J
    goto/16 :goto_0

    .line 246
    .end local v9           #magic:J
    .restart local v6       #data:[B
    .restart local v18       #magic:J
    .restart local v20       #miniOutStream:Ljava/io/ByteArrayOutputStream;
    .restart local v24       #thumbOut:Ljava/io/OutputStream;
    :catch_2
    move-exception v5

    move-object v15, v5

    .line 247
    .restart local v15       #ex:Ljava/io/IOException;
    const-string v5, "MediaThumbRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got exception ex "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 265
    .end local v15           #ex:Ljava/io/IOException;
    .end local v18           #magic:J
    .restart local v9       #magic:J
    :cond_11
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    move-wide v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mCr:Landroid/content/ContentResolver;

    move-object v11, v0

    move-object/from16 v5, v21

    invoke-virtual/range {v5 .. v11}, Landroid/media/MiniThumbFile;->saveMiniThumbToFile([BJJLandroid/content/ContentResolver;)V

    .line 266
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 268
    .local v26, values:Landroid/content/ContentValues;
    const-string v5, "mini_thumb_magic"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .end local v6           #data:[B
    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 272
    :try_start_4
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

    move-object/from16 v2, v26

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 274
    :catch_3
    move-exception v5

    move-object v14, v5

    .line 276
    .local v14, e:Ljava/lang/UnsupportedOperationException;
    const-string v5, "MediaThumbRequest"

    const-string v6, "UnsupportedOperationException in MediaThumbRequest.execute()"

    invoke-static {v5, v6, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 281
    .end local v9           #magic:J
    .end local v14           #e:Ljava/lang/UnsupportedOperationException;
    .end local v20           #miniOutStream:Ljava/io/ByteArrayOutputStream;
    .end local v26           #values:Landroid/content/ContentValues;
    .restart local v18       #magic:J
    :cond_12
    const-string v5, "MediaThumbRequest"

    const-string v6, "can\'t create bitmap for thumbnail."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move-wide/from16 v9, v18

    .end local v18           #magic:J
    .restart local v9       #magic:J
    goto/16 :goto_0
.end method

.method isRequestForExternalSD()Z
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    sget-object v1, Lcom/android/providers/media/MediaThumbRequest;->mountedExternalSDPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRequestForInternalSD()Z
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    sget-object v1, Lcom/android/providers/media/MediaThumbRequest;->mountedInternalSDPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    sget-object v1, Lcom/android/providers/media/MediaThumbRequest;->mountedExternalSDPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateDatabase(Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 11
    .parameter "thumbnail"

    .prologue
    const/4 v4, 0x0

    .line 117
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

    .line 119
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1

    move-object v0, v4

    .line 137
    :cond_0
    :goto_0
    return-object v0

    .line 121
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/android/providers/media/MediaThumbRequest;->mThumbUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 125
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_3
    new-instance v8, Landroid/content/ContentValues;

    const/4 v0, 0x4

    invoke-direct {v8, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 129
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "kind"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    iget-object v0, p0, Lcom/android/providers/media/MediaThumbRequest;->mOrigColumnName:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    const-string v0, "width"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string v0, "height"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/media/MediaThumbRequest;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mThumbUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 125
    .end local v8           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 135
    .restart local v8       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 136
    .local v7, ex:Ljava/lang/Exception;
    const-string v0, "MediaThumbRequest"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    .line 137
    goto :goto_0
.end method
