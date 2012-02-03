.class public Landroid/webkit/ViewManager;
.super Ljava/lang/Object;
.source "ViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/ViewManager$ChildView;
    }
.end annotation


# static fields
.field private static final MAX_SURFACE_DIMENSION:I = 0x800


# instance fields
.field private final MAX_SURFACE_AREA:I

.field private final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/ViewManager$ChildView;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableQuickResize:Z

.field private mHidden:Z

.field private mPinchZoomMatrix:Landroid/graphics/Matrix;

.field private mReadyToDraw:Z

.field private final mWebView:Landroid/webkit/WebView;

.field private mZoomInProgress:Z


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 5
    .parameter "w"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    .line 34
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    .line 118
    iput-object p1, p0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;

    .line 120
    invoke-virtual {p1}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int v0, v1, v2

    .line 126
    .local v0, pixelArea:I
    int-to-double v1, v0

    const-wide/high16 v3, 0x4006

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Landroid/webkit/ViewManager;->MAX_SURFACE_AREA:I

    .line 128
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/webkit/ViewManager;->mPinchZoomMatrix:Landroid/graphics/Matrix;

    .line 129
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/ViewManager;Landroid/webkit/ViewManager$ChildView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/webkit/ViewManager;->requestLayout(Landroid/webkit/ViewManager$ChildView;)V

    return-void
.end method

