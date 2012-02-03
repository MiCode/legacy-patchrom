.class public Landroid/widget/TwoLineListItem;
.super Landroid/widget/RelativeLayout;
.source "TwoLineListItem.java"


# instance fields
.field private mText1:Landroid/widget/TextView;

.field private mText2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/TwoLineListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TwoLineListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    sget-object v1, Lcom/android/internal/R$styleable;->TwoLineListItem:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    return-void
.end method


# virtual methods
.method public getText1()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Landroid/widget/TwoLineListItem;->mText1:Landroid/widget/TextView;

    return-object v0
.end method

.method public getText2()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/widget/TwoLineListItem;->mText2:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 70
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Landroid/widget/TwoLineListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TwoLineListItem;->mText1:Landroid/widget/TextView;

    .line 71
    const v0, 0x1020015

    invoke-virtual {p0, v0}, Landroid/widget/TwoLineListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TwoLineListItem;->mText2:Landroid/widget/TextView;

    .line 72
    return-void
.end method
