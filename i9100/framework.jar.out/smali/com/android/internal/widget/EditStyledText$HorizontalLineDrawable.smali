.class public Lcom/android/internal/widget/EditStyledText$HorizontalLineDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HorizontalLineDrawable"
.end annotation


# instance fields
.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/internal/widget/EditStyledText;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/EditStyledText;ILandroid/view/View;)V
    .locals 1
    .parameter
    .parameter "color"
    .parameter "view"

    .prologue
    .line 1595
    iput-object p1, p0, Lcom/android/internal/widget/EditStyledText$HorizontalLineDrawable;->this$0:Lcom/android/internal/widget/EditStyledText;

    .line 1596
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1597
    iput-object p3, p0, Lcom/android/internal/widget/EditStyledText$HorizontalLineDrawable;->mView:Landroid/view/View;

    .line 1598
    invoke-direct {p0, p2}, Lcom/android/internal/widget/EditStyledText$HorizontalLineDrawable;->renewColor(I)V

    .line 1599
    invoke-direct {p0, p3}, Lcom/android/internal/widget/EditStyledText$HorizontalLineDrawable;->renewBounds(Landroid/view/View;)V

    .line 1600
    return-void
.end method

.method private getParentSpan()Landroid/text/style/ImageSpan;
    .locals 9

    .prologue
    .line 1648
    iget-object v6, p0, Lcom/android/internal/widget/EditStyledText$HorizontalLineDrawable;->mView:Landroid/view/View;

    instance-of v6, v6, Lcom/android/internal/widget/EditStyledText;

    if-eqz v6, :cond_1

    .line 1649
    iget-object v6, p0, Lcom/android/internal/widget/EditStyledText$HorizontalLineDrawable;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v6}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 1650
    .local v5, text:Landroid/text/Editable;
    const/4 v6, 0x0

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v7

    const-class v8, Landroid/text/style/ImageSpan;

    invoke-interface {v5, v6, v7, v8}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ImageSpan;

    .line 1651
    .local v3, images:[Landroid/text/style/ImageSpan;
    array-length v6, v3

    if-lez v6, :cond_1

    .line 1652
    move-object v0, v3

    .local v0, arr$:[Landroid/text/style/ImageSpan;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 1653
    .local v2, image:Landroid/text/style/ImageSpan;
    invoke-virtual {v2}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-ne v6, p0, :cond_0

    move-object v6, v2

    .line 1660
    .end local v0           #arr$:[Landroid/text/style/ImageSpan;
    .end local v1           #i$:I
    .end local v2           #image:Landroid/text/style/ImageSpan;
    .end local v3           #images:[Landroid/text/style/ImageSpan;
    .end local v4           #len$:I
    .end local v5           #text:Landroid/text/Editable;
    :goto_1
    return-object v6

    .line 1652
    .restart local v0       #arr$:[Landroid/text/style/ImageSpan;
    .restart local v1       #i$:I
    .restart local v2       #image:Landroid/text/style/ImageSpan;
    .restart local v3       #images:[Landroid/text/style/ImageSpan;
    .restart local v4       #len$:I
    .restart local v5       #text:Landroid/text/Editable;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1659
    .end local v0           #arr$:[Landroid/text/style/ImageSpan;
    .end local v1           #i$:I
    .end local v2           #image:Landroid/text/style/ImageSpan;
    .end local v3           #images:[Landroid/text/style/ImageSpan;
    .end local v4           #len$:I
    .end local v5           #text:Landroid/text/Editable;
    :cond_1
    const-string v6, "EditStyledText"

    const-string v7, "---renewBounds: Couldn\'t find"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private renewBounds(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 1618
    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$HorizontalLineDrawable;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1619
    .local v0, width:I
    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 1620
    add-int/lit8 v0, v0, -0x14

    .line 1622
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/internal/widget/EditStyledText$HorizontalLineDrawable;->setBounds(IIII)V

    .line 1623
    return-void
.end method

.method private renewColor()V
    .locals 6

    .prologue
    .line 1634
    iget-object v4, p0, Lcom/android/internal/widget/EditStyledText$HorizontalLineDrawable;->mView:Landroid/view/View;

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 1635
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$HorizontalLineDrawable;->getParentSpan()Landroid/text/style/ImageSpan;

    move-result-object v0

    .line 1636
    .local v0, parent:Landroid/text/style/ImageSpan;
    iget-object v4, p0, Lcom/android/internal/widget/EditStyledText$HorizontalLineDrawable;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v4}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 1637
    .local v3, text:Landroid/text/Editable;
    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 1638
    .local v2, start:I
    const-class v4, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v3, v2, v2, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ForegroundColorSpan;

    .line 1639
    .local v1, spans:[Landroid/text/style/ForegroundColorSpan;
    array-length v4, v1

    if-lez v4, :cond_0

    .line 1640
    array-length v4, v1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget-object v4, v1, v4

    invoke-virtual {v4}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/widget/EditStyledText$HorizontalLineDrawable;->renewColor(I)V

    .line 1643
    .end local v0           #parent:Landroid/text/style/ImageSpan;
    .end local v1           #spans:[Landroid/text/style/ForegroundColorSpan;
    .end local v2           #start:I
    .end local v3           #text:Landroid/text/Editable;
    :cond_0
    return-void
.end method

.method private renewColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 1628
    invoke-virtual {p0}, Lcom/android/internal/widget/EditStyledText$HorizontalLineDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1629
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 1606
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$HorizontalLineDrawable;->renewColor()V

    .line 1607
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$HorizontalLineDrawable;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/EditStyledText$HorizontalLineDrawable;->renewBounds(Landroid/view/View;)V

    .line 1608
    invoke-super {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1609
    return-void
.end method
