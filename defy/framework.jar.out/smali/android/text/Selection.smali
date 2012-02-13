.class public Landroid/text/Selection;
.super Ljava/lang/Object;
.source "Selection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Selection$1;,
        Landroid/text/Selection$END;,
        Landroid/text/Selection$START;
    }
.end annotation


# static fields
.field public static final SELECTION_END:Ljava/lang/Object;

.field public static final SELECTION_START:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    new-instance v0, Landroid/text/Selection$START;

    invoke-direct {v0, v1}, Landroid/text/Selection$START;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    new-instance v0, Landroid/text/Selection$END;

    invoke-direct {v0, v1}, Landroid/text/Selection$END;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static chooseHorizontal(Landroid/text/Layout;III)I
    .locals 7
    .parameter "layout"
    .parameter "direction"
    .parameter "off1"
    .parameter "off2"

    .prologue
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .local v3, line1:I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .local v4, line2:I
    if-ne v3, v4, :cond_3

    invoke-virtual {p0, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .local v0, h1:F
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .local v1, h2:F
    if-gez p1, :cond_1

    cmpg-float v6, v0, v1

    if-gez v6, :cond_0

    move v6, p2

    .end local v0           #h1:F
    .end local v1           #h2:F
    :goto_0
    return v6

    .restart local v0       #h1:F
    .restart local v1       #h2:F
    :cond_0
    move v6, p3

    goto :goto_0

    :cond_1
    cmpl-float v6, v0, v1

    if-lez v6, :cond_2

    move v6, p2

    goto :goto_0

    :cond_2
    move v6, p3

    goto :goto_0

    .end local v0           #h1:F
    .end local v1           #h2:F
    :cond_3
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .local v2, line:I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .local v5, textdir:I
    if-ne v5, p1, :cond_4

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    :cond_4
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_0
.end method

.method public static extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 7
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v6, 0x1

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .local v2, line:I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v6

    if-ge v2, v4, :cond_1

    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .local v1, h:F
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .end local v1           #h:F
    .local v3, move:I
    :goto_0
    invoke-static {p0, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    move v4, v6

    .end local v3           #move:I
    :goto_1
    return v4

    :cond_0
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .restart local v3       #move:I
    goto :goto_0

    .end local v3           #move:I
    :cond_1
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-eq v0, v4, :cond_2

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    invoke-static {p0, v4}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    move v4, v6

    goto :goto_1

    :cond_2
    move v4, v6

    goto :goto_1
.end method

.method public static extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 3
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v2, 0x1

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v1

    .local v1, to:I
    if-eq v1, v0, :cond_0

    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    :cond_0
    return v2
.end method

.method public static extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 3
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v2, 0x1

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v1

    .local v1, to:I
    if-eq v1, v0, :cond_0

    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    :cond_0
    return v2
.end method

.method public static final extendSelection(Landroid/text/Spannable;I)V
    .locals 2
    .parameter "text"
    .parameter "index"

    .prologue
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, p1, :cond_0

    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v1, 0x22

    invoke-interface {p0, v0, p1, p1, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method public static extendToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v1, -0x1

    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    const/4 v1, 0x1

    return v1
.end method

.method public static extendToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    return v1
.end method

.method public static extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 7
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v6, 0x1

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .local v2, line:I
    if-lez v2, :cond_1

    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    sub-int v5, v2, v6

    invoke-virtual {p1, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .local v1, h:F
    sub-int v4, v2, v6

    invoke-virtual {p1, v4, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .end local v1           #h:F
    .local v3, move:I
    :goto_0
    invoke-static {p0, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    move v4, v6

    .end local v3           #move:I
    :goto_1
    return v4

    :cond_0
    sub-int v4, v2, v6

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .restart local v3       #move:I
    goto :goto_0

    .end local v3           #move:I
    :cond_1
    if-eqz v0, :cond_2

    const/4 v4, 0x0

    invoke-static {p0, v4}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    move v4, v6

    goto :goto_1

    :cond_2
    move v4, v6

    goto :goto_1
.end method

.method private static findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I
    .locals 6
    .parameter "text"
    .parameter "layout"
    .parameter "dir"

    .prologue
    const/4 v5, 0x1

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .local v3, pt:I
    invoke-virtual {p1, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .local v1, line:I
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    .local v2, pdir:I
    mul-int v4, p2, v2

    if-gez v4, :cond_0

    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .local v0, end:I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v5

    if-ne v1, v4, :cond_1

    move v4, v0

    goto :goto_0

    :cond_1
    sub-int v4, v0, v5

    goto :goto_0
.end method

.method public static final getSelectionEnd(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "text"

    .prologue
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/text/Spanned;

    .end local p0
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final getSelectionStart(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "text"

    .prologue
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/text/Spanned;

    .end local p0
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 10
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .local v6, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .local v0, end:I
    if-eq v6, v0, :cond_1

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .local v4, min:I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .local v3, max:I
    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    if-nez v4, :cond_0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v7

    if-ne v3, v7, :cond_0

    move v7, v8

    .end local v3           #max:I
    .end local v4           #min:I
    :goto_0
    return v7

    .restart local v3       #max:I
    .restart local v4       #min:I
    :cond_0
    move v7, v9

    goto :goto_0

    .end local v3           #max:I
    .end local v4           #min:I
    :cond_1
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .local v2, line:I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v7

    sub-int/2addr v7, v9

    if-ge v2, v7, :cond_3

    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v8

    if-ne v7, v8, :cond_2

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .local v1, h:F
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    .end local v1           #h:F
    .local v5, move:I
    :goto_1
    invoke-static {p0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v7, v9

    goto :goto_0

    .end local v5           #move:I
    :cond_2
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .restart local v5       #move:I
    goto :goto_1

    .end local v5           #move:I
    :cond_3
    move v7, v8

    goto :goto_0
.end method

.method public static moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 5
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v4, 0x1

    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .local v1, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .local v0, end:I
    if-eq v1, v0, :cond_0

    const/4 v3, -0x1

    invoke-static {p1, v3, v1, v0}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v3

    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v3, v4

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v2

    .local v2, to:I
    if-eq v2, v0, :cond_1

    invoke-static {p0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 5
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v4, 0x1

    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .local v1, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .local v0, end:I
    if-eq v1, v0, :cond_0

    invoke-static {p1, v4, v1, v0}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v3

    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v3, v4

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v2

    .local v2, to:I
    if-eq v2, v0, :cond_1

    invoke-static {p0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static moveToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v1, -0x1

    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    const/4 v1, 0x1

    return v1
.end method

.method public static moveToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return v1
.end method

.method public static moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 10
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .local v6, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .local v0, end:I
    if-eq v6, v0, :cond_1

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .local v4, min:I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .local v3, max:I
    invoke-static {p0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    if-nez v4, :cond_0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v7

    if-ne v3, v7, :cond_0

    move v7, v8

    .end local v3           #max:I
    .end local v4           #min:I
    :goto_0
    return v7

    .restart local v3       #max:I
    .restart local v4       #min:I
    :cond_0
    move v7, v9

    goto :goto_0

    .end local v3           #max:I
    .end local v4           #min:I
    :cond_1
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .local v2, line:I
    if-lez v2, :cond_3

    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    sub-int v8, v2, v9

    invoke-virtual {p1, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v8

    if-ne v7, v8, :cond_2

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .local v1, h:F
    sub-int v7, v2, v9

    invoke-virtual {p1, v7, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    .end local v1           #h:F
    .local v5, move:I
    :goto_1
    invoke-static {p0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v7, v9

    goto :goto_0

    .end local v5           #move:I
    :cond_2
    sub-int v7, v2, v9

    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .restart local v5       #move:I
    goto :goto_1

    .end local v5           #move:I
    :cond_3
    move v7, v8

    goto :goto_0
.end method

.method public static final removeSelection(Landroid/text/Spannable;)V
    .locals 1
    .parameter "text"

    .prologue
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method public static final selectAll(Landroid/text/Spannable;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method public static final setSelection(Landroid/text/Spannable;I)V
    .locals 0
    .parameter "text"
    .parameter "index"

    .prologue
    invoke-static {p0, p1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method public static setSelection(Landroid/text/Spannable;II)V
    .locals 4
    .parameter "text"
    .parameter "start"
    .parameter "stop"

    .prologue
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .local v1, ostart:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .local v0, oend:I
    if-ne v1, p1, :cond_0

    if-eq v0, p2, :cond_1

    :cond_0
    sget-object v2, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v3, 0x222

    invoke-interface {p0, v2, p1, p1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    sget-object v2, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v3, 0x22

    invoke-interface {p0, v2, p2, p2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-void
.end method
