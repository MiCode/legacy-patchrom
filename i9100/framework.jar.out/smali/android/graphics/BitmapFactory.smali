.class public Landroid/graphics/BitmapFactory;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BitmapFactory$Options;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BitMapFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 521
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "opts"

    .prologue
    .line 505
    or-int v0, p1, p2

    if-ltz v0, :cond_0

    array-length v0, p0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_1

    .line 506
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 508
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapFactory;->nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "pathName"

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "pathName"
    .parameter "opts"

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, bm:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 362
    .local v4, stream:Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 364
    .end local v4           #stream:Ljava/io/InputStream;
    .local v5, stream:Ljava/io/InputStream;
    if-eqz p0, :cond_2

    .line 365
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 366
    .local v2, length:I
    const/4 v7, 0x3

    sub-int v7, v2, v7

    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 367
    .local v6, temp:Ljava/lang/String;
    if-eqz v6, :cond_2

    const-string v7, "dcf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result v7

    if-eqz v7, :cond_2

    .line 369
    :try_start_2
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v3

    .line 371
    .local v3, manager:Landroid/drm/mobile2/OMADRMManager;
    if-eqz v3, :cond_2

    invoke-virtual {v3, p0}, Landroid/drm/mobile2/OMADRMManager;->IsDrmFileByExt(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 372
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->processDigitalRights(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v4

    .line 373
    .end local v5           #stream:Ljava/io/InputStream;
    .restart local v4       #stream:Ljava/io/InputStream;
    :try_start_3
    const-string v7, "BitMapFactory"

    const-string v8, "BitmapFactory: processDigitalRights done!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 384
    .end local v2           #length:I
    .end local v3           #manager:Landroid/drm/mobile2/OMADRMManager;
    .end local v6           #temp:Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    :try_start_4
    invoke-static {v4, v7, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    .line 392
    if-eqz v4, :cond_0

    .line 394
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 401
    :cond_0
    :goto_1
    return-object v0

    .line 375
    .end local v4           #stream:Ljava/io/InputStream;
    .restart local v2       #length:I
    .restart local v5       #stream:Ljava/io/InputStream;
    .restart local v6       #temp:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    move-object v4, v5

    .line 376
    .end local v5           #stream:Ljava/io/InputStream;
    .local v1, e:Landroid/drm/mobile2/OMADRMException;
    .restart local v4       #stream:Ljava/io/InputStream;
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 386
    .end local v1           #e:Landroid/drm/mobile2/OMADRMException;
    .end local v2           #length:I
    .end local v6           #temp:Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 387
    .local v1, e:Ljava/lang/Exception;
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 392
    if-eqz v4, :cond_0

    .line 394
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    .line 395
    :catch_2
    move-exception v1

    .line 396
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 377
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #stream:Ljava/io/InputStream;
    .restart local v2       #length:I
    .restart local v5       #stream:Ljava/io/InputStream;
    .restart local v6       #temp:Ljava/lang/String;
    :catch_3
    move-exception v7

    move-object v1, v7

    move-object v4, v5

    .line 378
    .end local v5           #stream:Ljava/io/InputStream;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v4       #stream:Ljava/io/InputStream;
    :goto_4
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_0

    .line 392
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v2           #length:I
    .end local v6           #temp:Ljava/lang/String;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v4, :cond_1

    .line 394
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 398
    :cond_1
    :goto_6
    throw v7

    .line 395
    :catch_4
    move-exception v1

    .line 396
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 395
    .end local v1           #e:Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 396
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 392
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #stream:Ljava/io/InputStream;
    .restart local v5       #stream:Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #stream:Ljava/io/InputStream;
    .restart local v4       #stream:Ljava/io/InputStream;
    goto :goto_5

    .line 386
    .end local v4           #stream:Ljava/io/InputStream;
    .restart local v5       #stream:Ljava/io/InputStream;
    :catch_6
    move-exception v7

    move-object v1, v7

    move-object v4, v5

    .end local v5           #stream:Ljava/io/InputStream;
    .restart local v4       #stream:Ljava/io/InputStream;
    goto :goto_3

    .line 377
    .restart local v2       #length:I
    .restart local v3       #manager:Landroid/drm/mobile2/OMADRMManager;
    .restart local v6       #temp:Ljava/lang/String;
    :catch_7
    move-exception v7

    move-object v1, v7

    goto :goto_4

    .line 375
    :catch_8
    move-exception v7

    move-object v1, v7

    goto :goto_2

    .end local v2           #length:I
    .end local v3           #manager:Landroid/drm/mobile2/OMADRMManager;
    .end local v4           #stream:Ljava/io/InputStream;
    .end local v6           #temp:Ljava/lang/String;
    .restart local v5       #stream:Ljava/io/InputStream;
    :cond_2
    move-object v4, v5

    .end local v5           #stream:Ljava/io/InputStream;
    .restart local v4       #stream:Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "fd"

    .prologue
    const/4 v0, 0x0

    .line 671
    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "fd"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    .line 647
    :try_start_0
    invoke-static {p0}, Landroid/os/MemoryFile;->isMemoryFile(Ljava/io/FileDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 648
    invoke-static {p0}, Landroid/os/MemoryFile;->getSize(Ljava/io/FileDescriptor;)I

    move-result v4

    .line 649
    .local v4, mappedlength:I
    new-instance v2, Landroid/os/MemoryFile;

    const-string/jumbo v5, "r"

    invoke-direct {v2, p0, v4, v5}, Landroid/os/MemoryFile;-><init>(Ljava/io/FileDescriptor;ILjava/lang/String;)V

    .line 650
    .local v2, file:Landroid/os/MemoryFile;
    invoke-virtual {v2}, Landroid/os/MemoryFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 651
    .local v3, is:Ljava/io/InputStream;
    invoke-static {v3, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 652
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 659
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #file:Landroid/os/MemoryFile;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #mappedlength:I
    :goto_0
    return-object v5

    .line 654
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 656
    .local v1, ex:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0

    .line 658
    .end local v1           #ex:Ljava/io/IOException;
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 659
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "res"
    .parameter "id"

    .prologue
    .line 488
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "res"
    .parameter "id"
    .parameter "opts"

    .prologue
    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, bm:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 459
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 460
    .local v2, value:Landroid/util/TypedValue;
    invoke-virtual {p0, p1, v2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 462
    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, p2}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 470
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 476
    .end local v2           #value:Landroid/util/TypedValue;
    :cond_0
    :goto_0
    return-object v0

    .line 463
    :catch_0
    move-exception v3

    .line 470
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 471
    :catch_1
    move-exception v3

    goto :goto_0

    .line 469
    :catchall_0
    move-exception v3

    .line 470
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 473
    :cond_1
    :goto_1
    throw v3

    .line 471
    .restart local v2       #value:Landroid/util/TypedValue;
    :catch_2
    move-exception v3

    goto :goto_0

    .end local v2           #value:Landroid/util/TypedValue;
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method public static decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "res"
    .parameter "value"
    .parameter "is"
    .parameter "pad"
    .parameter "opts"

    .prologue
    .line 422
    if-nez p4, :cond_0

    .line 423
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 426
    .restart local p4
    :cond_0
    iget v1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 427
    iget v0, p1, Landroid/util/TypedValue;->density:I

    .line 428
    .local v0, density:I
    if-nez v0, :cond_3

    .line 429
    const/16 v1, 0xa0

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 435
    .end local v0           #density:I
    :cond_1
    :goto_0
    iget v1, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-nez v1, :cond_2

    if-eqz p0, :cond_2

    .line 436
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 439
    :cond_2
    invoke-static {p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 430
    .restart local v0       #density:I
    :cond_3
    const v1, 0xffff

    if-eq v0, v1, :cond_1

    .line 431
    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_0
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "is"

    .prologue
    const/4 v0, 0x0

    .line 628
    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "is"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    const/16 v4, 0x4000

    .line 545
    if-nez p0, :cond_0

    .line 546
    const/4 v3, 0x0

    .line 576
    .end local p0
    :goto_0
    return-object v3

    .line 551
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-nez v3, :cond_1

    .line 552
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p0
    .local v1, is:Ljava/io/InputStream;
    move-object p0, v1

    .line 558
    .end local v1           #is:Ljava/io/InputStream;
    .restart local p0
    :cond_1
    const/16 v3, 0x400

    invoke-virtual {p0, v3}, Ljava/io/InputStream;->mark(I)V

    .line 562
    instance-of v3, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v3, :cond_2

    .line 563
    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    .end local p0
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getAssetInt()I

    move-result v3

    invoke-static {v3, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 576
    .local v0, bm:Landroid/graphics/Bitmap;
    :goto_1
    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 570
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .restart local p0
    :cond_2
    const/4 v2, 0x0

    .line 571
    .local v2, tempStorage:[B
    if-eqz p2, :cond_3

    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 572
    :cond_3
    if-nez v2, :cond_4

    new-array v2, v4, [B

    .line 573
    :cond_4
    invoke-static {p0, v2, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #bm:Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method private static finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bm"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x3f00

    .line 580
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-object p0

    .line 584
    :cond_1
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 585
    .local v0, density:I
    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 590
    iget v5, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 591
    .local v5, targetDensity:I
    if-eqz v5, :cond_0

    if-eq v0, v5, :cond_0

    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    if-eq v0, v6, :cond_0

    .line 595
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    .line 596
    .local v2, np:[B
    if-eqz v2, :cond_4

    invoke-static {v2}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v6

    if-eqz v6, :cond_4

    move v1, v9

    .line 597
    .local v1, isNinePatch:Z
    :goto_1
    iget-boolean v6, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-nez v6, :cond_2

    if-eqz v1, :cond_0

    .line 598
    :cond_2
    int-to-float v6, v5

    int-to-float v7, v0

    div-float v4, v6, v7

    .line 600
    .local v4, scale:F
    move-object v3, p0

    .line 601
    .local v3, oldBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    add-float/2addr v6, v8

    float-to-int v6, v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v3, v6, v7, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 603
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 605
    if-eqz v1, :cond_3

    .line 606
    invoke-static {v2, v4, p1}, Landroid/graphics/BitmapFactory;->nativeScaleNinePatch([BFLandroid/graphics/Rect;)[B

    move-result-object v2

    .line 607
    invoke-virtual {p0, v2}, Landroid/graphics/Bitmap;->setNinePatchChunk([B)V

    .line 609
    :cond_3
    invoke-virtual {p0, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0

    .line 596
    .end local v1           #isNinePatch:Z
    .end local v3           #oldBitmap:Landroid/graphics/Bitmap;
    .end local v4           #scale:F
    :cond_4
    const/4 v6, 0x0

    move v1, v6

    goto :goto_1
.end method

.method private static native nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeScaleNinePatch([BFLandroid/graphics/Rect;)[B
.end method

.method private static native nativeSetDefaultConfig(I)V
.end method

.method private static processDigitalRights(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/InputStream;
    .locals 10
    .parameter "pathName"
    .parameter "opt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const-string v9, "BitmapFactory"

    const-string v7, "BitMapFactory"

    .line 307
    const/4 v5, 0x0

    .line 308
    .local v5, outputBuff:[B
    const/4 v0, 0x0

    .line 310
    .local v0, decryptedDataStream:Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v4

    .line 311
    .local v4, manager:Landroid/drm/mobile2/OMADRMManager;
    if-eqz v4, :cond_4

    .line 312
    const/4 v7, 0x2

    invoke-virtual {v4, p0, v7}, Landroid/drm/mobile2/OMADRMManager;->hasValidRights(Ljava/lang/String;I)I

    move-result v3

    .line 313
    .local v3, isValidRights:I
    if-nez v3, :cond_3

    .line 315
    const/4 v7, 0x2

    invoke-virtual {v4, p0, v7}, Landroid/drm/mobile2/OMADRMManager;->getDecryptedContent(Ljava/lang/String;I)[B

    move-result-object v5

    .line 316
    if-eqz v5, :cond_0

    .line 317
    const-string v7, "BitMapFactory"

    const-string v8, "Decrypt content successful!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .end local v0           #decryptedDataStream:Ljava/io/InputStream;
    .local v1, decryptedDataStream:Ljava/io/InputStream;
    move-object v0, v1

    .line 322
    .end local v1           #decryptedDataStream:Ljava/io/InputStream;
    .restart local v0       #decryptedDataStream:Ljava/io/InputStream;
    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v7, p1, Landroid/graphics/BitmapFactory$Options;->isPreview:Z

    if-nez v7, :cond_2

    .line 323
    const/4 v7, 0x2

    invoke-virtual {v4, p0, v7}, Landroid/drm/mobile2/OMADRMManager;->consumeDrmRights(Ljava/lang/String;I)I

    move-result v6

    .line 324
    .local v6, ret_result:I
    if-nez v6, :cond_1

    .line 325
    const-string v7, "BitMapFactory"

    const-string v8, "consume  content successful!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .end local v3           #isValidRights:I
    .end local v4           #manager:Landroid/drm/mobile2/OMADRMManager;
    .end local v6           #ret_result:I
    :goto_0
    return-object v0

    .line 327
    .restart local v3       #isValidRights:I
    .restart local v4       #manager:Landroid/drm/mobile2/OMADRMManager;
    .restart local v6       #ret_result:I
    :cond_1
    const/4 v0, 0x0

    .line 328
    const-string v7, "BitMapFactory"

    const-string v8, "consume  content not successful!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 339
    .end local v3           #isValidRights:I
    .end local v4           #manager:Landroid/drm/mobile2/OMADRMManager;
    .end local v6           #ret_result:I
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 340
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v7, "BitmapFactory"

    const-string v7, "IllegalArgumentException "

    invoke-static {v9, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 331
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #isValidRights:I
    .restart local v4       #manager:Landroid/drm/mobile2/OMADRMManager;
    :cond_2
    :try_start_1
    const-string v7, "BitMapFactory"

    const-string v8, "It is for Preview so no need to consume rights"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 341
    .end local v3           #isValidRights:I
    .end local v4           #manager:Landroid/drm/mobile2/OMADRMManager;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 342
    .local v2, e:Ljava/io/IOException;
    const-string v7, "BitmapFactory"

    const-string v7, " IO exception"

    invoke-static {v9, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 334
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #isValidRights:I
    .restart local v4       #manager:Landroid/drm/mobile2/OMADRMManager;
    :cond_3
    :try_start_2
    const-string v7, "BitMapFactory"

    const-string v8, "hasValidRights is not successful!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 337
    .end local v3           #isValidRights:I
    :cond_4
    const-string v7, "BitMapFactory"

    const-string v8, "OmadrmManager Instance is NULL"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public static setDefaultConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 689
    if-nez p0, :cond_0

    .line 692
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 694
    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->nativeSetDefaultConfig(I)V

    .line 695
    return-void
.end method
