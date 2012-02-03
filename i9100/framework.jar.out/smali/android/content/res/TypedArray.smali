.class public Landroid/content/res/TypedArray;
.super Ljava/lang/Object;
.source "TypedArray.java"


# static fields
.field private static final DEBUG_THEME:Z = false

.field private static final TAG:Ljava/lang/String; = "TypedArray"


# instance fields
.field mData:[I

.field mIndices:[I

.field mLength:I

.field private final mResources:Landroid/content/res/Resources;

.field mRsrcs:[I

.field private mValue:Landroid/util/TypedValue;

.field mXml:Landroid/content/res/XmlBlock$Parser;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;[I[II)V
    .locals 1
    .parameter "resources"
    .parameter "data"
    .parameter "indices"
    .parameter "len"

    .prologue
    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 783
    iput-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    .line 784
    iput-object p2, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 785
    iput-object p3, p0, Landroid/content/res/TypedArray;->mIndices:[I

    .line 786
    iput p4, p0, Landroid/content/res/TypedArray;->mLength:I

    .line 787
    return-void
.end method

.method private getValueAt(ILandroid/util/TypedValue;)Z
    .locals 3
    .parameter "index"
    .parameter "outValue"

    .prologue
    .line 752
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 753
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 754
    .local v1, type:I
    if-nez v1, :cond_0

    .line 755
    const/4 v2, 0x0

    .line 764
    :goto_0
    return v2

    .line 757
    :cond_0
    iput v1, p2, Landroid/util/TypedValue;->type:I

    .line 758
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->data:I

    .line 759
    add-int/lit8 v2, p1, 0x2

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 760
    add-int/lit8 v2, p1, 0x3

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 761
    add-int/lit8 v2, p1, 0x4

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->changingConfigurations:I

    .line 762
    add-int/lit8 v2, p1, 0x5

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->density:I

    .line 763
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_1
    iput-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 764
    const/4 v2, 0x1

    goto :goto_0

    .line 763
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private loadStringValueAt(I)Ljava/lang/CharSequence;
    .locals 4
    .parameter "index"

    .prologue
    .line 768
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 769
    .local v1, data:[I
    add-int/lit8 v2, p1, 0x2

    aget v0, v1, v2

    .line 770
    .local v0, cookie:I
    if-gez v0, :cond_1

    .line 771
    iget-object v2, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v2, :cond_0

    .line 772
    iget-object v2, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 778
    :goto_0
    return-object v2

    .line 775
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 778
    :cond_1
    iget-object v2, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v2, v2, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/AssetManager;->getPooledString(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getBoolean(IZ)Z
    .locals 6
    .parameter "index"
    .parameter "defValue"

    .prologue
    const-string v5, "Resources"

    .line 216
    mul-int/lit8 p1, p1, 0x6

    .line 217
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 218
    .local v0, data:[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 219
    .local v1, type:I
    if-nez v1, :cond_0

    move v3, p2

    .line 234
    :goto_0
    return v3

    .line 221
    :cond_0
    const/16 v3, 0x10

    if-lt v1, v3, :cond_2

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_2

    .line 223
    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 226
    :cond_2
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 227
    .local v2, v:Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 228
    const-string v3, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Converting to boolean: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v3

    goto :goto_0

    .line 232
    :cond_3
    const-string v3, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBoolean of bad type: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, p2

    .line 234
    goto :goto_0
.end method

.method public getColor(II)I
    .locals 9
    .parameter "index"
    .parameter "defValue"

    .prologue
    .line 325
    mul-int/lit8 p1, p1, 0x6

    .line 326
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 327
    .local v1, data:[I
    add-int/lit8 v6, p1, 0x0

    aget v3, v1, v6

    .line 328
    .local v3, type:I
    if-nez v3, :cond_0

    move v6, p2

    .line 352
    :goto_0
    return v6

    .line 330
    :cond_0
    const/16 v6, 0x10

    if-lt v3, v6, :cond_2

    const/16 v6, 0x1f

    if-gt v3, v6, :cond_2

    .line 336
    add-int/lit8 v6, p1, 0x1

    aget v5, v1, v6

    .line 337
    .local v5, value:I
    add-int/lit8 v6, p1, 0x3

    aget v2, v1, v6

    .line 339
    .local v2, resId:I
    iget-object v6, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getColorFromColorCache(I)Ljava/lang/Integer;

    move-result-object v4

    .line 340
    .local v4, v:Ljava/lang/Integer;
    if-eqz v4, :cond_1

    .line 341
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_0

    :cond_1
    move v6, v5

    .line 343
    goto :goto_0

    .line 345
    .end local v2           #resId:I
    .end local v4           #v:Ljava/lang/Integer;
    .end local v5           #value:I
    :cond_2
    const/4 v6, 0x3

    if-ne v3, v6, :cond_4

    .line 346
    iget-object v5, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 347
    .local v5, value:Landroid/util/TypedValue;
    invoke-direct {p0, p1, v5}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 348
    iget-object v6, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v5, v7}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 350
    .local v0, csl:Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    goto :goto_0

    .end local v0           #csl:Landroid/content/res/ColorStateList;
    :cond_3
    move v6, p2

    .line 352
    goto :goto_0

    .line 355
    .end local v5           #value:Landroid/util/TypedValue;
    :cond_4
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t convert to color: type=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 5
    .parameter "index"

    .prologue
    .line 369
    iget-object v1, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 370
    .local v1, value:Landroid/util/TypedValue;
    mul-int/lit8 v2, p1, 0x6

    invoke-direct {p0, v2, v1}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 372
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_1

    .line 382
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 384
    :goto_1
    return-object v2

    .line 376
    :cond_1
    iget-object v2, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorFromColorCache(I)Ljava/lang/Integer;

    move-result-object v0

    .line 377
    .local v0, v:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    iget-object v2, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    goto :goto_0

    .line 384
    .end local v0           #v:Ljava/lang/Integer;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getDimension(IF)F
    .locals 5
    .parameter "index"
    .parameter "defValue"

    .prologue
    .line 440
    mul-int/lit8 p1, p1, 0x6

    .line 441
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 442
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 443
    .local v1, type:I
    if-nez v1, :cond_0

    move v2, p2

    .line 446
    :goto_0
    return v2

    .line 445
    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 446
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v3, v3, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v2

    goto :goto_0

    .line 450
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convert to dimension: type=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDimensionPixelOffset(II)I
    .locals 5
    .parameter "index"
    .parameter "defValue"

    .prologue
    .line 472
    mul-int/lit8 p1, p1, 0x6

    .line 473
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 474
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 475
    .local v1, type:I
    if-nez v1, :cond_0

    move v2, p2

    .line 478
    :goto_0
    return v2

    .line 477
    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 478
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v3, v3, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result v2

    goto :goto_0

    .line 482
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convert to dimension: type=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDimensionPixelSize(II)I
    .locals 5
    .parameter "index"
    .parameter "defValue"

    .prologue
    .line 505
    mul-int/lit8 p1, p1, 0x6

    .line 506
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 507
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 508
    .local v1, type:I
    if-nez v1, :cond_0

    move v2, p2

    .line 511
    :goto_0
    return v2

    .line 510
    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 511
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v3, v3, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    goto :goto_0

    .line 515
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convert to dimension: type=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "index"

    .prologue
    .line 642
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 643
    .local v0, value:Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 653
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 655
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFloat(IF)F
    .locals 7
    .parameter "index"
    .parameter "defValue"

    .prologue
    const-string v6, "Resources"

    .line 287
    mul-int/lit8 p1, p1, 0x6

    .line 288
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 289
    .local v0, data:[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v0, v4

    .line 290
    .local v2, type:I
    if-nez v2, :cond_0

    move v4, p2

    .line 309
    :goto_0
    return v4

    .line 292
    :cond_0
    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    .line 293
    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    goto :goto_0

    .line 294
    :cond_1
    const/16 v4, 0x10

    if-lt v2, v4, :cond_2

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_2

    .line 296
    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    int-to-float v4, v4

    goto :goto_0

    .line 299
    :cond_2
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 300
    .local v3, v:Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 301
    const-string v4, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Converting to float: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    .line 303
    .local v1, str:Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    .line 304
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    goto :goto_0

    .line 307
    .end local v1           #str:Ljava/lang/CharSequence;
    :cond_3
    const-string v4, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFloat of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, p2

    .line 309
    goto :goto_0
.end method

.method public getFraction(IIIF)F
    .locals 5
    .parameter "index"
    .parameter "base"
    .parameter "pbase"
    .parameter "defValue"

    .prologue
    .line 591
    mul-int/lit8 p1, p1, 0x6

    .line 592
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 593
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 594
    .local v1, type:I
    if-nez v1, :cond_0

    move v2, p4

    .line 597
    :goto_0
    return v2

    .line 596
    :cond_0
    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 597
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v2

    goto :goto_0

    .line 601
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convert to fraction: type=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getIndex(I)I
    .locals 2
    .parameter "at"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getIndexCount()I
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getInt(II)I
    .locals 8
    .parameter "index"
    .parameter "defValue"

    .prologue
    const-string v7, "Resources"

    .line 246
    mul-int/lit8 p1, p1, 0x6

    .line 247
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 248
    .local v0, data:[I
    add-int/lit8 v5, p1, 0x0

    aget v2, v0, v5

    .line 249
    .local v2, type:I
    if-nez v2, :cond_0

    move v5, p2

    .line 276
    :goto_0
    return v5

    .line 251
    :cond_0
    const/16 v5, 0x10

    if-lt v2, v5, :cond_2

    const/16 v5, 0x1f

    if-gt v2, v5, :cond_2

    .line 257
    add-int/lit8 v5, p1, 0x1

    aget v4, v0, v5

    .line 258
    .local v4, value:I
    add-int/lit8 v5, p1, 0x3

    aget v1, v0, v5

    .line 260
    .local v1, resId:I
    iget-object v5, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColorFromColorCache(I)Ljava/lang/Integer;

    move-result-object v3

    .line 261
    .local v3, v:Ljava/lang/Integer;
    if-eqz v3, :cond_1

    .line 262
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v4

    .line 264
    goto :goto_0

    .line 268
    .end local v1           #resId:I
    .end local v3           #v:Ljava/lang/Integer;
    .end local v4           #value:I
    :cond_2
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 269
    .local v3, v:Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 270
    const-string v5, "Resources"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Converting to int: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v5

    goto :goto_0

    .line 274
    :cond_3
    const-string v5, "Resources"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getInt of bad type: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, p2

    .line 276
    goto :goto_0
.end method

.method public getInteger(II)I
    .locals 8
    .parameter "index"
    .parameter "defValue"

    .prologue
    .line 397
    mul-int/lit8 p1, p1, 0x6

    .line 398
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 399
    .local v0, data:[I
    add-int/lit8 v5, p1, 0x0

    aget v2, v0, v5

    .line 400
    .local v2, type:I
    if-nez v2, :cond_0

    move v5, p2

    .line 415
    :goto_0
    return v5

    .line 402
    :cond_0
    const/16 v5, 0x10

    if-lt v2, v5, :cond_2

    const/16 v5, 0x1f

    if-gt v2, v5, :cond_2

    .line 408
    add-int/lit8 v5, p1, 0x1

    aget v4, v0, v5

    .line 409
    .local v4, value:I
    add-int/lit8 v5, p1, 0x3

    aget v1, v0, v5

    .line 411
    .local v1, resId:I
    iget-object v5, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColorFromColorCache(I)Ljava/lang/Integer;

    move-result-object v3

    .line 412
    .local v3, v:Ljava/lang/Integer;
    if-eqz v3, :cond_1

    .line 413
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v4

    .line 415
    goto :goto_0

    .line 419
    .end local v1           #resId:I
    .end local v3           #v:Ljava/lang/Integer;
    .end local v4           #value:I
    :cond_2
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t convert to integer: type=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getLayoutDimension(II)I
    .locals 4
    .parameter "index"
    .parameter "defValue"

    .prologue
    .line 561
    mul-int/lit8 p1, p1, 0x6

    .line 562
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 563
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 564
    .local v1, type:I
    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 566
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    .line 572
    :goto_0
    return v2

    .line 567
    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 568
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v3, v3, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, p2

    .line 572
    goto :goto_0
.end method

.method public getLayoutDimension(ILjava/lang/String;)I
    .locals 5
    .parameter "index"
    .parameter "name"

    .prologue
    .line 532
    mul-int/lit8 p1, p1, 0x6

    .line 533
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 534
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 535
    .local v1, type:I
    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 537
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    .line 539
    :goto_0
    return v2

    .line 538
    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 539
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v3, v3, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    goto :goto_0

    .line 543
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": You must supply a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " attribute."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getNonConfigurationString(II)Ljava/lang/String;
    .locals 8
    .parameter "index"
    .parameter "allowedChangingConfigs"

    .prologue
    const/4 v6, 0x0

    const-string v7, "Resources"

    .line 184
    mul-int/lit8 p1, p1, 0x6

    .line 185
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 186
    .local v1, data:[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    .line 187
    .local v2, type:I
    add-int/lit8 v4, p1, 0x4

    aget v4, v1, v4

    xor-int/lit8 v5, p2, -0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    move-object v4, v6

    .line 204
    :goto_0
    return-object v4

    .line 190
    :cond_0
    if-nez v2, :cond_1

    move-object v4, v6

    .line 191
    goto :goto_0

    .line 192
    :cond_1
    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    .line 193
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 196
    :cond_2
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 197
    .local v3, v:Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 198
    const-string v4, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Converting to string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 200
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    move-object v4, v6

    goto :goto_0

    .line 202
    .end local v0           #cs:Ljava/lang/CharSequence;
    :cond_4
    const-string v4, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getString of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 204
    goto :goto_0
.end method

.method public getNonResourceString(I)Ljava/lang/String;
    .locals 5
    .parameter "index"

    .prologue
    .line 158
    mul-int/lit8 p1, p1, 0x6

    .line 159
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 160
    .local v1, data:[I
    add-int/lit8 v3, p1, 0x0

    aget v2, v1, v3

    .line 161
    .local v2, type:I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 162
    add-int/lit8 v3, p1, 0x2

    aget v0, v1, v3

    .line 163
    .local v0, cookie:I
    if-gez v0, :cond_0

    .line 164
    iget-object v3, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    .end local v0           #cookie:I
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    invoke-virtual {v0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<internal>"

    goto :goto_0
.end method

.method public getResourceId(II)I
    .locals 3
    .parameter "index"
    .parameter "defValue"

    .prologue
    .line 620
    mul-int/lit8 p1, p1, 0x6

    .line 621
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 622
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v0, v2

    if-eqz v2, :cond_0

    .line 623
    add-int/lit8 v2, p1, 0x3

    aget v1, v0, v2

    .line 624
    .local v1, resid:I
    if-eqz v1, :cond_0

    move v2, v1

    .line 628
    .end local v1           #resid:I
    :goto_0
    return v2

    :cond_0
    move v2, p2

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 8
    .parameter "index"

    .prologue
    const/4 v6, 0x0

    const-string v7, "Resources"

    .line 123
    mul-int/lit8 p1, p1, 0x6

    .line 124
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 125
    .local v1, data:[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    .line 126
    .local v2, type:I
    if-nez v2, :cond_0

    move-object v4, v6

    .line 140
    :goto_0
    return-object v4

    .line 128
    :cond_0
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 129
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 132
    :cond_1
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 133
    .local v3, v:Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 134
    const-string v4, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Converting to string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 136
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v6

    goto :goto_0

    .line 138
    .end local v0           #cs:Ljava/lang/CharSequence;
    :cond_3
    const-string v4, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getString of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 140
    goto :goto_0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 7
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    const-string v6, "Resources"

    .line 95
    mul-int/lit8 p1, p1, 0x6

    .line 96
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 97
    .local v0, data:[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 98
    .local v1, type:I
    if-nez v1, :cond_0

    move-object v3, v5

    .line 111
    :goto_0
    return-object v3

    .line 100
    :cond_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 101
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    .line 104
    :cond_1
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 105
    .local v2, v:Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    const-string v3, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Converting to string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    .line 109
    :cond_2
    const-string v3, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getString of bad type: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 111
    goto :goto_0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 3
    .parameter "index"

    .prologue
    .line 669
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 670
    .local v0, value:Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 682
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValue(ILandroid/util/TypedValue;)Z
    .locals 1
    .parameter "index"
    .parameter "outValue"

    .prologue
    .line 695
    mul-int/lit8 v0, p1, 0x6

    invoke-direct {p0, v0, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v0

    return v0
.end method

.method public hasValue(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 706
    mul-int/lit8 p1, p1, 0x6

    .line 707
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 708
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 709
    .local v1, type:I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Landroid/content/res/TypedArray;->mLength:I

    return v0
.end method

.method public peekValue(I)Landroid/util/TypedValue;
    .locals 2
    .parameter "index"

    .prologue
    .line 724
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 725
    .local v0, value:Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 728
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 4

    .prologue
    .line 742
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v1, v1, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v1

    .line 743
    :try_start_0
    iget-object v2, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v0, v2, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 744
    .local v0, cached:Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/res/TypedArray;->mData:[I

    array-length v2, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mData:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 745
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 746
    iget-object v2, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iput-object p0, v2, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 748
    :cond_1
    monitor-exit v1

    .line 749
    return-void

    .line 748
    .end local v0           #cached:Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
