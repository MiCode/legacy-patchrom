.class public Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
.super Landroid/widget/LinearLayout;
.source "LinearLayoutWithDefaultTouchRecepient.java"


# instance fields
.field private mDefaultTouchRecepient:Landroid/view/View;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mTempRect:Landroid/graphics/Rect;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mTempRect:Landroid/graphics/Rect;

    .line 45
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mDefaultTouchRecepient:Landroid/view/View;

    if-nez v0, :cond_0

    .line 54
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 63
    :goto_0
    return v0

    .line 57
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const/4 v0, 0x1

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 61
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mDefaultTouchRecepient:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 63
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mDefaultTouchRecepient:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setDefaultTouchRecepient(Landroid/view/View;)V
    .locals 0
    .parameter "defaultTouchRecepient"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mDefaultTouchRecepient:Landroid/view/View;

    .line 49
    return-void
.end method
