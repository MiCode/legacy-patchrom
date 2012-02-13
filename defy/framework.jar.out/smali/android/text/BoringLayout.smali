.class public Landroid/text/BoringLayout;
.super Landroid/text/Layout;
.source "BoringLayout.java"

# interfaces
.implements Landroid/text/TextUtils$EllipsizeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/BoringLayout$Metrics;
    }
.end annotation


# static fields
.field private static final FIRST_RIGHT_TO_LEFT:C = '\u0590'

.field private static final sTemp:Landroid/text/TextPaint;


# instance fields
.field mBottom:I

.field private mBottomPadding:I

.field mDesc:I

.field private mDirect:Ljava/lang/String;

.field private mEllipsizedCount:I

.field private mEllipsizedStart:I

.field private mEllipsizedWidth:I

.field private mMax:F

.field private mPaint:Landroid/graphics/Paint;

.field private mTopPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Landroid/text/BoringLayout;->sTemp:Landroid/text/TextPaint;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V
    .locals 10
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"

    .prologue
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 12
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    if-eqz p9, :cond_0

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p9

    move-object v1, v2

    if-ne v0, v1, :cond_1

    :cond_0
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    const/4 v11, 0x1

    .local v11, trust:Z
    :goto_0
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    return-void

    .end local v11           #trust:Z
    :cond_1
    move/from16 v0, p10

    int-to-float v0, v0

    move v4, v0

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p9

    move-object v7, p0

    invoke-static/range {v2 .. v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    move/from16 v0, p10

    move-object v1, p0

    iput v0, v1, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    const/4 v11, 0x0

    .restart local v11       #trust:Z
    goto :goto_0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;
    .locals 1
    .parameter "text"
    .parameter "paint"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 9
    .parameter "text"
    .parameter "paint"
    .parameter "metrics"

    .prologue
    const/16 v1, 0x1f4

    invoke-static {v1}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v7

    .local v7, temp:[C
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .local v5, len:I
    const/4 v2, 0x1

    .local v2, boring:Z
    const/4 v1, 0x0

    .local v1, i:I
    move v4, v1

    .end local v1           #i:I
    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_7

    add-int/lit16 v1, v4, 0x1f4

    .local v1, j:I
    if-le v1, v5, :cond_0

    move v1, v5

    :cond_0
    const/4 v3, 0x0

    invoke-static {p0, v4, v1, v7, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v6, v1, v4

    .local v6, n:I
    const/4 v1, 0x0

    .local v1, a:I
    :goto_1
    if-ge v1, v6, :cond_5

    aget-char v3, v7, v1

    .local v3, c:C
    const/16 v8, 0xa

    if-eq v3, v8, :cond_1

    const/16 v8, 0x9

    if-eq v3, v8, :cond_1

    const/16 v8, 0x590

    if-lt v3, v8, :cond_4

    :cond_1
    const/4 v1, 0x0

    .end local v2           #boring:Z
    .end local v3           #c:C
    .end local v6           #n:I
    .local v1, boring:Z
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->recycle([C)V

    if-eqz v1, :cond_2

    instance-of v2, p0, Landroid/text/Spanned;

    if-eqz v2, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v2, v0

    .local v2, sp:Landroid/text/Spanned;
    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .end local v4           #i:I
    const-class v5, Landroid/text/style/ParagraphStyle;

    .end local v5           #len:I
    invoke-interface {v2, v3, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .local v2, styles:[Ljava/lang/Object;
    array-length v2, v2

    .end local v2           #styles:[Ljava/lang/Object;
    if-lez v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    if-eqz v1, :cond_6

    move-object v6, p2

    .local v6, fm:Landroid/text/BoringLayout$Metrics;
    if-nez v6, :cond_3

    new-instance v6, Landroid/text/BoringLayout$Metrics;

    .end local v6           #fm:Landroid/text/BoringLayout$Metrics;
    invoke-direct {v6}, Landroid/text/BoringLayout$Metrics;-><init>()V

    .restart local v6       #fm:Landroid/text/BoringLayout$Metrics;
    :cond_3
    sget-object p2, Landroid/text/BoringLayout;->sTemp:Landroid/text/TextPaint;

    .end local p2
    monitor-enter p2

    :try_start_0
    sget-object v2, Landroid/text/BoringLayout;->sTemp:Landroid/text/TextPaint;

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v1, p1

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    .end local v1           #boring:Z
    move-result p0

    .end local p0
    invoke-static {p0}, Landroid/util/FloatMath;->ceil(F)F

    move-result p0

    float-to-int p0, p0

    .local p0, wid:I
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput p0, v6, Landroid/text/BoringLayout$Metrics;->width:I

    move-object p0, v6

    .end local v6           #fm:Landroid/text/BoringLayout$Metrics;
    .end local p0           #wid:I
    :goto_3
    return-object p0

    .local v1, a:I
    .local v2, boring:Z
    .restart local v3       #c:C
    .restart local v4       #i:I
    .restart local v5       #len:I
    .local v6, n:I
    .local p0, text:Ljava/lang/CharSequence;
    .restart local p2
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #c:C
    :cond_5
    add-int/lit16 v1, v4, 0x1f4

    .end local v4           #i:I
    .local v1, i:I
    move v4, v1

    .end local v1           #i:I
    .restart local v4       #i:I
    goto :goto_0

    .end local v2           #boring:Z
    .end local v4           #i:I
    .end local v5           #len:I
    .end local p0           #text:Ljava/lang/CharSequence;
    .end local p2
    .local v6, fm:Landroid/text/BoringLayout$Metrics;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .end local v6           #fm:Landroid/text/BoringLayout$Metrics;
    .local v1, boring:Z
    .restart local p0       #text:Ljava/lang/CharSequence;
    .restart local p2
    :cond_6
    const/4 p0, 0x0

    goto :goto_3

    .end local v1           #boring:Z
    .restart local v2       #boring:Z
    .restart local v4       #i:I
    .restart local v5       #len:I
    :cond_7
    move v1, v2

    .end local v2           #boring:Z
    .restart local v1       #boring:Z
    goto :goto_2
.end method

.method public static make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .locals 9
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"

    .prologue
    new-instance v0, Landroid/text/BoringLayout;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V

    return-object v0
.end method

.method public static make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .locals 11
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    new-instance v0, Landroid/text/BoringLayout;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 4
    .parameter "c"
    .parameter "highlight"
    .parameter "highlightpaint"
    .parameter "cursorOffset"

    .prologue
    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Landroid/text/BoringLayout;->mBottom:I

    iget v3, p0, Landroid/text/BoringLayout;->mDesc:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_0
.end method

.method public ellipsized(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    iput p1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    sub-int v0, p2, p1

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    return-void
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 1
    .parameter "line"

    .prologue
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    return v0
.end method

.method public getEllipsisStart(I)I
    .locals 1
    .parameter "line"

    .prologue
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    return v0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 1
    .parameter "line"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public getLineDescent(I)I
    .locals 1
    .parameter "line"

    .prologue
    iget v0, p0, Landroid/text/BoringLayout;->mDesc:I

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .parameter "line"

    .prologue
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public getLineMax(I)F
    .locals 1
    .parameter "line"

    .prologue
    iget v0, p0, Landroid/text/BoringLayout;->mMax:F

    return v0
.end method

.method public getLineStart(I)I
    .locals 1
    .parameter "line"

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method public getLineTop(I)I
    .locals 1
    .parameter "line"

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    goto :goto_0
.end method

.method public getParagraphDirection(I)I
    .locals 1
    .parameter "line"

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/text/BoringLayout;->mTopPadding:I

    return v0
.end method

.method init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V
    .locals 7
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"
    .parameter "trustWidth"

    .prologue
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne p4, v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    :goto_0
    iput-object p2, p0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz p8, :cond_4

    iget v0, p7, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, p7, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v6, v0, v1

    .local v6, spacing:I
    :goto_1
    const/high16 v0, 0x3f80

    cmpl-float v0, p5, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p6, v0

    if-eqz v0, :cond_1

    :cond_0
    int-to-float v0, v6

    mul-float/2addr v0, p5

    add-float/2addr v0, p6

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v6, v0

    :cond_1
    iput v6, p0, Landroid/text/BoringLayout;->mBottom:I

    if-eqz p8, :cond_5

    iget v0, p7, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v0, v6

    iput v0, p0, Landroid/text/BoringLayout;->mDesc:I

    :goto_2
    if-eqz p9, :cond_6

    iget v0, p7, Landroid/text/BoringLayout$Metrics;->width:I

    int-to-float v0, v0

    iput v0, p0, Landroid/text/BoringLayout;->mMax:F

    .end local v6           #spacing:I
    :goto_3
    if-eqz p8, :cond_2

    iget v0, p7, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v1, p7, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/text/BoringLayout;->mTopPadding:I

    iget v0, p7, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, p7, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget v0, p7, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p7, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v6, v0, v1

    .restart local v6       #spacing:I
    goto :goto_1

    :cond_5
    iget v0, p7, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v0, v6

    iput v0, p0, Landroid/text/BoringLayout;->mDesc:I

    goto :goto_2

    :cond_6
    sget-object v6, Landroid/text/BoringLayout;->sTemp:Landroid/text/TextPaint;

    .end local v6           #spacing:I
    monitor-enter v6

    :try_start_0
    sget-object v1, Landroid/text/BoringLayout;->sTemp:Landroid/text/TextPaint;

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p2

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/text/BoringLayout;->mMax:F

    monitor-exit v6

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .locals 10
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"

    .prologue
    invoke-virtual/range {p0 .. p6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    return-object p0
.end method

.method public replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .locals 12
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    if-eqz p9, :cond_0

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p9

    move-object v1, v2

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    const/4 v11, 0x1

    .local v11, trust:Z
    :goto_0
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    return-object p0

    .end local v11           #trust:Z
    :cond_1
    move/from16 v0, p10

    int-to-float v0, v0

    move v4, v0

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p9

    move-object v7, p0

    invoke-static/range {v2 .. v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    move/from16 v0, p10

    move-object v1, p0

    iput v0, v1, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    const/4 v11, 0x0

    .restart local v11       #trust:Z
    goto :goto_0
.end method
