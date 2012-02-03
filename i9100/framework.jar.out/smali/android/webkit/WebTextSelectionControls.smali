.class public Landroid/webkit/WebTextSelectionControls;
.super Ljava/lang/Object;
.source "WebTextSelectionControls.java"


# static fields
.field private static CharControllerHeight:I = 0x0

.field private static CharControllerWidth:I = 0x0

.field public static final HANDLE_CHARACTER_LEFT:I = 0x0

.field public static final HANDLE_CHARACTER_RIGHT:I = 0x1

.field public static final HANDLE_NONE:I = -0x1

.field static final LOGTAG:Ljava/lang/String; = "WebSelectionControls"

.field static final LOGV:Z = false

.field private static MIN_SCALE_LEVEL:F = 0.0f

.field public static final PARAGRAPH_HANDLE_BOTTOM:I = 0x5

.field public static final PARAGRAPH_HANDLE_LEFT:I = 0x2

.field public static final PARAGRAPH_HANDLE_RIGHT:I = 0x4

.field public static final PARAGRAPH_HANDLE_TOP:I = 0x3

.field private static ParaControllerHeight:I

.field private static ParaControllerWidth:I

.field private static mControllerHeight:I

.field private static mControllerWidth:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEndRect:Landroid/graphics/Rect;

.field private mRect:Landroid/graphics/Rect;

.field private mReversedHandleLeft:Z

.field private mReversedHandleRight:Z

.field private mSelectedtext:Ljava/lang/String;

.field private mStartRect:Landroid/graphics/Rect;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    sput v1, Landroid/webkit/WebTextSelectionControls;->CharControllerWidth:I

    .line 60
    sput v1, Landroid/webkit/WebTextSelectionControls;->CharControllerHeight:I

    .line 61
    sput v1, Landroid/webkit/WebTextSelectionControls;->ParaControllerWidth:I

    .line 62
    sput v1, Landroid/webkit/WebTextSelectionControls;->ParaControllerHeight:I

    .line 64
    const/high16 v0, 0x3f80

    sput v0, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    .line 66
    sput v1, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 67
    sput v1, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    .line 85
    iput-object v1, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 87
    iput-boolean v0, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleLeft:Z

    .line 88
    iput-boolean v0, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleRight:Z

    .line 89
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 1
    .parameter "context"
    .parameter "webview"

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    .line 113
    iput-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    .line 117
    iput-object p2, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    .line 118
    iput-object p1, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    .line 119
    invoke-direct {p0, p1}, Landroid/webkit/WebTextSelectionControls;->Init(Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/webkit/WebView;)V
    .locals 1
    .parameter "text"
    .parameter "value"
    .parameter "Start"
    .parameter "End"
    .parameter "webview"

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    .line 145
    iput-object p1, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    .line 147
    iput-object p3, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    .line 148
    iput-object p4, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    .line 149
    iput-object p5, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    .line 150
    return-void
.end method

