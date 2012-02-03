.class public Lcom/android/settings/ThemePreviewGetter;
.super Ljava/lang/Object;
.source "ThemePreviewGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ThemePreviewGetter$1;,
        Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;,
        Lcom/android/settings/ThemePreviewGetter$previewholder;
    }
.end annotation


# instance fields
.field private callback:Lcom/android/settings/ThemePicker3D$Notified;

.field private final drawableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentIndex:I

.field private mCurrentIndexLock:Ljava/lang/Object;

.field private mcontext:Landroid/content/Context;

.field name:[Ljava/lang/String;

.field private notavailable:Landroid/graphics/Bitmap;

.field private previewholders:[Lcom/android/settings/ThemePreviewGetter$previewholder;

.field private tempholder:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Lcom/android/settings/ThemePicker3D$Notified;I)V
    .locals 2
    .parameter "c"
    .parameter "mThemeValues"
    .parameter "cb"
    .parameter "currentIndex"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ThemePreviewGetter;->mCurrentIndexLock:Ljava/lang/Object;

    .line 67
    iput p4, p0, Lcom/android/settings/ThemePreviewGetter;->mCurrentIndex:I

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ThemePreviewGetter;->drawableMap:Ljava/util/Map;

    .line 69
    array-length v0, p2

    new-array v0, v0, [Lcom/android/settings/ThemePreviewGetter$previewholder;

    iput-object v0, p0, Lcom/android/settings/ThemePreviewGetter;->previewholders:[Lcom/android/settings/ThemePreviewGetter$previewholder;

    .line 70
    iput-object p1, p0, Lcom/android/settings/ThemePreviewGetter;->mcontext:Landroid/content/Context;

    .line 71
    iput-object p3, p0, Lcom/android/settings/ThemePreviewGetter;->callback:Lcom/android/settings/ThemePicker3D$Notified;

    .line 72
    iget-object v0, p0, Lcom/android/settings/ThemePreviewGetter;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200be

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/ThemePreviewGetter;->createReflectedImages(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ThemePreviewGetter;->tempholder:Landroid/graphics/Bitmap;

    .line 73
    iget-object v0, p0, Lcom/android/settings/ThemePreviewGetter;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200bf

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/ThemePreviewGetter;->createReflectedImages(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ThemePreviewGetter;->notavailable:Landroid/graphics/Bitmap;

    .line 74
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/ThemePreviewGetter;->name:[Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/android/settings/ThemePreviewGetter;->name:[Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;-><init>(Lcom/android/settings/ThemePreviewGetter;Lcom/android/settings/ThemePreviewGetter$1;)V

    invoke-virtual {v0, p2}, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/ThemePreviewGetter;)Lcom/android/settings/ThemePicker3D$Notified;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/ThemePreviewGetter;->callback:Lcom/android/settings/ThemePicker3D$Notified;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/ThemePreviewGetter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/ThemePreviewGetter;->mcontext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/ThemePreviewGetter;)[Lcom/android/settings/ThemePreviewGetter$previewholder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/ThemePreviewGetter;->previewholders:[Lcom/android/settings/ThemePreviewGetter$previewholder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/ThemePreviewGetter;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/ThemePreviewGetter;->mCurrentIndexLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/ThemePreviewGetter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/settings/ThemePreviewGetter;->mCurrentIndex:I

    return v0
.end method


# virtual methods
.method public createReflectedImages(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 31
    .parameter "image"

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 190
    const-string v5, "ThemePreviewGetter"

    const-string v6, "[Theme] Unable to create reflection. Source image is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v5, 0x0

    .line 256
    :goto_0
    return-object v5

    .line 194
    :cond_0
    const/16 v29, 0x4

    .line 196
    .local v29, reflectionGap:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 197
    .local v8, width:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v27

    .line 203
    .local v27, height:I
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 204
    .local v10, matrix:Landroid/graphics/Matrix;
    const/high16 v5, 0x3f80

    const/high16 v6, -0x4080

    invoke-virtual {v10, v5, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 208
    const/4 v6, 0x0

    mul-int/lit8 v5, v27, 0x3

    div-int/lit8 v7, v5, 0x4

    div-int/lit8 v9, v27, 0x4

    const/4 v11, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v30

    .line 211
    .local v30, reflectionImage:Landroid/graphics/Bitmap;
    const/16 v25, 0x0

    .line 214
    .local v25, bitmapWithReflection:Landroid/graphics/Bitmap;
    :try_start_0
    div-int/lit8 v5, v27, 0x4

    add-int v5, v5, v27

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v25

    .line 224
    :goto_1
    new-instance v11, Landroid/graphics/Canvas;

    move-object v0, v11

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 226
    .local v11, canvas:Landroid/graphics/Canvas;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v11

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 228
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 229
    .local v16, deafaultPaint:Landroid/graphics/Paint;
    const/4 v12, 0x0

    move/from16 v0, v27

    int-to-float v0, v0

    move v13, v0

    int-to-float v14, v8

    add-int/lit8 v5, v27, 0x4

    int-to-float v15, v5

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 231
    const/4 v5, 0x0

    add-int/lit8 v6, v27, 0x4

    int-to-float v6, v6

    const/4 v7, 0x0

    move-object v0, v11

    move-object/from16 v1, v30

    move v2, v5

    move v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 234
    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    .line 235
    .local v28, paint:Landroid/graphics/Paint;
    new-instance v17, Landroid/graphics/LinearGradient;

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move v0, v5

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    move v0, v5

    int-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x70ffffff

    const v23, 0xffffff

    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 239
    .local v17, shader:Landroid/graphics/LinearGradient;
    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 241
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 243
    const/16 v19, 0x0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v20, v0

    move v0, v8

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    move v0, v5

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v18, v11

    move-object/from16 v23, v28

    invoke-virtual/range {v18 .. v23}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 248
    const/16 p1, 0x0

    .line 251
    const/16 v30, 0x0

    .line 255
    invoke-static {}, Ljava/lang/System;->gc()V

    move-object/from16 v5, v25

    .line 256
    goto/16 :goto_0

    .line 216
    .end local v11           #canvas:Landroid/graphics/Canvas;
    .end local v16           #deafaultPaint:Landroid/graphics/Paint;
    .end local v17           #shader:Landroid/graphics/LinearGradient;
    .end local v28           #paint:Landroid/graphics/Paint;
    :catch_0
    move-exception v5

    move-object/from16 v26, v5

    .line 217
    .local v26, e:Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 218
    throw v25

    .line 219
    div-int/lit8 v5, v27, 0x4

    add-int v5, v5, v27

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v25

    goto/16 :goto_1
.end method

.method public fetchDrawable(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 5
    .parameter "themename"
    .parameter "imageView"
    .parameter "pos"

    .prologue
    .line 92
    iget-object v3, p0, Lcom/android/settings/ThemePreviewGetter;->previewholders:[Lcom/android/settings/ThemePreviewGetter$previewholder;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/ThemePreviewGetter;->previewholders:[Lcom/android/settings/ThemePreviewGetter$previewholder;

    aget-object v3, v3, p3

    if-eqz v3, :cond_4

    .line 93
    iget-object v3, p0, Lcom/android/settings/ThemePreviewGetter;->previewholders:[Lcom/android/settings/ThemePreviewGetter$previewholder;

    aget-object v3, v3, p3

    iget-object v0, v3, Lcom/android/settings/ThemePreviewGetter$previewholder;->themevalue:Landroid/content/Context;

    .line 95
    .local v0, contextvalue:Landroid/content/Context;
    const/4 v2, 0x1

    .line 96
    .local v2, isnotavailableimage:Z
    if-eqz v0, :cond_0

    .line 97
    iget-object v3, p0, Lcom/android/settings/ThemePreviewGetter;->mcontext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/ThemePreviewGetter;->previewholders:[Lcom/android/settings/ThemePreviewGetter$previewholder;

    aget-object v3, v3, p3

    iget v3, v3, Lcom/android/settings/ThemePreviewGetter$previewholder;->previewId:I

    const v4, 0x7f0200bf

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    move v2, v3

    .line 99
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    if-nez v2, :cond_3

    .line 100
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ThemePreviewGetter;->previewholders:[Lcom/android/settings/ThemePreviewGetter$previewholder;

    aget-object v4, v4, p3

    iget v4, v4, Lcom/android/settings/ThemePreviewGetter$previewholder;->previewId:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 101
    .local v1, image:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 102
    invoke-virtual {p0, v1}, Lcom/android/settings/ThemePreviewGetter;->createReflectedImages(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 121
    .end local v0           #contextvalue:Landroid/content/Context;
    .end local v1           #image:Landroid/graphics/Bitmap;
    .end local v2           #isnotavailableimage:Z
    :goto_1
    return-void

    .line 97
    .restart local v0       #contextvalue:Landroid/content/Context;
    .restart local v2       #isnotavailableimage:Z
    :cond_1
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    .line 106
    .restart local v1       #image:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/ThemePreviewGetter;->notavailable:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 111
    .end local v1           #image:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v3, p0, Lcom/android/settings/ThemePreviewGetter;->notavailable:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 118
    .end local v0           #contextvalue:Landroid/content/Context;
    .end local v2           #isnotavailableimage:Z
    :cond_4
    iget-object v3, p0, Lcom/android/settings/ThemePreviewGetter;->tempholder:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public updateCurrentIndex(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/ThemePreviewGetter;->mCurrentIndexLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    iput p1, p0, Lcom/android/settings/ThemePreviewGetter;->mCurrentIndex:I

    .line 86
    monitor-exit v0

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