.method static synthetic access$200(Landroid/webkit/ViewManager;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/webkit/ViewManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Landroid/webkit/ViewManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Landroid/webkit/ViewManager;->mReadyToDraw:Z

    return v0
.end method

.method static synthetic access$402(Landroid/webkit/ViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Landroid/webkit/ViewManager;->mReadyToDraw:Z

    return p1
.end method

.method private requestLayout(Landroid/webkit/ViewManager$ChildView;)V
    .locals 20
    .parameter "v"

    .prologue
    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->width:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v13

    .line 141
    .local v13, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->height:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v8

    .line 142
    .local v8, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->x:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v14

    .line 143
    .local v14, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->y:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v15

    .line 145
    .local v15, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ViewManager;->mPinchZoomMatrix:Landroid/graphics/Matrix;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v16

    if-nez v16, :cond_0

    .line 147
    new-instance v11, Landroid/graphics/RectF;

    move v0, v14

    int-to-float v0, v0

    move/from16 v16, v0

    move v0, v15

    int-to-float v0, v0

    move/from16 v17, v0

    add-int v18, v14, v13

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-int v19, v15, v8

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object v0, v11

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 148
    .local v11, rectF:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ViewManager;->mPinchZoomMatrix:Landroid/graphics/Matrix;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 149
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v13, v0

    .line 150
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v8, v0

    .line 151
    move-object v0, v11

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move v14, v0

    .line 152
    move-object v0, v11

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move v15, v0

    .line 156
    .end local v11           #rectF:Landroid/graphics/RectF;
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 158
    .local v9, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    move-object v0, v9

    instance-of v0, v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 159
    move-object v0, v9

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    move-object v10, v0

    .line 160
    .local v10, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iput v13, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 161
    iput v8, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 162
    iput v14, v10, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 163
    iput v15, v10, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 169
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/view/SurfaceView;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 173
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    move-object v12, v0

    check-cast v12, Landroid/view/SurfaceView;

    .line 175
    .local v12, sView:Landroid/view/SurfaceView;
    invoke-virtual {v12}, Landroid/view/SurfaceView;->isFixedSize()Z

    move-result v16

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 262
    .end local v12           #sView:Landroid/view/SurfaceView;
    :cond_1
    :goto_1
    return-void

    .line 165
    .end local v10           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_2
    new-instance v10, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v10, v13, v8, v14, v15}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .restart local v10       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    goto :goto_0

    .line 190
    .restart local v12       #sView:Landroid/view/SurfaceView;
    :cond_3
    move v7, v13

    .line 191
    .local v7, fixedW:I
    move v6, v8

    .line 192
    .local v6, fixedH:I
    const/16 v16, 0x800

    move v0, v7

    move/from16 v1, v16

    if-gt v0, v1, :cond_4

    const/16 v16, 0x800

    move v0, v6

    move/from16 v1, v16

    if-le v0, v1, :cond_5

    .line 193
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->width:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->height:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_8

    .line 194
    const/16 v7, 0x800

    .line 195
    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x800

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->width:I

    move/from16 v17, v0

    div-int v6, v16, v17

    .line 201
    :cond_5
    :goto_2
    mul-int v16, v7, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ViewManager;->MAX_SURFACE_AREA:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    .line 202
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ViewManager;->MAX_SURFACE_AREA:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move v5, v0

    .line 203
    .local v5, area:F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->width:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->height:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_9

    .line 204
    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->width:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move v7, v0

    .line 205
    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->height:I

    move/from16 v16, v0

    mul-int v16, v16, v7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->width:I

    move/from16 v17, v0

    div-int v6, v16, v17

    .line 212
    .end local v5           #area:F
    :cond_6
    :goto_3
    if-ne v7, v13, :cond_7

    if-eq v6, v8, :cond_a

    .line 215
    :cond_7
    invoke-virtual {v12}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v7

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto/16 :goto_1

    .line 197
    :cond_8
    const/16 v6, 0x800

    .line 198
    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->width:I

    move/from16 v16, v0

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x800

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->height:I

    move/from16 v17, v0

    div-int v7, v16, v17

    goto/16 :goto_2

    .line 207
    .restart local v5       #area:F
    :cond_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move v6, v0

    .line 208
    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->width:I

    move/from16 v16, v0

    mul-int v16, v16, v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/ViewManager$ChildView;->height:I

    move/from16 v17, v0

    div-int v7, v16, v17

    goto :goto_3

    .line 216
    .end local v5           #area:F
    :cond_a
    invoke-virtual {v12}, Landroid/view/SurfaceView;->isFixedSize()Z

    move-result v16

    if-nez v16, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    move/from16 v16, v0

    if-eqz v16, :cond_b

    .line 219
    invoke-virtual {v12}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v16

    invoke-virtual {v12}, Landroid/view/SurfaceView;->getWidth()I

    move-result v17

    invoke-virtual {v12}, Landroid/view/SurfaceView;->getHeight()I

    move-result v18

    invoke-interface/range {v16 .. v18}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto/16 :goto_1

    .line 224
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 242
    invoke-virtual {v12}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v16

    if-nez v16, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ViewManager;->mEnableQuickResize:Z

    move/from16 v16, v0

    if-nez v16, :cond_c

    .line 246
    const/16 v16, 0x8

    move-object v0, v12

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 248
    invoke-virtual {v12}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    new-instance v17, Landroid/webkit/ViewManager$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Landroid/webkit/ViewManager$1;-><init>(Landroid/webkit/ViewManager;Landroid/view/SurfaceView;)V

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 258
    :cond_c
    invoke-virtual {v12}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    goto/16 :goto_1
.end method


# virtual methods
.method createView()Landroid/webkit/ViewManager$ChildView;
    .locals 1

    .prologue
    .line 132
    new-instance v0, Landroid/webkit/ViewManager$ChildView;

    invoke-direct {v0, p0}, Landroid/webkit/ViewManager$ChildView;-><init>(Landroid/webkit/ViewManager;)V

    return-object v0
.end method

.method endZoom()V
    .locals 3

    .prologue
    .line 274
    iget-object v2, p0, Landroid/webkit/ViewManager;->mPinchZoomMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 275
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    .line 276
    iget-object v2, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ViewManager$ChildView;

    .line 277
    .local v1, v:Landroid/webkit/ViewManager$ChildView;
    invoke-direct {p0, v1}, Landroid/webkit/ViewManager;->requestLayout(Landroid/webkit/ViewManager$ChildView;)V

    goto :goto_0

    .line 280
    .end local v1           #v:Landroid/webkit/ViewManager$ChildView;
    :cond_0
    return-void
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/ViewManager$ChildView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    return-object v0
.end method

.method hideAll()V
    .locals 4

    .prologue
    .line 301
    iget-boolean v2, p0, Landroid/webkit/ViewManager;->mHidden:Z

    if-eqz v2, :cond_0

    .line 308
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v2, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ViewManager$ChildView;

    .line 305
    .local v1, v:Landroid/webkit/ViewManager$ChildView;
    iget-object v2, v1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 307
    .end local v1           #v:Landroid/webkit/ViewManager$ChildView;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/ViewManager;->mHidden:Z

    goto :goto_0
.end method

.method hitTest(II)Landroid/webkit/ViewManager$ChildView;
    .locals 5
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const/4 v4, 0x0

    .line 340
    iget-boolean v2, p0, Landroid/webkit/ViewManager;->mHidden:Z

    if-eqz v2, :cond_0

    move-object v2, v4

    .line 351
    :goto_0
    return-object v2

    .line 343
    :cond_0
    iget-object v2, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ViewManager$ChildView;

    .line 344
    .local v1, v:Landroid/webkit/ViewManager$ChildView;
    iget-object v2, v1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 345
    iget v2, v1, Landroid/webkit/ViewManager$ChildView;->x:I

    if-lt p1, v2, :cond_1

    iget v2, v1, Landroid/webkit/ViewManager$ChildView;->x:I

    iget v3, v1, Landroid/webkit/ViewManager$ChildView;->width:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_1

    iget v2, v1, Landroid/webkit/ViewManager$ChildView;->y:I

    if-lt p2, v2, :cond_1

    iget v2, v1, Landroid/webkit/ViewManager$ChildView;->y:I

    iget v3, v1, Landroid/webkit/ViewManager$ChildView;->height:I

    add-int/2addr v2, v3

    if-ge p2, v2, :cond_1

    move-object v2, v1

    .line 347
    goto :goto_0

    .end local v1           #v:Landroid/webkit/ViewManager$ChildView;
    :cond_2
    move-object v2, v4

    .line 351
    goto :goto_0
.end method

.method postReadyToDrawAll()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v1, Landroid/webkit/ViewManager$3;

    invoke-direct {v1, p0}, Landroid/webkit/ViewManager$3;-><init>(Landroid/webkit/ViewManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 337
    return-void
.end method

.method postResetStateAll()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v1, Landroid/webkit/ViewManager$2;

    invoke-direct {v1, p0}, Landroid/webkit/ViewManager$2;-><init>(Landroid/webkit/ViewManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 326
    return-void
.end method

.method scaleAll()V
    .locals 3

    .prologue
    .line 295
    iget-object v2, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ViewManager$ChildView;

    .line 296
    .local v1, v:Landroid/webkit/ViewManager$ChildView;
    invoke-direct {p0, v1}, Landroid/webkit/ViewManager;->requestLayout(Landroid/webkit/ViewManager$ChildView;)V

    goto :goto_0

    .line 298
    .end local v1           #v:Landroid/webkit/ViewManager$ChildView;
    :cond_0
    return-void
.end method

.method showAll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 311
    iget-boolean v2, p0, Landroid/webkit/ViewManager;->mHidden:Z

    if-nez v2, :cond_0

    .line 318
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v2, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ViewManager$ChildView;

    .line 315
    .local v1, v:Landroid/webkit/ViewManager$ChildView;
    iget-object v2, v1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 317
    .end local v1           #v:Landroid/webkit/ViewManager$ChildView;
    :cond_1
    iput-boolean v3, p0, Landroid/webkit/ViewManager;->mHidden:Z

    goto :goto_0
.end method

.method startZoom()V
    .locals 3

    .prologue
    .line 265
    iget-object v2, p0, Landroid/webkit/ViewManager;->mPinchZoomMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 266
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    .line 267
    iget-object v2, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ViewManager$ChildView;

    .line 268
    .local v1, v:Landroid/webkit/ViewManager$ChildView;
    invoke-direct {p0, v1}, Landroid/webkit/ViewManager;->requestLayout(Landroid/webkit/ViewManager$ChildView;)V

    goto :goto_0

    .line 270
    .end local v1           #v:Landroid/webkit/ViewManager$ChildView;
    :cond_0
    return-void
.end method

.method transformAll(Landroid/graphics/Matrix;Z)V
    .locals 4
    .parameter "matrix"
    .parameter "zoomInProgress"

    .prologue
    .line 284
    iget-object v3, p0, Landroid/webkit/ViewManager;->mPinchZoomMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 285
    iget-object v3, p0, Landroid/webkit/ViewManager;->mPinchZoomMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 286
    iget-boolean v1, p0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    .line 287
    .local v1, oldZoomInProgress:Z
    iput-boolean p2, p0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    .line 288
    iget-object v3, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/ViewManager$ChildView;

    .line 289
    .local v2, v:Landroid/webkit/ViewManager$ChildView;
    invoke-direct {p0, v2}, Landroid/webkit/ViewManager;->requestLayout(Landroid/webkit/ViewManager$ChildView;)V

    goto :goto_0

    .line 291
    .end local v2           #v:Landroid/webkit/ViewManager$ChildView;
    :cond_0
    iput-boolean v1, p0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    .line 292
    return-void
.end method

.method public updateScrollPosForPluginViews(Landroid/view/SurfaceView;IIIIFFFI)V
    .locals 13
    .parameter "parentView"
    .parameter "parentViewX"
    .parameter "parentViewY"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "zoomCenterX"
    .parameter "zoomCenterY"
    .parameter "scale"
    .parameter "serial"

    .prologue
    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/ViewManager;->mEnableQuickResize:Z

    .line 362
    :try_start_0
    iget-object v0, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/webkit/ViewManager$ChildView;

    .line 363
    .local v12, v:Landroid/webkit/ViewManager$ChildView;
    iget-object v0, v12, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, v12, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 364
    iget-object v1, v12, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    check-cast v1, Landroid/view/SurfaceView;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, sView:Landroid/view/SurfaceView;
    move-object v0, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 366
    :try_start_1
    invoke-virtual/range {v0 .. v9}, Landroid/view/SurfaceView;->moveChildWindowOnMyFlip(Landroid/view/SurfaceView;IIIIFFFI)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 368
    :catch_0
    move-exception v11

    .line 369
    .local v11, t:Ljava/lang/Throwable;
    :try_start_2
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "SurfaceView.updateWindow() failed (transient failure? let\'s continue.)"

    .end local v1           #sView:Landroid/view/SurfaceView;
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 374
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #t:Ljava/lang/Throwable;
    .end local v12           #v:Landroid/webkit/ViewManager$ChildView;
    :catch_1
    move-exception v0

    move-object v11, v0

    .line 376
    .restart local v11       #t:Ljava/lang/Throwable;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "ViewManager.mChildren is changed concurrently. This should be OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    .line 379
    .end local v11           #t:Ljava/lang/Throwable;
    :cond_1
    return-void
.end method
