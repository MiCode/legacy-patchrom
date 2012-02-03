.class Lcom/android/internal/telephony/gsm/stk/IconLoader;
.super Landroid/os/Handler;
.source "IconLoader.java"


# static fields
.field private static final CLUT_ENTRY_SIZE:I = 0x3

.field private static final CLUT_LOCATION_OFFSET:I = 0x4

.field private static final EVENT_READ_CLUT_DONE:I = 0x3

.field private static final EVENT_READ_EF_IMG_RECOED_DONE:I = 0x1

.field private static final EVENT_READ_ICON_DONE:I = 0x2

.field private static final STATE_MULTI_ICONS:I = 0x2

.field private static final STATE_SINGLE_ICON:I = 0x1

.field private static sLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;


# instance fields
.field private mCurrentIcon:Landroid/graphics/Bitmap;

.field private mCurrentRecordIndex:I

.field private mEndMsg:Landroid/os/Message;

.field private mIconData:[B

.field private mIcons:[Landroid/graphics/Bitmap;

.field private mIconsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Lcom/android/internal/telephony/gsm/stk/ImageDescriptor;

.field private mRecordNumber:I

.field private mRecordNumbers:[I

.field private mSimFH:Lcom/android/internal/telephony/gsm/SIMFileHandler;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->sLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/android/internal/telephony/gsm/SIMFileHandler;)V
    .locals 2
    .parameter "looper"
    .parameter "fh"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mState:I

    .line 41
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mId:Lcom/android/internal/telephony/gsm/stk/ImageDescriptor;

    .line 42
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 44
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mSimFH:Lcom/android/internal/telephony/gsm/SIMFileHandler;

    .line 45
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mEndMsg:Landroid/os/Message;

    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mIconData:[B

    .line 48
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mRecordNumbers:[I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mCurrentRecordIndex:I

    .line 50
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    .line 51
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 74
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mSimFH:Lcom/android/internal/telephony/gsm/SIMFileHandler;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 77
    return-void
.end method

.method private static bitToBnW(I)I
    .locals 1
    .parameter "bit"

    .prologue
    .line 280
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 281
    const/4 v0, -0x1

    .line 283
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x100

    goto :goto_0
.end method

.method static getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/gsm/SIMFileHandler;)Lcom/android/internal/telephony/gsm/stk/IconLoader;
    .locals 3
    .parameter "caller"
    .parameter "fh"

    .prologue
    .line 80
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/IconLoader;->sLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    if-eqz v1, :cond_0

    .line 81
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/IconLoader;->sLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    .line 88
    :goto_0
    return-object v1

    .line 83
    :cond_0
    if-eqz p1, :cond_1

    .line 84
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Stk Icon Loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 86
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/IconLoader;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/android/internal/telephony/gsm/stk/IconLoader;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/gsm/SIMFileHandler;)V

    goto :goto_0

    .line 88
    .end local v0           #thread:Landroid/os/HandlerThread;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getMask(I)I
    .locals 1
    .parameter "numOfBits"

    .prologue
    .line 342
    const/4 v0, 0x0

    .line 344
    .local v0, mask:I
    packed-switch p0, :pswitch_data_0

    .line 370
    :goto_0
    return v0

    .line 346
    :pswitch_0
    const/4 v0, 0x1

    .line 347
    goto :goto_0

    .line 349
    :pswitch_1
    const/4 v0, 0x3

    .line 350
    goto :goto_0

    .line 352
    :pswitch_2
    const/4 v0, 0x7

    .line 353
    goto :goto_0

    .line 355
    :pswitch_3
    const/16 v0, 0xf

    .line 356
    goto :goto_0

    .line 358
    :pswitch_4
    const/16 v0, 0x1f

    .line 359
    goto :goto_0

    .line 361
    :pswitch_5
    const/16 v0, 0x3f

    .line 362
    goto :goto_0

    .line 364
    :pswitch_6
    const/16 v0, 0x7f

    .line 365
    goto :goto_0

    .line 367
    :pswitch_7
    const/16 v0, 0xff

    goto :goto_0

    .line 344
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private handleImageDescriptor([B)Z
    .locals 2
    .parameter "rawData"

    .prologue
    const/4 v1, 0x1

    .line 185
    invoke-static {p1, v1}, Lcom/android/internal/telephony/gsm/stk/ImageDescriptor;->parse([BI)Lcom/android/internal/telephony/gsm/stk/ImageDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mId:Lcom/android/internal/telephony/gsm/stk/ImageDescriptor;

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mId:Lcom/android/internal/telephony/gsm/stk/ImageDescriptor;

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "data"
    .parameter "length"

    .prologue
    .line 247
    const/4 v8, 0x0

    .line 248
    .local v8, valueIndex:I
    add-int/lit8 v9, v8, 0x1

    .end local v8           #valueIndex:I
    .local v9, valueIndex:I
    aget-byte v11, p0, v8

    and-int/lit16 v10, v11, 0xff

    .line 249
    .local v10, width:I
    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v11, p0, v9

    and-int/lit16 v3, v11, 0xff

    .line 250
    .local v3, height:I
    mul-int v4, v10, v3

    .line 252
    .local v4, numOfPixels:I
    new-array v7, v4, [I

    .line 254
    .local v7, pixels:[I
    const/4 v5, 0x0

    .line 255
    .local v5, pixelIndex:I
    const/4 v0, 0x7

    .line 256
    .local v0, bitIndex:I
    const/4 v2, 0x0

    .local v2, currentByte:B
    move v6, v5

    .end local v5           #pixelIndex:I
    .local v6, pixelIndex:I
    move v9, v8

    .line 257
    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 259
    rem-int/lit8 v11, v6, 0x8

    if-nez v11, :cond_2

    .line 260
    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v2, p0, v9

    .line 261
    const/4 v0, 0x7

    .line 263
    :goto_1
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pixelIndex:I
    .restart local v5       #pixelIndex:I
    add-int/lit8 v1, v0, -0x1

    .end local v0           #bitIndex:I
    .local v1, bitIndex:I
    shr-int v11, v2, v0

    and-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->bitToBnW(I)I

    move-result v11

    aput v11, v7, v6

    move v0, v1

    .end local v1           #bitIndex:I
    .restart local v0       #bitIndex:I
    move v6, v5

    .end local v5           #pixelIndex:I
    .restart local v6       #pixelIndex:I
    move v9, v8

    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    goto :goto_0

    .line 266
    :cond_0
    if-eq v6, v4, :cond_1

    .line 267
    const-string v11, "IconLoader"

    const-string/jumbo v12, "parseToBnW; size error"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_1
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v10, v3, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    return-object v11

    :cond_2
    move v8, v9

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    goto :goto_1
.end method

.method public static parseToRGB([BIZ[B)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "data"
    .parameter "length"
    .parameter "transparency"
    .parameter "clut"

    .prologue
    .line 298
    const/16 p1, 0x0

    .line 299
    .local p1, valueIndex:I
    add-int/lit8 v4, p1, 0x1

    .end local p1           #valueIndex:I
    .local v4, valueIndex:I
    aget-byte p1, p0, p1

    move/from16 v0, p1

    and-int/lit16 v0, v0, 0xff

    move v15, v0

    .line 300
    .local v15, width:I
    add-int/lit8 p1, v4, 0x1

    .end local v4           #valueIndex:I
    .restart local p1       #valueIndex:I
    aget-byte v4, p0, v4

    and-int/lit16 v8, v4, 0xff

    .line 301
    .local v8, height:I
    add-int/lit8 v5, p1, 0x1

    .end local p1           #valueIndex:I
    .local v5, valueIndex:I
    aget-byte p1, p0, p1

    move/from16 v0, p1

    and-int/lit16 v0, v0, 0xff

    move v4, v0

    .line 302
    .local v4, bitsPerImg:I
    add-int/lit8 p1, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local p1       #valueIndex:I
    aget-byte p1, p0, v5

    .end local p1           #valueIndex:I
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0xff

    move/from16 p1, v0

    .line 304
    .local p1, numOfClutEntries:I
    const/4 v5, 0x1

    move v0, v5

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 305
    const/16 p2, 0x1

    sub-int p1, p1, p2

    const/16 p2, 0x0

    aput-byte p2, p3, p1

    .line 308
    .end local p1           #numOfClutEntries:I
    .end local p2
    :cond_0
    mul-int v10, v15, v8

    .line 309
    .local v10, numOfPixels:I
    new-array v13, v10, [I

    .line 311
    .local v13, pixels:[I
    const/16 p2, 0x6

    .line 312
    .local p2, valueIndex:I
    const/4 v7, 0x0

    .line 313
    .local v7, pixelIndex:I
    const/16 p1, 0x8

    sub-int v5, p1, v4

    .line 314
    .local v5, bitsStartOffset:I
    move/from16 p1, v5

    .line 315
    .local p1, bitIndex:I
    add-int/lit8 v11, p2, 0x1

    .end local p2           #valueIndex:I
    .local v11, valueIndex:I
    aget-byte v6, p0, p2

    .line 316
    .local v6, currentByte:B
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->getMask(I)I

    move-result v9

    .line 317
    .local v9, mask:I
    const/16 p2, 0x8

    rem-int p2, p2, v4

    if-nez p2, :cond_1

    const/16 p2, 0x1

    .local p2, bitsOverlaps:Z
    :goto_0
    move v12, v7

    .line 318
    .end local v7           #pixelIndex:I
    .local v12, pixelIndex:I
    :goto_1
    if-ge v12, v10, :cond_3

    .line 320
    if-gez p1, :cond_4

    .line 321
    add-int/lit8 v7, v11, 0x1

    .end local v11           #valueIndex:I
    .local v7, valueIndex:I
    aget-byte v6, p0, v11

    .line 322
    if-eqz p2, :cond_2

    move/from16 p1, v5

    :goto_2
    move v14, v7

    .end local v7           #valueIndex:I
    .local v14, valueIndex:I
    move v7, v6

    .line 324
    .end local v6           #currentByte:B
    .local v7, currentByte:B
    :goto_3
    shr-int v6, v7, p1

    and-int/2addr v6, v9

    .line 325
    .local v6, clutEntry:I
    mul-int/lit8 v6, v6, 0x3

    .line 326
    .local v6, clutIndex:I
    add-int/lit8 v11, v12, 0x1

    .end local v12           #pixelIndex:I
    .local v11, pixelIndex:I
    aget-byte v16, p3, v6

    add-int/lit8 v17, v6, 0x1

    aget-byte v17, p3, v17

    add-int/lit8 v6, v6, 0x2

    aget-byte v6, p3, v6

    .end local v6           #clutIndex:I
    move/from16 v0, v16

    move/from16 v1, v17

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    aput v6, v13, v12

    .line 328
    sub-int p1, p1, v4

    move v6, v7

    .end local v7           #currentByte:B
    .local v6, currentByte:B
    move v12, v11

    .end local v11           #pixelIndex:I
    .restart local v12       #pixelIndex:I
    move v11, v14

    .line 329
    .end local v14           #valueIndex:I
    .local v11, valueIndex:I
    goto :goto_1

    .line 317
    .end local v12           #pixelIndex:I
    .end local p2           #bitsOverlaps:Z
    .local v7, pixelIndex:I
    :cond_1
    const/16 p2, 0x0

    goto :goto_0

    .line 322
    .end local v11           #valueIndex:I
    .local v7, valueIndex:I
    .restart local v12       #pixelIndex:I
    .restart local p2       #bitsOverlaps:Z
    :cond_2
    mul-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 331
    .end local v7           #valueIndex:I
    .restart local v11       #valueIndex:I
    :cond_3
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local p0
    move-object v0, v13

    move v1, v15

    move v2, v8

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .restart local p0
    :cond_4
    move v7, v6

    .end local v6           #currentByte:B
    .local v7, currentByte:B
    move v14, v11

    .end local v11           #valueIndex:I
    .restart local v14       #valueIndex:I
    goto :goto_3
.end method

.method private postIcon()V
    .locals 3

    .prologue
    .line 225
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mEndMsg:Landroid/os/Message;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mCurrentRecordIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mCurrentRecordIndex:I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    .line 231
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mCurrentRecordIndex:I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mRecordNumbers:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mRecordNumbers:[I

    iget v1, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mCurrentRecordIndex:I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->startLoadingIcon(I)V

    goto :goto_0

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mEndMsg:Landroid/os/Message;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private readClut()V
    .locals 7

    .prologue
    const/4 v1, 0x3

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mIconData:[B

    aget-byte v0, v0, v1

    mul-int/lit8 v4, v0, 0x3

    .line 195
    .local v4, length:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 196
    .local v5, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mSimFH:Lcom/android/internal/telephony/gsm/SIMFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mId:Lcom/android/internal/telephony/gsm/stk/ImageDescriptor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/stk/ImageDescriptor;->imageId:I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mIconData:[B

    const/4 v3, 0x4

    aget-byte v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mIconData:[B

    const/4 v6, 0x5

    aget-byte v3, v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->loadEFImgTransparent(IIIILandroid/os/Message;)V

    .line 199
    return-void
.end method

.method private readIconData()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 216
    const-string v0, "IconLoader"

    const-string/jumbo v1, "start  readIconData"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 220
    .local v5, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mSimFH:Lcom/android/internal/telephony/gsm/SIMFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mId:Lcom/android/internal/telephony/gsm/stk/ImageDescriptor;

    iget v1, v1, Lcom/android/internal/telephony/gsm/stk/ImageDescriptor;->imageId:I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mId:Lcom/android/internal/telephony/gsm/stk/ImageDescriptor;

    iget v4, v3, Lcom/android/internal/telephony/gsm/stk/ImageDescriptor;->length:I

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->loadEFImgTransparentSTK(IIIILandroid/os/Message;)V

    .line 221
    return-void
.end method

.method private readId()V
    .locals 3

    .prologue
    .line 203
    iget v1, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mRecordNumber:I

    if-gez v1, :cond_0

    .line 204
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 205
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->postIcon()V

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 210
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mSimFH:Lcom/android/internal/telephony/gsm/SIMFileHandler;

    iget v2, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mRecordNumber:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->loadEFImgLinearFixedSTK(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private startLoadingIcon(I)V
    .locals 2
    .parameter "recordNumber"

    .prologue
    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mId:Lcom/android/internal/telephony/gsm/stk/ImageDescriptor;

    .line 116
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mIconData:[B

    .line 117
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 118
    iput p1, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mRecordNumber:I

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mIconsCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mIconsCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 123
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->postIcon()V

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->readId()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const-string v5, "IconLoader"

    .line 136
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 138
    :pswitch_0
    const-string v5, "IconLoader"

    const-string v6, "EVENT_READ_EF_IMG_RECOED_DONE : "

    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 141
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    check-cast v5, [B

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->handleImageDescriptor([B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->readIconData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    .end local v1           #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 171
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "Icon load failed"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->postIcon()V

    goto :goto_0

    .line 144
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #ar:Landroid/os/AsyncResult;
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Unable to parse image descriptor"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 148
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    const-string v5, "IconLoader"

    const-string v6, "EVENT_READ_ICON_DONE : "

    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 151
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v4, v0

    .line 152
    .local v4, rawData:[B
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mId:Lcom/android/internal/telephony/gsm/stk/ImageDescriptor;

    iget v5, v5, Lcom/android/internal/telephony/gsm/stk/ImageDescriptor;->codingScheme:I

    const/16 v6, 0x11

    if-ne v5, v6, :cond_2

    .line 153
    array-length v5, v4

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->parseToBnW([BI)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 154
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mIconsCache:Ljava/util/HashMap;

    iget v6, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mRecordNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->postIcon()V

    goto :goto_0

    .line 156
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mId:Lcom/android/internal/telephony/gsm/stk/ImageDescriptor;

    iget v5, v5, Lcom/android/internal/telephony/gsm/stk/ImageDescriptor;->codingScheme:I

    const/16 v6, 0x21

    if-ne v5, v6, :cond_0

    .line 157
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mIconData:[B

    .line 158
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->readClut()V

    goto :goto_0

    .line 162
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v4           #rawData:[B
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 163
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0

    .line 164
    .local v2, clut:[B
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mIconData:[B

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mIconData:[B

    array-length v6, v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7, v2}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->parseToRGB([BIZ[B)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 166
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mIconsCache:Ljava/util/HashMap;

    iget v6, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mRecordNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->postIcon()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method loadIcon(ILandroid/os/Message;)V
    .locals 1
    .parameter "recordNumber"
    .parameter "msg"

    .prologue
    .line 105
    if-nez p2, :cond_0

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mEndMsg:Landroid/os/Message;

    .line 109
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mState:I

    .line 110
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->startLoadingIcon(I)V

    goto :goto_0
.end method

.method loadIcons([ILandroid/os/Message;)V
    .locals 2
    .parameter "recordNumbers"
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 92
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mEndMsg:Landroid/os/Message;

    .line 97
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mRecordNumbers:[I

    .line 99
    iput v1, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mCurrentRecordIndex:I

    .line 100
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/IconLoader;->mState:I

    .line 101
    aget v0, p1, v1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->startLoadingIcon(I)V

    goto :goto_0
.end method