.method private DrawSelectionCharController(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 14
    .parameter "canvas"
    .parameter "Start"
    .parameter "End"
    .parameter "pressed"

    .prologue
    .line 504
    const v3, 0x108037a

    .line 505
    .local v3, leftHandleId:I
    const v6, 0x108037c

    .line 508
    .local v6, rightHandleId:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v9, v0

    sget v10, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-double v10, v10

    const-wide v12, 0x3fe851eb851eb852L

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    sub-int v4, v9, v10

    .line 509
    .local v4, leftX:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v9, v0

    sget v10, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int v5, v9, v10

    .line 512
    .local v5, leftY:I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v9, v0

    sget v10, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-double v10, v10

    const-wide v12, 0x3fceb851eb851eb8L

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    sub-int v7, v9, v10

    .line 513
    .local v7, rightX:I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v8, v0

    .line 515
    .local v8, rightY:I
    if-nez p4, :cond_1

    .line 517
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleLeft:Z

    .line 518
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleRight:Z

    .line 521
    if-gez v5, :cond_0

    .line 522
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v9, v0

    sget v10, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v9, v10

    iget-object v10, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v10

    if-gt v9, v10, :cond_4

    .line 523
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleLeft:Z

    .line 529
    :cond_0
    :goto_0
    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v9, v8

    iget-object v10, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v10

    if-le v9, v10, :cond_1

    .line 530
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v9, v0

    sget v10, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-double v10, v10

    const-wide v12, 0x3fe851eb851eb852L

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    sub-int/2addr v9, v10

    if-ltz v9, :cond_5

    .line 531
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleRight:Z

    .line 537
    :cond_1
    :goto_1
    const/4 v9, 0x1

    iget-boolean v10, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleLeft:Z

    if-ne v9, v10, :cond_2

    .line 538
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    .line 539
    const v3, 0x108037b

    .line 542
    :cond_2
    const/4 v9, 0x1

    iget-boolean v10, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleRight:Z

    if-ne v9, v10, :cond_3

    .line 543
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v9, v0

    sget v10, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int v8, v9, v10

    .line 544
    const v6, 0x108037d

    .line 549
    :cond_3
    iget-object v9, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 550
    .local v2, SController:Landroid/graphics/drawable/Drawable;
    iget-object v9, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 552
    .local v1, EController:Landroid/graphics/drawable/Drawable;
    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    add-int/2addr v9, v4

    sget v10, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v10, v5

    invoke-virtual {v2, v4, v5, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 553
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 555
    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    add-int/2addr v9, v7

    sget v10, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v10, v8

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 556
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 557
    return-void

    .line 525
    .end local v1           #EController:Landroid/graphics/drawable/Drawable;
    .end local v2           #SController:Landroid/graphics/drawable/Drawable;
    :cond_4
    const-string v9, "WebSelectionControls"

    const-string v10, "DrawSelectionCharController : webview  is too short. Cannot turn LEFT handle upside-down"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 533
    :cond_5
    const-string v9, "WebSelectionControls"

    const-string v10, "DrawSelectionCharController : webview  is too short. Cannot turn RIGHT handle upside-down"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V
    .locals 5
    .parameter "canvas"
    .parameter "direction"
    .parameter "width"
    .parameter "height"
    .parameter "X"
    .parameter "Y"

    .prologue
    .line 565
    const/4 v0, 0x0

    .line 566
    .local v0, handle:Landroid/graphics/drawable/Drawable;
    packed-switch p2, :pswitch_data_0

    .line 583
    :pswitch_0
    const-string v3, "WebSelectionControls"

    const-string v4, "DrawSelectionParaController : INVALID direction."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :goto_0
    :pswitch_1
    return-void

    .line 568
    :pswitch_2
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080385

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 588
    :goto_1
    div-int/lit8 v3, p3, 0x2

    sub-int v1, p5, v3

    .line 589
    .local v1, x:I
    div-int/lit8 v3, p4, 0x2

    sub-int v2, p6, v3

    .line 591
    .local v2, y:I
    add-int v3, v1, p3

    add-int v4, v2, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 592
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 571
    .end local v1           #x:I
    .end local v2           #y:I
    :pswitch_3
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080383

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 572
    goto :goto_1

    .line 574
    :pswitch_4
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080384

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 575
    goto :goto_1

    .line 577
    :pswitch_5
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080382

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 578
    goto :goto_1

    .line 566
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private Init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108037a

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 126
    .local v1, SController:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080385

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    .local v0, PController:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sput v2, Landroid/webkit/WebTextSelectionControls;->CharControllerWidth:I

    .line 132
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sput v2, Landroid/webkit/WebTextSelectionControls;->CharControllerHeight:I

    .line 134
    :cond_0
    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sput v2, Landroid/webkit/WebTextSelectionControls;->ParaControllerWidth:I

    .line 136
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sput v2, Landroid/webkit/WebTextSelectionControls;->ParaControllerHeight:I

    .line 138
    :cond_1
    return-void
.end method


# virtual methods
.method public DrawSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIZ)V
    .locals 34
    .parameter "canvas"
    .parameter "copyRegion"
    .parameter "startRect"
    .parameter "endRect"
    .parameter "pressed"
    .parameter "selectionGranularity"
    .parameter "controler"
    .parameter "showController"

    .prologue
    .line 320
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v32

    .line 322
    .local v32, scalecont:I
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    .line 323
    .local v21, paintSelected:Landroid/graphics/Paint;
    const/4 v6, 0x1

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 324
    const/16 v6, 0x80

    const/16 v7, 0x96

    const/16 v8, 0xcb

    const/16 v9, 0xfb

    move-object/from16 v0, v21

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 325
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScale()F

    move-result v30

    .line 328
    .local v30, scale:F
    const/16 v31, 0x0

    .line 331
    .local v31, scaleLevel:I
    const/4 v6, 0x4

    move/from16 v0, p6

    move v1, v6

    if-ne v0, v1, :cond_2

    .line 332
    sget v6, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    cmpl-float v6, v30, v6

    if-lez v6, :cond_1

    .line 333
    sget v6, Landroid/webkit/WebTextSelectionControls;->ParaControllerWidth:I

    int-to-float v6, v6

    div-float v6, v6, v30

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sput v6, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 334
    sget v6, Landroid/webkit/WebTextSelectionControls;->ParaControllerHeight:I

    int-to-float v6, v6

    div-float v6, v6, v30

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sput v6, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    .line 349
    :goto_0
    const/4 v6, 0x4

    move/from16 v0, p6

    move v1, v6

    if-ne v0, v1, :cond_5

    .line 350
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 351
    .local v5, SelectionPath:Landroid/graphics/Path;
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 352
    .local v19, Paragraphrect:Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v33

    .line 353
    .local v33, temp:Landroid/graphics/Rect;
    move-object/from16 v0, v19

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 354
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v11, v0

    .line 355
    .local v11, centerX:I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v7, v0

    add-int/2addr v6, v7

    div-int/lit8 v12, v6, 0x2

    .line 358
    .local v12, centerY:I
    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    int-to-float v6, v6

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    int-to-float v7, v7

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v8, v0

    int-to-float v8, v8

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v9, v0

    int-to-float v9, v9

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 360
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 362
    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 365
    if-nez p5, :cond_4

    .line 366
    const/4 v8, 0x2

    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v10, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v12}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    .line 368
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v7, v0

    add-int/2addr v6, v7

    div-int/lit8 v11, v6, 0x2

    .line 369
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v12, v0

    .line 370
    const/4 v8, 0x3

    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v10, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v12}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    .line 372
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v11, v0

    .line 373
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v7, v0

    add-int/2addr v6, v7

    div-int/lit8 v12, v6, 0x2

    .line 374
    const/4 v8, 0x4

    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v10, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v12}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    .line 376
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v7, v0

    add-int/2addr v6, v7

    div-int/lit8 v11, v6, 0x2

    .line 377
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v12, v0

    .line 378
    const/4 v8, 0x5

    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v10, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v12}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    .line 493
    .end local v5           #SelectionPath:Landroid/graphics/Path;
    .end local v11           #centerX:I
    .end local v12           #centerY:I
    .end local v19           #Paragraphrect:Landroid/graphics/Rect;
    .end local v33           #temp:Landroid/graphics/Rect;
    :cond_0
    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 494
    return-void

    .line 336
    :cond_1
    sget v6, Landroid/webkit/WebTextSelectionControls;->ParaControllerWidth:I

    sget v7, Landroid/webkit/WebTextSelectionControls;->ParaControllerWidth:I

    int-to-float v7, v7

    sget v8, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float v8, v8, v30

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    sput v6, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 337
    sget v6, Landroid/webkit/WebTextSelectionControls;->ParaControllerHeight:I

    sget v7, Landroid/webkit/WebTextSelectionControls;->ParaControllerHeight:I

    int-to-float v7, v7

    sget v8, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float v8, v8, v30

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    sput v6, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    goto/16 :goto_0

    .line 340
    :cond_2
    sget v6, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    cmpl-float v6, v30, v6

    if-lez v6, :cond_3

    .line 341
    sget v6, Landroid/webkit/WebTextSelectionControls;->CharControllerWidth:I

    int-to-float v6, v6

    div-float v6, v6, v30

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sput v6, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 342
    sget v6, Landroid/webkit/WebTextSelectionControls;->CharControllerHeight:I

    int-to-float v6, v6

    div-float v6, v6, v30

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sput v6, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    goto/16 :goto_0

    .line 344
    :cond_3
    sget v6, Landroid/webkit/WebTextSelectionControls;->CharControllerWidth:I

    sget v7, Landroid/webkit/WebTextSelectionControls;->CharControllerWidth:I

    int-to-float v7, v7

    sget v8, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float v8, v8, v30

    mul-float/2addr v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    sput v6, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 345
    sget v6, Landroid/webkit/WebTextSelectionControls;->CharControllerHeight:I

    sget v7, Landroid/webkit/WebTextSelectionControls;->CharControllerHeight:I

    int-to-float v7, v7

    sget v8, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float v8, v8, v30

    mul-float/2addr v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    sput v6, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    goto/16 :goto_0

    .line 382
    .restart local v5       #SelectionPath:Landroid/graphics/Path;
    .restart local v11       #centerX:I
    .restart local v12       #centerY:I
    .restart local v19       #Paragraphrect:Landroid/graphics/Rect;
    .restart local v33       #temp:Landroid/graphics/Rect;
    :cond_4
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    .line 383
    .local v13, path:Landroid/graphics/Path;
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    .line 384
    .local v20, paint:Landroid/graphics/Paint;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    int-to-float v14, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    int-to-float v15, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v6, v0

    move v0, v6

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    add-int/lit8 v6, v6, 0x2

    move v0, v6

    int-to-float v0, v0

    move/from16 v17, v0

    sget-object v18, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 387
    invoke-virtual {v13}, Landroid/graphics/Path;->close()V

    .line 388
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    int-to-float v14, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    int-to-float v15, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    add-int/lit8 v6, v6, 0x2

    move v0, v6

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v6, v0

    move v0, v6

    int-to-float v0, v0

    move/from16 v17, v0

    sget-object v18, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 391
    invoke-virtual {v13}, Landroid/graphics/Path;->close()V

    .line 392
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v6, v0

    int-to-float v14, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v6, v0

    int-to-float v15, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move v0, v6

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v6, v0

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    move v0, v6

    int-to-float v0, v0

    move/from16 v17, v0

    sget-object v18, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 395
    invoke-virtual {v13}, Landroid/graphics/Path;->close()V

    .line 396
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v6, v0

    int-to-float v14, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v6, v0

    int-to-float v15, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v6, v0

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    move v0, v6

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    move v0, v6

    int-to-float v0, v0

    move/from16 v17, v0

    sget-object v18, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 399
    invoke-virtual {v13}, Landroid/graphics/Path;->close()V

    .line 400
    const/4 v6, 0x1

    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 401
    const v6, -0xffff01

    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 402
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 403
    move-object/from16 v0, p1

    move-object v1, v13

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 405
    const/4 v8, -0x1

    .line 407
    .local v8, handleType:I
    packed-switch p7, :pswitch_data_0

    .line 433
    const-string v6, "WebSelectionControls"

    const-string v7, "Selection controler not set!!! "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :goto_2
    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v10, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v12}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    goto/16 :goto_1

    .line 409
    :pswitch_0
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v11, v0

    .line 410
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v7, v0

    add-int/2addr v6, v7

    div-int/lit8 v12, v6, 0x2

    .line 411
    const/4 v8, 0x2

    .line 412
    goto :goto_2

    .line 415
    :pswitch_1
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v11, v0

    .line 416
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v7, v0

    add-int/2addr v6, v7

    div-int/lit8 v12, v6, 0x2

    .line 417
    const/4 v8, 0x4

    .line 418
    goto :goto_2

    .line 421
    :pswitch_2
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v7, v0

    add-int/2addr v6, v7

    div-int/lit8 v11, v6, 0x2

    .line 422
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v12, v0

    .line 423
    const/4 v8, 0x5

    .line 424
    goto :goto_2

    .line 427
    :pswitch_3
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v7, v0

    add-int/2addr v6, v7

    div-int/lit8 v11, v6, 0x2

    .line 428
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v12, v0

    .line 429
    const/4 v8, 0x3

    .line 430
    goto :goto_2

    .line 442
    .end local v5           #SelectionPath:Landroid/graphics/Path;
    .end local v8           #handleType:I
    .end local v11           #centerX:I
    .end local v12           #centerY:I
    .end local v13           #path:Landroid/graphics/Path;
    .end local v19           #Paragraphrect:Landroid/graphics/Rect;
    .end local v20           #paint:Landroid/graphics/Paint;
    .end local v33           #temp:Landroid/graphics/Rect;
    :cond_5
    new-instance v29, Landroid/graphics/Rect;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/Rect;-><init>()V

    .line 443
    .local v29, rtStart:Landroid/graphics/Rect;
    new-instance v27, Landroid/graphics/Rect;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Rect;-><init>()V

    .line 444
    .local v27, rtMiddle:Landroid/graphics/Rect;
    new-instance v26, Landroid/graphics/Rect;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Rect;-><init>()V

    .line 446
    .local v26, rtEnd:Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v28

    .line 449
    .local v28, rtSelected:Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v8, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v9, v0

    move-object/from16 v0, v29

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 451
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v7, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v8, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v9, v0

    move-object/from16 v0, v27

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 453
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v8, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v9, v0

    move-object/from16 v0, v26

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 457
    new-instance v25, Landroid/graphics/Region;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Region;-><init>()V

    .line 458
    .local v25, regionSelection:Landroid/graphics/Region;
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 459
    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 460
    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 462
    new-instance v22, Landroid/graphics/Path;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Path;-><init>()V

    .line 463
    .local v22, pathSelection:Landroid/graphics/Path;
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBoundaryPath(Landroid/graphics/Path;)Z

    .line 465
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 468
    const/4 v6, 0x1

    move v0, v6

    move/from16 v1, p8

    if-ne v0, v1, :cond_0

    .line 469
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    .line 470
    .restart local v20       #paint:Landroid/graphics/Paint;
    new-instance v23, Landroid/graphics/Rect;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Rect;-><init>()V

    .line 471
    .local v23, rect1:Landroid/graphics/Rect;
    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    .line 473
    .local v24, rect2:Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v8, v0

    add-int/lit8 v8, v8, 0x2

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v9, v0

    move-object/from16 v0, v23

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 475
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v8, v0

    add-int/lit8 v8, v8, 0x2

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v9, v0

    move-object/from16 v0, v24

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 477
    const/4 v6, 0x1

    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 478
    const v6, -0xffff01

    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 480
    if-nez p5, :cond_6

    .line 481
    const/16 v6, 0xff

    const/16 v7, 0x58

    const/16 v8, 0xa5

    const/16 v9, 0xdc

    move-object/from16 v0, v20

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 484
    :cond_6
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 485
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 486
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 488
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionCharController(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    goto/16 :goto_1

    .line 407
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public SetTextSelectionData(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "text"
    .parameter "value"
    .parameter "Start"
    .parameter "End"

    .prologue
    .line 305
    iput-object p1, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 306
    iput-object p2, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    .line 307
    iput-object p3, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    .line 308
    iput-object p4, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    .line 309
    return-void
.end method

.method public copy()Z
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " html copy() "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    const-string v1, "Copy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    .line 210
    :cond_0
    const-string v0, "WebSelectionControls"

    const-string v1, "Selected text String is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getControllerHeight()I
    .locals 1

    .prologue
    .line 230
    sget v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    return v0
.end method

.method getControllerWidth()I
    .locals 1

    .prologue
    .line 221
    sget v0, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    return v0
.end method

.method public getSelectionRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRegionEndRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRegionStartRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    return-object v0
.end method

.method isReversed(I)Z
    .locals 3
    .parameter "handleType"

    .prologue
    .line 94
    packed-switch p1, :pswitch_data_0

    .line 102
    const-string v0, "WebSelectionControls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReversed : wrong handle type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 96
    :pswitch_0
    iget-boolean v0, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleLeft:Z

    goto :goto_0

    .line 99
    :pswitch_1
    iget-boolean v0, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleRight:Z

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public saveImage(Ljava/lang/String;Landroid/graphics/Rect;)Z
    .locals 17
    .parameter "filepath"
    .parameter "rt"

    .prologue
    .line 235
    const/4 v5, 0x0

    .local v5, bitmapwidth:I
    const/4 v4, 0x0

    .line 236
    .local v4, bitmapheight:I
    const/4 v6, 0x0

    .local v6, bitmapx:F
    const/4 v7, 0x0

    .line 240
    .local v7, bitmapy:F
    move-object/from16 v13, p2

    .line 242
    .local v13, rtSelection:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v14, v0

    iget v15, v13, Landroid/graphics/Rect;->right:I

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v5

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v14, v0

    iget v15, v13, Landroid/graphics/Rect;->bottom:I

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v4

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v14, v0

    iget v15, v13, Landroid/graphics/Rect;->left:I

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->viewToContentXf(I)F

    move-result v6

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v14, v0

    iget v15, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->viewToContentYf(I)F

    move-result v7

    .line 247
    sget-boolean v14, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v14, :cond_0

    .line 248
    const-string v14, "WebSelectionControls"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "rtSelection.width :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v14, "WebSelectionControls"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "rtSelection.height : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v14, "WebSelectionControls"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "rtSelection.left :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v14, "WebSelectionControls"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "rtSelection.top : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v12

    .line 256
    .local v12, picture:Landroid/graphics/Picture;
    :try_start_0
    sget-object v14, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 263
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 264
    .local v3, bitmapCanvas:Landroid/graphics/Canvas;
    sget-boolean v14, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v14, :cond_1

    .line 265
    const-string v14, "WebSelectionControls"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "rtSelection.left :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v14, "WebSelectionControls"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "rtSelection.top : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_1
    neg-float v14, v6

    neg-float v15, v7

    invoke-virtual {v3, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 270
    invoke-virtual {v12, v3}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 272
    new-instance v9, Ljava/io/File;

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v9, mFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 275
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 278
    :cond_2
    const/4 v10, 0x0

    .line 281
    .local v10, out:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v11, Ljava/io/FileOutputStream;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 282
    .end local v10           #out:Ljava/io/FileOutputStream;
    .local v11, out:Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x64

    invoke-virtual {v2, v14, v15, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 289
    if-eqz v11, :cond_3

    .line 290
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 297
    :cond_3
    const/4 v14, 0x1

    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #bitmapCanvas:Landroid/graphics/Canvas;
    .end local v9           #mFile:Ljava/io/File;
    .end local v11           #out:Ljava/io/FileOutputStream;
    :goto_0
    return v14

    .line 258
    :catch_0
    move-exception v14

    move-object v8, v14

    .line 259
    .local v8, e:Ljava/lang/OutOfMemoryError;
    const-string v14, "WebSelectionControls"

    const-string/jumbo v15, "saveImage() : OutOfMemory"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v14, 0x0

    goto :goto_0

    .line 283
    .end local v8           #e:Ljava/lang/OutOfMemoryError;
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #bitmapCanvas:Landroid/graphics/Canvas;
    .restart local v9       #mFile:Ljava/io/File;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v14

    move-object v8, v14

    .line 285
    .local v8, e:Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v14, 0x0

    goto :goto_0

    .line 291
    .end local v8           #e:Ljava/io/FileNotFoundException;
    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v11       #out:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v8

    .line 292
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 294
    const/4 v14, 0x0

    goto :goto_0

    .line 283
    .end local v8           #e:Ljava/io/IOException;
    :catch_3
    move-exception v14

    move-object v8, v14

    move-object v10, v11

    .end local v11           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
