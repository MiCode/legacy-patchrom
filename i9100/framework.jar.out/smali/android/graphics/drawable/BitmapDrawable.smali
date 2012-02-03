.class public Landroid/graphics/drawable/BitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/BitmapDrawable$1;,
        Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    }
.end annotation


# static fields
.field private static final DEFAULT_PAINT_FLAGS:I = 0x6


# instance fields
.field private mApplyGravity:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

.field private mBitmapWidth:I

.field private final mDstRect:Landroid/graphics/Rect;

.field private mMutated:Z

.field private mRebuildShader:Z

.field private mTargetDensity:I


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 84
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .parameter "res"

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 92
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    .line 93
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    iput v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "res"
    .parameter "bitmap"

    .prologue
    .line 111
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    .line 112
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    iput v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V
    .locals 3
    .parameter "res"
    .parameter "is"

    .prologue
    .line 156
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    .line 157
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    iput v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    .line 158
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 159
    const-string v0, "BitmapDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BitmapDrawable cannot decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 3
    .parameter "res"
    .parameter "filepath"

    .prologue
    .line 132
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    .line 133
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    iput v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    .line 134
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 135
    const-string v0, "BitmapDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BitmapDrawable cannot decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 103
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    .line 104
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V
    .locals 1
    .parameter "state"
    .parameter "res"

    .prologue
    .line 473
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 474
    iput-object p1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    .line 475
    if-eqz p2, :cond_0

    .line 476
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    .line 482
    :goto_0
    iget-object v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 483
    return-void

    .line 477
    :cond_0
    if-eqz p1, :cond_1

    .line 478
    iget v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    goto :goto_0

    .line 480
    :cond_1
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .parameter "is"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 146
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    .line 147
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 148
    const-string v0, "BitmapDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BitmapDrawable cannot decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "filepath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    .line 123
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 124
    const-string v0, "BitmapDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BitmapDrawable cannot decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    return-void
.end method

