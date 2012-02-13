.class final Lcom/android/providers/media/MediaProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DatabaseHelper"
.end annotation


# instance fields
.field mAlbumCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mArtistCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mInternal:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "internal"

    .prologue
    .line 245
    const/4 v0, 0x0

    const v1, 0x18704

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Ljava/util/HashMap;

    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Ljava/util/HashMap;

    .line 246
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 247
    iput-boolean p3, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    .line 248
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    const/4 v1, 0x0

    const v2, 0x18704

    #calls: Lcom/android/providers/media/MediaProvider;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;ZII)V
    invoke-static {p1, v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->access$300(Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 259
    invoke-static {}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->singleton()Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    invoke-virtual {v0, p1, v1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 264
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 21
    .parameter "db"

    .prologue
    .line 287
    invoke-static {}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->singleton()Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    move/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->openDbForExtensions(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 291
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 353
    :cond_0
    return-void

    .line 294
    :cond_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 297
    new-instance v5, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    .local v5, file:Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 299
    .local v11, now:J
    invoke-virtual {v5, v11, v12}, Ljava/io/File;->setLastModified(J)Z

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v4

    .line 303
    .local v4, databases:[Ljava/lang/String;
    array-length v3, v4

    .line 304
    .local v3, count:I
    const/4 v7, 0x3

    .line 307
    .local v7, limit:I
    const-wide v18, 0x134fd9000L

    sub-long v16, v11, v18

    .line 308
    .local v16, twoMonthsAgo:J
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object v0, v4

    array-length v0, v0

    move/from16 v18, v0

    move v0, v6

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    aget-object v19, v4, v6

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 310
    .local v13, other:Ljava/io/File;
    const-string v18, "internal.db"

    aget-object v19, v4, v6

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    invoke-virtual {v5, v13}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 311
    :cond_2
    const/16 v18, 0x0

    aput-object v18, v4, v6

    .line 312
    add-int/lit8 v3, v3, -0x1

    .line 313
    invoke-virtual {v5, v13}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 316
    add-int/lit8 v7, v7, -0x1

    .line 308
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 319
    :cond_4
    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    .line 320
    .local v14, time:J
    cmp-long v18, v14, v16

    if-gez v18, :cond_3

    .line 321
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$200()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Deleting old database "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v4, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    aget-object v19, v4, v6

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 323
    const/16 v18, 0x0

    aput-object v18, v4, v6

    .line 324
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 346
    .end local v13           #other:Ljava/io/File;
    .end local v14           #time:J
    .local v8, lruIndex:I
    .local v9, lruTime:J
    :cond_5
    const/16 v18, -0x1

    move v0, v8

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 347
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$200()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Deleting old database "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v4, v8

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    aget-object v19, v4, v8

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 349
    const/16 v18, 0x0

    aput-object v18, v4, v8

    .line 350
    add-int/lit8 v3, v3, -0x1

    .line 331
    .end local v8           #lruIndex:I
    .end local v9           #lruTime:J
    :cond_6
    if-le v3, v7, :cond_0

    .line 332
    const/4 v8, -0x1

    .line 333
    .restart local v8       #lruIndex:I
    const-wide/16 v9, 0x0

    .line 335
    .restart local v9       #lruTime:J
    const/4 v6, 0x0

    :goto_2
    move-object v0, v4

    array-length v0, v0

    move/from16 v18, v0

    move v0, v6

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 336
    aget-object v18, v4, v6

    if-eqz v18, :cond_8

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    aget-object v19, v4, v6

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    .line 338
    .restart local v14       #time:J
    const-wide/16 v18, 0x0

    cmp-long v18, v9, v18

    if-eqz v18, :cond_7

    cmp-long v18, v14, v9

    if-gez v18, :cond_8

    .line 339
    :cond_7
    move v8, v6

    .line 340
    move-wide v9, v14

    .line 335
    .end local v14           #time:J
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldV"
    .parameter "newV"

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    #calls: Lcom/android/providers/media/MediaProvider;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;ZII)V
    invoke-static {p1, v0, p2, p3}, Lcom/android/providers/media/MediaProvider;->access$300(Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 273
    return-void
.end method
