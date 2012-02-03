.class public Lcom/android/internal/policy/impl/face/DrawOnTop;
.super Landroid/view/View;
.source "DrawOnTop.java"


# static fields
.field public static final ALTERNATIVE_DENIED_3TIMES:I = 0x6

.field public static final ALTERNATIVE_NOT_FOUND_FACE:I = 0x5

.field public static final FACE_FIT:I = 0xb

.field public static final FACE_TOO_CLOSE:I = 0xc

.field public static final FACE_TOO_FAR:I = 0xa

.field public static final NOT_FIT_FACE:I = 0x4

.field public static final NOT_FOUND_EYE:I = 0x3

.field public static final NOT_FOUND_FACE:I = 0x0

.field public static final RESULT_APPROVED:I = 0x15

.field public static final RESULT_DENIED:I = 0x16

.field public static final TOO_DARK:I = 0x1

.field public static final TOO_SHINE:I = 0x2


# instance fields
.field private mcontext:Landroid/content/Context;

.field private mreSilfalse:Landroid/graphics/Bitmap;

.field private mreSiltrue:Landroid/graphics/Bitmap;

.field private mrebg:Landroid/graphics/Bitmap;

.field private mredefault:Landroid/graphics/Bitmap;

.field private paint_Black:Landroid/graphics/Paint;

.field private paint_White:Landroid/graphics/Paint;

.field public readyCapture:I

.field private str_approved:Ljava/lang/String;

.field private str_close:Ljava/lang/String;

.field private str_dark:Ljava/lang/String;

.field private str_denied:Ljava/lang/String;

.field private str_denied_3times:Ljava/lang/String;

.field private str_far:Ljava/lang/String;

.field private str_fit:Ljava/lang/String;

.field private str_none:Ljava/lang/String;

.field private str_not_face_5s:Ljava/lang/String;

.field private str_shine:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->readyCapture:I

    .line 41
    iput-object p1, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->mcontext:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/android/internal/policy/impl/face/DrawOnTop;->init()V

    .line 43
    return-void
.end method

.method private drawRegisterGuideBitmap(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/high16 v5, 0x4407

    const/high16 v4, 0x4370

    const/high16 v3, 0x42a0

    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->mrebg:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->paint_Black:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 93
    iget v0, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->readyCapture:I

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->mredefault:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->paint_Black:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 117
    :goto_0
    return-void

    .line 95
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->readyCapture:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->mreSilfalse:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->paint_Black:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->str_far:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->paint_White:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 98
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->readyCapture:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->mreSiltrue:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->paint_Black:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->str_fit:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->paint_White:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 101
    :cond_2
    iget v0, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->readyCapture:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->mreSilfalse:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->paint_Black:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 103
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->str_close:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->paint_White:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 104
    :cond_3
    iget v0, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->readyCapture:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->str_dark:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->paint_White:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 106
    :cond_4
    iget v0, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->readyCapture:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 107
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->str_shine:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->paint_White:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 108
    :cond_5
    iget v0, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->readyCapture:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_6

    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->mreSiltrue:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->paint_Black:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->str_approved:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->paint_White:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 111
    :cond_6
    iget v0, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->readyCapture:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_7

    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->mreSiltrue:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->paint_Black:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 113
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->str_denied:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->paint_White:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 115
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->mredefault:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->paint_Black:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private init()V
    .locals 10

    .prologue
    const/high16 v9, -0x100

    const/high16 v8, 0x4040

    const/4 v7, 0x1

    const/16 v6, 0x1e0

    .line 48
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/face/DrawOnTop;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10803ba

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 49
    .local v1, mSildefault:Landroid/graphics/Bitmap;
    invoke-static {v1, v6, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->mredefault:Landroid/graphics/Bitmap;

    .line 50
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 51
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/face/DrawOnTop;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10803b9

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 52
    .local v0, mSilbg:Landroid/graphics/Bitmap;
    invoke-static {v0, v6, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->mrebg:Landroid/graphics/Bitmap;

    .line 53
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 54
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/face/DrawOnTop;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10803bc

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 55
    .local v2, mSilfalse:Landroid/graphics/Bitmap;
    invoke-static {v2, v6, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->mreSilfalse:Landroid/graphics/Bitmap;

    .line 56
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/face/DrawOnTop;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10803bb

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 58
    .local v3, mSiltrue:Landroid/graphics/Bitmap;
    invoke-static {v3, v6, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->mreSiltrue:Landroid/graphics/Bitmap;

    .line 59
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 61
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->paint_White:Landroid/graphics/Paint;

    .line 62
    iget-object v4, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->paint_White:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v4, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->paint_White:Landroid/graphics/Paint;

    const/high16 v5, 0x4228

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 64
    iget-object v4, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->paint_White:Landroid/graphics/Paint;

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5, v8, v8, v9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 65
    iget-object v4, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->paint_White:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 67
    iget-object v4, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->paint_White:Landroid/graphics/Paint;

    const-string v5, "/system/fonts/DroidSans.ttf"

    invoke-static {v5}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 69
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->paint_Black:Landroid/graphics/Paint;

    .line 70
    iget-object v4, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->paint_Black:Landroid/graphics/Paint;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/face/DrawOnTop;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104046f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->str_far:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/face/DrawOnTop;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040470

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->str_close:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/face/DrawOnTop;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040471

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->str_fit:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/face/DrawOnTop;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040472

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->str_none:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/face/DrawOnTop;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040473

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->str_approved:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/face/DrawOnTop;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040474

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->str_denied:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/face/DrawOnTop;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040475

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->str_not_face_5s:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/face/DrawOnTop;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040476

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->str_denied_3times:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/face/DrawOnTop;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040477

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->str_dark:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/face/DrawOnTop;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040478

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/face/DrawOnTop;->str_shine:Ljava/lang/String;

    .line 82
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/face/DrawOnTop;->drawRegisterGuideBitmap(Landroid/graphics/Canvas;)V

    .line 87
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 88
    return-void
.end method