.method private computeBitmapSize()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapWidth:I

    .line 173
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapHeight:I

    .line 174
    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 177
    iput-object p1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 178
    if-eqz p1, :cond_0

    .line 179
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->computeBitmapSize()V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapHeight:I

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapWidth:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 299
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 300
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 301
    iget-object v3, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    .line 302
    .local v3, state:Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    iget-boolean v6, p0, Landroid/graphics/drawable/BitmapDrawable;->mRebuildShader:Z

    if-eqz v6, :cond_0

    .line 303
    iget-object v4, v3, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 304
    .local v4, tmx:Landroid/graphics/Shader$TileMode;
    iget-object v5, v3, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 306
    .local v5, tmy:Landroid/graphics/Shader$TileMode;
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    .line 307
    iget-object v6, v3, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 314
    :goto_0
    iput-boolean v11, p0, Landroid/graphics/drawable/BitmapDrawable;->mRebuildShader:Z

    .line 315
    iget-object v6, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v6}, Landroid/graphics/drawable/BitmapDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 318
    .end local v4           #tmx:Landroid/graphics/Shader$TileMode;
    .end local v5           #tmy:Landroid/graphics/Shader$TileMode;
    :cond_0
    iget-object v6, v3, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    .line 319
    .local v2, shader:Landroid/graphics/Shader;
    if-nez v2, :cond_6

    .line 320
    iget-boolean v6, p0, Landroid/graphics/drawable/BitmapDrawable;->mApplyGravity:Z

    if-eqz v6, :cond_1

    .line 321
    iget v6, v3, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    iget v7, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapWidth:I

    iget v8, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapHeight:I

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget-object v10, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-static {v6, v7, v8, v9, v10}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 323
    iput-boolean v11, p0, Landroid/graphics/drawable/BitmapDrawable;->mApplyGravity:Z

    .line 325
    :cond_1
    iget-object v6, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    iget-object v7, v3, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v12, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 334
    .end local v2           #shader:Landroid/graphics/Shader;
    .end local v3           #state:Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    :cond_2
    :goto_1
    return-void

    .line 309
    .restart local v3       #state:Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    .restart local v4       #tmx:Landroid/graphics/Shader$TileMode;
    .restart local v5       #tmy:Landroid/graphics/Shader$TileMode;
    :cond_3
    new-instance v1, Landroid/graphics/BitmapShader;

    if-nez v4, :cond_4

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :goto_2
    if-nez v5, :cond_5

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :goto_3
    invoke-direct {v1, v0, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 312
    .local v1, s:Landroid/graphics/Shader;
    iget-object v6, v3, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .end local v1           #s:Landroid/graphics/Shader;
    :cond_4
    move-object v6, v4

    .line 309
    goto :goto_2

    :cond_5
    move-object v7, v5

    goto :goto_3

    .line 327
    .end local v4           #tmx:Landroid/graphics/Shader$TileMode;
    .end local v5           #tmy:Landroid/graphics/Shader$TileMode;
    .restart local v2       #shader:Landroid/graphics/Shader;
    :cond_6
    iget-boolean v6, p0, Landroid/graphics/drawable/BitmapDrawable;->mApplyGravity:Z

    if-eqz v6, :cond_7

    .line 328
    iget-object v6, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 329
    iput-boolean v11, p0, Landroid/graphics/drawable/BitmapDrawable;->mApplyGravity:Z

    .line 331
    :cond_7
    iget-object v6, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    iget-object v7, v3, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 288
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mChangingConfigurations:I

    .line 431
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 4

    .prologue
    const/4 v3, -0x3

    .line 420
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    const/16 v2, 0x77

    if-eq v1, v2, :cond_0

    move v1, v3

    .line 424
    :goto_0
    return v1

    .line 423
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 424
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    const/16 v2, 0xff

    if-ge v1, v2, :cond_2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const-string v9, ": <bitmap> requires a valid src attribute"

    .line 364
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 366
    sget-object v5, Lcom/android/internal/R$styleable;->BitmapDrawable:[I

    invoke-virtual {p1, p3, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 368
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 369
    .local v2, id:I
    if-nez v2, :cond_0

    .line 370
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": <bitmap> requires a valid src attribute"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 373
    :cond_0
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 374
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 375
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": <bitmap> requires a valid src attribute"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 378
    :cond_1
    iget-object v5, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iput-object v1, v5, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    .line 379
    invoke-direct {p0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 380
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 382
    iget-object v5, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v3, v5, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    .line 383
    .local v3, paint:Landroid/graphics/Paint;
    const/4 v5, 0x2

    invoke-virtual {v3}, Landroid/graphics/Paint;->isAntiAlias()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 385
    const/4 v5, 0x3

    invoke-virtual {v3}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 387
    const/4 v5, 0x4

    invoke-virtual {v3}, Landroid/graphics/Paint;->isDither()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 389
    const/16 v5, 0x77

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 390
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 391
    .local v4, tileMode:I
    if-eq v4, v7, :cond_2

    .line 392
    packed-switch v4, :pswitch_data_0

    .line 405
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 406
    return-void

    .line 394
    :pswitch_0
    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    goto :goto_0

    .line 397
    :pswitch_1
    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    goto :goto_0

    .line 400
    :pswitch_2
    sget-object v5, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    goto :goto_0

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 354
    iget-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 355
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;)V

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mMutated:Z

    .line 358
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 293
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mApplyGravity:Z

    .line 295
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 338
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 339
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 1
    .parameter "aa"

    .prologue
    .line 247
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 248
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 343
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 344
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .parameter "dither"

    .prologue
    .line 257
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 258
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 252
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 253
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 242
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iput p1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mApplyGravity:Z

    .line 244
    return-void
.end method

.method public setTargetDensity(I)V
    .locals 1
    .parameter "density"

    .prologue
    .line 223
    if-nez p1, :cond_1

    const/16 v0, 0xa0

    :goto_0
    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    .line 224
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->computeBitmapSize()V

    .line 227
    :cond_0
    return-void

    :cond_1
    move v0, p1

    .line 223
    goto :goto_0
.end method

.method public setTargetDensity(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    .line 197
    return-void
.end method

.method public setTargetDensity(Landroid/util/DisplayMetrics;)V
    .locals 1
    .parameter "metrics"

    .prologue
    .line 208
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    .line 209
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->computeBitmapSize()V

    .line 212
    :cond_0
    return-void
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 269
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 270
    return-void
.end method

.method public setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 2
    .parameter "xmode"
    .parameter "ymode"

    .prologue
    .line 277
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    .line 278
    .local v0, state:Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    if-ne v1, p1, :cond_0

    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    if-eq v1, p2, :cond_1

    .line 280
    :cond_0
    iput-object p1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 281
    iput-object p2, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 282
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mRebuildShader:Z

    .line 284
    :cond_1
    return-void
.end method

.method public final setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 273
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 274
    return-void
.end method
