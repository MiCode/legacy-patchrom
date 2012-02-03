.class public Landroid/widget/TableRow$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "TableRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TableRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final LOCATION:I = 0x0

.field private static final LOCATION_NEXT:I = 0x1


# instance fields
.field public column:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mOffset:[I

.field public span:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 454
    const/4 v0, -0x2

    invoke-direct {p0, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 402
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 455
    iput v1, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    .line 456
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 457
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "column"

    .prologue
    .line 469
    invoke-direct {p0}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    .line 470
    iput p1, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    .line 471
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 430
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 402
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 431
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    .line 432
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 433
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "initWeight"

    .prologue
    .line 443
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 402
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 444
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    .line 445
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 446
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    .line 408
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 402
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 410
    sget-object v1, Lcom/android/internal/R$styleable;->TableRow_Cell:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 414
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    .line 415
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 416
    iget v1, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    if-gt v1, v3, :cond_0

    .line 417
    iput v3, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 420
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 421
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 477
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 478
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 484
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 402
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 485
    return-void
.end method

.method static synthetic access$200(Landroid/widget/TableRow$LayoutParams;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 386
    iget-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    return-object v0
.end method


# virtual methods
.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 1
    .parameter "a"
    .parameter "widthAttr"
    .parameter "heightAttr"

    .prologue
    .line 490
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    const-string v0, "layout_width"

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 497
    :goto_0
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    const-string v0, "layout_height"

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 502
    :goto_1
    return-void

    .line 493
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 500
    :cond_1
    const/4 v0, -0x2

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1
.end method
