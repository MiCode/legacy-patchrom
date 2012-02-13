.class public final Landroid/view/ViewStub;
.super Landroid/view/View;
.source "ViewStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewStub$OnInflateListener;
    }
.end annotation


# instance fields
.field private mInflateListener:Landroid/view/ViewStub$OnInflateListener;

.field private mInflatedId:I

.field private mInflatedViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0}, Landroid/view/View;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewStub;->mLayoutResource:I

    invoke-direct {p0, p1}, Landroid/view/ViewStub;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "layoutResource"

    .prologue
    invoke-direct {p0}, Landroid/view/View;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewStub;->mLayoutResource:I

    iput p2, p0, Landroid/view/ViewStub;->mLayoutResource:I

    invoke-direct {p0, p1}, Landroid/view/ViewStub;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/view/View;-><init>()V

    iput v2, p0, Landroid/view/ViewStub;->mLayoutResource:I

    sget-object v1, Lcom/android/internal/R$styleable;->ViewStub:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/view/ViewStub;->mInflatedId:I

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/view/ViewStub;->mLayoutResource:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/view/View;->mID:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1}, Landroid/view/ViewStub;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewStub;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewStub;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    return-void
.end method

.method public getInflatedId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/ViewStub;->mInflatedId:I

    return v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/ViewStub;->mLayoutResource:I

    return v0
.end method

.method public inflate()Landroid/view/View;
    .locals 9

    .prologue
    invoke-virtual {p0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .local v6, viewParent:Landroid/view/ViewParent;
    if-eqz v6, :cond_4

    instance-of v7, v6, Landroid/view/ViewGroup;

    if-eqz v7, :cond_4

    iget v7, p0, Landroid/view/ViewStub;->mLayoutResource:I

    if-eqz v7, :cond_3

    move-object v0, v6

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    .local v4, parent:Landroid/view/ViewGroup;
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .local v1, factory:Landroid/view/LayoutInflater;
    iget v7, p0, Landroid/view/ViewStub;->mLayoutResource:I

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .local v5, view:Landroid/view/View;
    iget v7, p0, Landroid/view/ViewStub;->mInflatedId:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    iget v7, p0, Landroid/view/ViewStub;->mInflatedId:I

    invoke-virtual {v5, v7}, Landroid/view/View;->setId(I)V

    :cond_0
    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .local v2, index:I
    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .local v3, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v3, :cond_2

    invoke-virtual {v4, v5, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v7, p0, Landroid/view/ViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Landroid/view/ViewStub;->mInflateListener:Landroid/view/ViewStub$OnInflateListener;

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/view/ViewStub;->mInflateListener:Landroid/view/ViewStub$OnInflateListener;

    invoke-interface {v7, p0, v5}, Landroid/view/ViewStub$OnInflateListener;->onInflate(Landroid/view/ViewStub;Landroid/view/View;)V

    :cond_1
    return-object v5

    :cond_2
    invoke-virtual {v4, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .end local v1           #factory:Landroid/view/LayoutInflater;
    .end local v2           #index:I
    .end local v3           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #parent:Landroid/view/ViewGroup;
    .end local v5           #view:Landroid/view/View;
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "ViewStub must have a valid layoutResource"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "ViewStub must have a non-null ViewGroup viewParent"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/view/ViewStub;->setMeasuredDimension(II)V

    return-void
.end method

.method public setInflatedId(I)V
    .locals 0
    .parameter "inflatedId"

    .prologue
    iput p1, p0, Landroid/view/ViewStub;->mInflatedId:I

    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0
    .parameter "layoutResource"

    .prologue
    iput p1, p0, Landroid/view/ViewStub;->mLayoutResource:I

    return-void
.end method

.method public setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V
    .locals 0
    .parameter "inflateListener"

    .prologue
    iput-object p1, p0, Landroid/view/ViewStub;->mInflateListener:Landroid/view/ViewStub$OnInflateListener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    iget-object v1, p0, Landroid/view/ViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .end local v0           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .restart local v0       #view:Landroid/view/View;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "setVisibility called on un-referenced view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0           #view:Landroid/view/View;
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_3

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto :goto_0
.end method
