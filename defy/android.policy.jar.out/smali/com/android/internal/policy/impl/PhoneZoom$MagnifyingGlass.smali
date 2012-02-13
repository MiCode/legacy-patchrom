.class Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;
.super Landroid/view/View;
.source "PhoneZoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneZoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnifyingGlass"
.end annotation


# instance fields
.field private mInScrollMode:Z

.field private mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

.field private mMGlassBottomHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

.field private mMGlassTopHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

.field private mViewConfig:Landroid/view/ViewConfiguration;

.field private mX:F

.field private mY:F

.field private oldLeft:I

.field private oldTop:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneZoom;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneZoom;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1100()I

    move-result v0

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1300()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;-><init>(Lcom/android/internal/policy/impl/PhoneZoom;Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneZoom;Landroid/content/Context;II)V
    .locals 10
    .parameter
    .parameter "context"
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v9, 0x0

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->this$0:Lcom/android/internal/policy/impl/PhoneZoom;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v9, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->oldLeft:I

    iput v9, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->oldTop:I

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$700()I

    move-result v0

    sub-int/2addr v0, p3

    div-int/lit8 v2, v0, 0x2

    .local v2, left:I
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$900()I

    move-result v0

    sub-int/2addr v0, p4

    div-int/lit8 v3, v0, 0x2

    .local v3, top:I
    new-instance v7, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass$1;

    invoke-direct {v7, p0, p2, p1}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass$1;-><init>(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneZoom;)V

    .local v7, mglassView:Landroid/view/View;
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mViewConfig:Landroid/view/ViewConfiguration;

    new-instance v0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-direct {v0, p1, p2, v7}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;-><init>(Lcom/android/internal/policy/impl/PhoneZoom;Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .local v8, wparams:Landroid/view/WindowManager$LayoutParams;
    const v0, -0x7ffffde8

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v0, 0x7d6

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v3, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p3, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p4, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->scaleX:F

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->scaleY:F

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->transX:I

    iput v3, v8, Landroid/view/WindowManager$LayoutParams;->transY:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->createGlassHandle(Landroid/content/Context;IIIIZ)Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassTopHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move v5, p4

    move v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->createGlassHandle(Landroid/content/Context;IIIIZ)Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassBottomHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->adjustParams(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->moveBy(FF)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->drawMagnifyingGlass(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->decreaseZoom()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->increaseZoom()V

    return-void
.end method

.method private adjustParams(II)V
    .locals 4
    .parameter "w"
    .parameter "h"

    .prologue
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$700()I

    move-result v3

    sub-int/2addr v3, p1

    div-int/lit8 v0, v3, 0x2

    .local v0, left:I
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$900()I

    move-result v3

    sub-int/2addr v3, p2

    div-int/lit8 v1, v3, 0x2

    .local v1, top:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .local v2, wparams:Landroid/view/WindowManager$LayoutParams;
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassTopHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1900()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2600()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassTopHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassBottomHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1900()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2600()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassBottomHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private createGlassHandle(Landroid/content/Context;IIIIZ)Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;
    .locals 10
    .parameter "context"
    .parameter "left"
    .parameter "top"
    .parameter "w"
    .parameter "h"
    .parameter "isTopHandle"

    .prologue
    new-instance v4, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass$2;

    invoke-direct {v4, p0, p1}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass$2;-><init>(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;Landroid/content/Context;)V

    .local v4, mglassHandleView:Landroid/widget/LinearLayout;
    if-nez v4, :cond_0

    const-string v6, "PhoneZoom"

    const-string v7, "mglassHandleView is null!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_0
    const v6, 0x1080354

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2300()I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000

    mul-double/2addr v6, v8

    double-to-int v2, v6

    .local v2, button_width:I
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2300()I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000

    mul-double/2addr v6, v8

    double-to-int v1, v6

    .local v1, button_height:I
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .local v0, b:Landroid/widget/Button;
    if-eqz v0, :cond_1

    new-instance v6, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass$3;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass$3;-><init>(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v6, 0x108014f

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    invoke-virtual {v4, v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    :cond_1
    new-instance v0, Landroid/widget/Button;

    .end local v0           #b:Landroid/widget/Button;
    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .restart local v0       #b:Landroid/widget/Button;
    if-eqz v0, :cond_2

    new-instance v6, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass$4;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass$4;-><init>(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v6, 0x1080158

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    invoke-virtual {v4, v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    :cond_2
    new-instance v3, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->this$0:Lcom/android/internal/policy/impl/PhoneZoom;

    invoke-direct {v3, v6, p1, v4}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;-><init>(Lcom/android/internal/policy/impl/PhoneZoom;Landroid/content/Context;Landroid/view/View;)V

    .local v3, mMGlassHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .local v5, wparams:Landroid/view/WindowManager$LayoutParams;
    const/16 v6, 0x208

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v6, 0x7e0

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    div-int/lit8 v6, p4, 0x2

    add-int/2addr v6, p2

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1900()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eqz p6, :cond_3

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2600()I

    move-result v6

    sub-int v6, p3, v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_1
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1900()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2600()I

    move-result v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    move-object v6, v3

    goto/16 :goto_0

    :cond_3
    add-int v6, p3, p5

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1
.end method

.method private decreaseZoom()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, glassParams:Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->scaleX:F

    const/high16 v3, 0x3f00

    sub-float v1, v2, v3

    .local v1, scale:F
    const/high16 v2, 0x3f80

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    const/high16 v1, 0x3f80

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v2, v1, v1}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->scale(FF)V

    invoke-direct {p0, v4, v4}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->moveBy(FF)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->update()V

    return-void
.end method

.method private drawMagnifyingGlass(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/high16 v5, 0x40a0

    const/4 v2, 0x0

    const/16 v4, 0xc0

    const/4 v3, 0x1

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .local v1, rect:Landroid/graphics/RectF;
    iput v2, v1, Landroid/graphics/RectF;->left:F

    iput v2, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .local v0, p:Landroid/graphics/Paint;
    const/16 v2, 0xff

    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, 0x4020

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, v1, v5, v5, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, action:I
    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mY:F

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mInScrollMode:Z

    :cond_0
    :goto_0
    move v6, v8

    :goto_1
    return v6

    :cond_1
    const/4 v6, 0x2

    if-ne v0, v6, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    .local v4, tx:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    .local v5, ty:F
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mX:F

    sub-float v6, v4, v6

    float-to-int v1, v6

    .local v1, deltaX:I
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mY:F

    sub-float v6, v5, v6

    float-to-int v2, v6

    .local v2, deltaY:I
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mInScrollMode:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    .local v3, touchSlop:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v3, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v3, :cond_2

    move v6, v8

    goto :goto_1

    :cond_2
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mInScrollMode:Z

    .end local v3           #touchSlop:I
    :cond_3
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mX:F

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mY:F

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->moveBy(FF)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->update()V

    goto :goto_0

    .end local v1           #deltaX:I
    .end local v2           #deltaY:I
    .end local v4           #tx:F
    .end local v5           #ty:F
    :cond_4
    if-ne v0, v8, :cond_5

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mInScrollMode:Z

    goto :goto_0

    :cond_5
    const/4 v6, 0x4

    if-ne v0, v6, :cond_0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mInScrollMode:Z

    goto :goto_0
.end method

.method private increaseZoom()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, glassParams:Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->scaleX:F

    const/high16 v3, 0x3f00

    add-float v1, v2, v3

    .local v1, scale:F
    const/high16 v2, 0x4080

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    const/high16 v1, 0x4080

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v2, v1, v1}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->scale(FF)V

    invoke-direct {p0, v4, v4}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->moveBy(FF)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->update()V

    return-void
.end method

.method private moveBy(FF)V
    .locals 11
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/high16 v8, 0x4000

    const/high16 v10, 0x3f00

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, glassParams:Landroid/view/WindowManager$LayoutParams;
    iget v7, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v7, v7

    div-float v2, v7, v8

    .local v2, halfW:F
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v7, v7

    div-float v1, v7, v8

    .local v1, halfH:F
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v7, v7

    add-float/2addr v7, p1

    add-float/2addr v7, v10

    float-to-int v5, v7

    .local v5, x:I
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v7, v7

    add-float/2addr v7, p2

    add-float/2addr v7, v10

    float-to-int v6, v7

    .local v6, y:I
    int-to-float v7, v5

    neg-float v8, v2

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    neg-float v7, v2

    float-to-int v5, v7

    :cond_0
    :goto_0
    int-to-float v7, v6

    neg-float v8, v1

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2300()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    neg-float v7, v1

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2300()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v6, v7

    :cond_1
    :goto_1
    int-to-float v7, v5

    add-float/2addr v7, v2

    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->scaleX:F

    mul-float/2addr v7, v8

    sub-float/2addr v7, v2

    add-float/2addr v7, v10

    float-to-int v3, v7

    .local v3, tx:I
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2300()I

    move-result v7

    add-int/2addr v7, v6

    int-to-float v7, v7

    add-float/2addr v7, v1

    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->scaleY:F

    mul-float/2addr v7, v8

    sub-float/2addr v7, v1

    add-float/2addr v7, v10

    float-to-int v4, v7

    .local v4, ty:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v7, v3, v4}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->translate(II)V

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v7, v5, v7

    int-to-float p1, v7

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v7, v6, v7

    int-to-float p2, v7

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v7, p1, p2}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->moveBy(FF)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassTopHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v7, p1, p2}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->moveBy(FF)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassBottomHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v7, p1, p2}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->moveBy(FF)V

    return-void

    .end local v3           #tx:I
    .end local v4           #ty:I
    :cond_2
    int-to-float v7, v5

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$700()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v2

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$700()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v2

    float-to-int v5, v7

    goto :goto_0

    :cond_3
    int-to-float v7, v6

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$900()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v1

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2300()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$900()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v1

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2300()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v6, v7

    goto :goto_1
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassTopHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->hide()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassBottomHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->hide()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->hide()V

    return-void
.end method

.method public setSize(II)V
    .locals 6
    .parameter "w"
    .parameter "h"

    .prologue
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->setSize(II)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, glassParams:Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassTopHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .local v1, handleParams:Landroid/view/WindowManager$LayoutParams;
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    sub-int v2, v4, v5

    .local v2, x:I
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2600()I

    move-result v5

    sub-int v3, v4, v5

    .local v3, y:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassTopHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v4, v2, v3}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->setPosition(II)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassBottomHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    sub-int v2, v4, v5

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int v3, v4, v5

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassBottomHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v4, v2, v3}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->setPosition(II)V

    return-void
.end method

.method public setZoom(F)V
    .locals 1
    .parameter "scale"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v0, p1, p1}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->scale(FF)V

    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->show()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassTopHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->show()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassBottomHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->show()V

    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->update()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassTopHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->update()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassBottomHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->update()V

    return-void
.end method
