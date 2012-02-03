.class Landroid/widget/TextView$ErrorPopup;
.super Landroid/widget/PopupWindow;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorPopup"
.end annotation


# instance fields
.field private mAbove:Z

.field private final mView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;II)V
    .locals 1
    .parameter "v"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3566
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 3562
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$ErrorPopup;->mAbove:Z

    .line 3567
    iput-object p1, p0, Landroid/widget/TextView$ErrorPopup;->mView:Landroid/widget/TextView;

    .line 3568
    return-void
.end method


# virtual methods
.method fixDirection(Z)V
    .locals 2
    .parameter "above"

    .prologue
    .line 3571
    iput-boolean p1, p0, Landroid/widget/TextView$ErrorPopup;->mAbove:Z

    .line 3573
    if-eqz p1, :cond_0

    .line 3574
    iget-object v0, p0, Landroid/widget/TextView$ErrorPopup;->mView:Landroid/widget/TextView;

    const v1, 0x108026c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3578
    :goto_0
    return-void

    .line 3576
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$ErrorPopup;->mView:Landroid/widget/TextView;

    const v1, 0x108026b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public update(IIIIZ)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "force"

    .prologue
    .line 3582
    invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 3584
    invoke-virtual {p0}, Landroid/widget/TextView$ErrorPopup;->isAboveAnchor()Z

    move-result v0

    .line 3585
    .local v0, above:Z
    iget-boolean v1, p0, Landroid/widget/TextView$ErrorPopup;->mAbove:Z

    if-eq v0, v1, :cond_0

    .line 3586
    invoke-virtual {p0, v0}, Landroid/widget/TextView$ErrorPopup;->fixDirection(Z)V

    .line 3588
    :cond_0
    return-void
.end method
