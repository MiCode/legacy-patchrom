.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# static fields
.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_MASK:I = -0x40000000

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final FIRST_CJK:C = '\u2e80'

.field private static final FIRST_RIGHT_TO_LEFT:C = '\u0590'

.field public static final OUTERHEIGHT_INFINITE:I = 0x0

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_MASK:I = 0x20000000

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mChdirs:[B

.field private mChs:[C

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mTopPadding:I

.field private mWidths:[F


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;IILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 19
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "outerheight"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    if-nez p11, :cond_2

    move-object/from16 v3, p1

    :goto_0
    move-object/from16 v2, p0

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v2 .. v8}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz p11, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Landroid/text/Layout$Ellipsizer;

    .local v17, e:Landroid/text/Layout$Ellipsizer;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    move/from16 v0, p12

    move-object/from16 v1, v17

    iput v0, v1, Landroid/text/Layout$Ellipsizer;->mWidth:I

    move-object/from16 v0, p11

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    move/from16 v0, p12

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    const/4 v2, 0x5

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mColumns:I

    .end local v17           #e:Landroid/text/Layout$Ellipsizer;
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v2

    new-array v2, v2, [I

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v2

    new-array v2, v2, [Landroid/text/Layout$Directions;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    if-eqz p11, :cond_5

    const/4 v2, 0x1

    move v14, v2

    :goto_2
    move/from16 v0, p12

    int-to-float v0, v0

    move v15, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p10

    move-object/from16 v16, p11

    invoke-virtual/range {v2 .. v16}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;IILandroid/text/Layout$Alignment;FFZZZFLandroid/text/TextUtils$TruncateAt;)V

    if-eqz p6, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v2

    move v0, v2

    move/from16 v1, p6

    if-le v0, v1, :cond_1

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p11

    move-object v1, v2

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v18

    .local v18, lastline:I
    if-lez v18, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    move/from16 v0, v18

    move v1, v2

    if-ge v0, v1, :cond_1

    add-int/lit8 v2, v18, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    add-int/lit8 v2, v18, 0x1

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v2

    move v0, v2

    move/from16 v1, p6

    if-le v0, v1, :cond_0

    add-int/lit8 v18, v18, -0x1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v3, v0

    mul-int v3, v3, v18

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v4, v18, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v3, v0

    mul-int v3, v3, v18

    add-int/lit8 v3, v3, 0x4

    const/4 v4, 0x1

    aput v4, v2, v3

    add-int/lit8 v2, v18, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mLineCount:I

    .end local v18           #lastline:I
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChdirs:[B

    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChs:[C

    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mWidths:[F

    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    return-void

    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v2, v0

    if-eqz v2, :cond_3

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v2

    goto/16 :goto_0

    :cond_3
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v2

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x3

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x0

    move v14, v2

    goto/16 :goto_2
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 13
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;IILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-void
.end method

.method constructor <init>(Z)V
    .locals 7
    .parameter "ellipsize"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    return-void
.end method

.method static bidi(I[C[BIZ)I
    .locals 5
    .parameter "dir"
    .parameter "chs"
    .parameter "chInfo"
    .parameter "n"
    .parameter "hasInfo"

    .prologue
    invoke-static {p1, p2, p3}, Landroid/text/AndroidCharacter;->getDirectionalities([C[BI)V

    const/4 p4, 0x1

    if-eq p0, p4, :cond_0

    .end local p4
    const/4 p4, -0x1

    if-eq p0, p4, :cond_0

    if-ltz p0, :cond_2

    const/4 p0, 0x1

    :goto_0
    const/4 p4, 0x0

    .local p4, j:I
    move v0, p4

    .end local p4           #j:I
    .local v0, j:I
    :goto_1
    if-ge v0, p3, :cond_0

    aget-byte p4, p2, v0

    .local p4, d:I
    if-nez p4, :cond_3

    const/4 p0, 0x1

    .end local v0           #j:I
    .end local p4           #d:I
    :cond_0
    :goto_2
    const/4 p4, 0x1

    if-ne p0, p4, :cond_5

    const/4 p4, 0x0

    .local p4, SOR:B
    :goto_3
    const/4 v0, 0x0

    .restart local v0       #j:I
    :goto_4
    if-ge v0, p3, :cond_7

    aget-byte v1, p2, v0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_6

    aput-byte p4, p2, v0

    :cond_1
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v0           #j:I
    .end local p4           #SOR:B
    :cond_2
    const/4 p0, -0x1

    goto :goto_0

    .restart local v0       #j:I
    .local p4, d:I
    :cond_3
    const/4 v1, 0x1

    if-ne p4, v1, :cond_4

    const/4 p0, -0x1

    goto :goto_2

    :cond_4
    add-int/lit8 p4, v0, 0x1

    .end local v0           #j:I
    .local p4, j:I
    move v0, p4

    .end local p4           #j:I
    .restart local v0       #j:I
    goto :goto_1

    .end local v0           #j:I
    :cond_5
    const/4 p4, 0x1

    goto :goto_3

    .restart local v0       #j:I
    .local p4, SOR:B
    :cond_6
    const/4 v1, 0x1

    sub-int v1, v0, v1

    aget-byte v1, p2, v1

    aput-byte v1, p2, v0

    goto :goto_5

    :cond_7
    move v0, p4

    .local v0, cur:B
    const/4 v1, 0x0

    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .local v2, j:I
    :goto_6
    if-ge v2, p3, :cond_b

    aget-byte v1, p2, v2

    .local v1, d:B
    if-eqz v1, :cond_8

    const/4 v3, 0x1

    if-eq v1, v3, :cond_8

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a

    :cond_8
    move v0, v1

    .end local v1           #d:B
    :cond_9
    :goto_7
    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_6

    .local v1, d:B
    :cond_a
    const/4 v3, 0x3

    if-ne v1, v3, :cond_9

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .end local v1           #d:B
    const/4 v1, 0x6

    aput-byte v1, p2, v2

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    .end local v2           #j:I
    .local v0, j:I
    :goto_8
    if-ge v0, p3, :cond_d

    aget-byte v1, p2, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    aput-byte v1, p2, v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_d
    const/4 v0, 0x1

    move v1, v0

    .end local v0           #j:I
    .local v1, j:I
    :goto_9
    const/4 v0, 0x1

    sub-int v0, p3, v0

    if-ge v1, v0, :cond_11

    aget-byte v0, p2, v1

    .local v0, d:B
    const/4 v2, 0x1

    sub-int v2, v1, v2

    aget-byte v3, p2, v2

    .local v3, prev:B
    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p2, v2

    .local v2, next:B
    const/4 v4, 0x4

    if-ne v0, v4, :cond_f

    const/4 v0, 0x3

    if-ne v3, v0, :cond_e

    .end local v0           #d:B
    const/4 v0, 0x3

    if-ne v2, v0, :cond_e

    const/4 v0, 0x3

    aput-byte v0, p2, v1

    :cond_e
    :goto_a
    add-int/lit8 v0, v1, 0x1

    .end local v1           #j:I
    .local v0, j:I
    move v1, v0

    .end local v0           #j:I
    .restart local v1       #j:I
    goto :goto_9

    .local v0, d:B
    :cond_f
    const/4 v4, 0x7

    if-ne v0, v4, :cond_e

    const/4 v0, 0x3

    if-ne v3, v0, :cond_10

    .end local v0           #d:B
    const/4 v0, 0x3

    if-ne v2, v0, :cond_10

    const/4 v0, 0x3

    aput-byte v0, p2, v1

    :cond_10
    const/4 v0, 0x6

    if-ne v3, v0, :cond_e

    const/4 v0, 0x6

    if-ne v2, v0, :cond_e

    const/4 v0, 0x6

    aput-byte v0, p2, v1

    goto :goto_a

    .end local v2           #next:B
    .end local v3           #prev:B
    :cond_11
    const/4 v0, 0x0

    .local v0, adjacent:Z
    const/4 v1, 0x0

    move v2, v1

    .end local v1           #j:I
    .local v2, j:I
    :goto_b
    if-ge v2, p3, :cond_14

    aget-byte v1, p2, v2

    .local v1, d:B
    const/4 v3, 0x3

    if-ne v1, v3, :cond_12

    const/4 v0, 0x1

    .end local v1           #d:B
    :goto_c
    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_b

    .local v1, d:B
    :cond_12
    const/4 v3, 0x5

    if-ne v1, v3, :cond_13

    if-eqz v0, :cond_13

    const/4 v1, 0x3

    aput-byte v1, p2, v2

    goto :goto_c

    :cond_13
    const/4 v0, 0x0

    goto :goto_c

    .end local v1           #d:B
    :cond_14
    const/4 v0, 0x0

    const/4 v1, 0x1

    sub-int v1, p3, v1

    .end local v2           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    :goto_d
    if-ltz v2, :cond_1a

    aget-byte v1, p2, v2

    .local v1, d:B
    const/4 v3, 0x3

    if-ne v1, v3, :cond_16

    const/4 v0, 0x1

    .end local v1           #d:B
    :cond_15
    :goto_e
    add-int/lit8 v1, v2, -0x1

    .end local v2           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_d

    .local v1, d:B
    :cond_16
    const/4 v3, 0x5

    if-ne v1, v3, :cond_18

    if-eqz v0, :cond_17

    const/4 v1, 0x3

    aput-byte v1, p2, v2

    goto :goto_e

    :cond_17
    const/16 v1, 0xd

    aput-byte v1, p2, v2

    goto :goto_e

    :cond_18
    const/4 v0, 0x0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_19

    const/4 v3, 0x7

    if-eq v1, v3, :cond_19

    const/16 v3, 0xa

    if-eq v1, v3, :cond_19

    const/16 v3, 0xb

    if-ne v1, v3, :cond_15

    :cond_19
    const/16 v1, 0xd

    aput-byte v1, p2, v2

    goto :goto_e

    .end local v1           #d:B
    :cond_1a
    move v0, p4

    .local v0, cur:B
    const/4 v1, 0x0

    .end local v2           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    :goto_f
    if-ge v2, p3, :cond_1e

    aget-byte v1, p2, v2

    .local v1, d:B
    if-eq v1, p4, :cond_1b

    if-eqz v1, :cond_1b

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1c

    :cond_1b
    move v0, v1

    :cond_1c
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1d

    aput-byte v0, p2, v2

    :cond_1d
    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_f

    :cond_1e
    move v0, p4

    const/4 v1, 0x0

    .end local v2           #j:I
    .restart local v1       #j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    :goto_10
    if-ge v2, p3, :cond_29

    aget-byte v1, p2, v2

    .local v1, d:B
    if-eqz v1, :cond_1f

    const/4 v3, 0x1

    if-ne v1, v3, :cond_20

    :cond_1f
    move v0, v1

    move v1, v2

    .end local v2           #j:I
    .local v1, j:I
    :goto_11
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_10

    .local v1, d:B
    :cond_20
    const/4 v3, 0x3

    if-eq v1, v3, :cond_21

    const/4 v3, 0x6

    if-ne v1, v3, :cond_22

    :cond_21
    const/4 v0, 0x1

    move v1, v2

    .end local v2           #j:I
    .local v1, j:I
    goto :goto_11

    .local v1, d:B
    .restart local v2       #j:I
    :cond_22
    move v1, p4

    .local v1, dd:B
    add-int/lit8 v3, v2, 0x1

    .local v3, k:I
    :goto_12
    if-ge v3, p3, :cond_23

    aget-byte v1, p2, v3

    if-eqz v1, :cond_23

    const/4 v4, 0x1

    if-ne v1, v4, :cond_24

    :cond_23
    :goto_13
    move v2, v2

    .local v2, y:I
    :goto_14
    if-ge v2, v3, :cond_28

    if-ne v1, v0, :cond_27

    aput-byte v0, p2, v2

    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .local v2, j:I
    :cond_24
    const/4 v4, 0x3

    if-eq v1, v4, :cond_25

    const/4 v4, 0x6

    if-ne v1, v4, :cond_26

    :cond_25
    const/4 v1, 0x1

    goto :goto_13

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .local v2, y:I
    :cond_27
    aput-byte p4, p2, v2

    goto :goto_15

    :cond_28
    const/4 v1, 0x1

    sub-int v1, v3, v1

    .local v1, j:I
    goto :goto_11

    .end local v1           #j:I
    .end local v3           #k:I
    .local v2, j:I
    :cond_29
    const/4 v0, 0x0

    .end local v2           #j:I
    .local v0, j:I
    move v1, v0

    .end local v0           #j:I
    .restart local v1       #j:I
    :goto_16
    if-ge v1, p3, :cond_2c

    aget-char v0, p1, v1

    .local v0, c:C
    const/16 v2, 0x9

    if-eq v0, v2, :cond_2a

    const v2, 0xd800

    if-lt v0, v2, :cond_2b

    const v2, 0xdfff

    if-gt v0, v2, :cond_2b

    :cond_2a
    aput-byte p4, p2, v1

    :cond_2b
    add-int/lit8 v0, v1, 0x1

    .end local v1           #j:I
    .local v0, j:I
    move v1, v0

    .end local v0           #j:I
    .restart local v1       #j:I
    goto :goto_16

    :cond_2c
    return p0
.end method

.method private calculateEllipsis(II[FIIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;)V
    .locals 18
    .parameter "linestart"
    .parameter "lineend"
    .parameter "widths"
    .parameter "widstart"
    .parameter "widoff"
    .parameter "avail"
    .parameter "where"
    .parameter "line"
    .parameter "textwidth"
    .parameter "paint"

    .prologue
    sub-int v8, p2, p1

    .local v8, len:I
    cmpg-float v15, p9, p6

    if-gtz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v16, v0

    mul-int v16, v16, p8

    add-int/lit8 v16, v16, 0x3

    const/16 v17, 0x0

    aput v17, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v16, v0

    mul-int v16, v16, p8

    add-int/lit8 v16, v16, 0x4

    const/16 v17, 0x0

    aput v17, v15, v16

    :goto_0
    return-void

    :cond_0
    const-string v15, "\u2026"

    move-object/from16 v0, p10

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .local v4, ellipsiswid:F
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object v1, v15

    if-ne v0, v1, :cond_3

    const/4 v13, 0x0

    .local v13, sum:F
    move v5, v8

    .local v5, i:I
    :goto_1
    if-ltz v5, :cond_1

    const/4 v15, 0x1

    sub-int v15, v5, v15

    add-int v15, v15, p1

    sub-int v15, v15, p4

    add-int v15, v15, p5

    aget v14, p3, v15

    .local v14, w:F
    add-float v15, v14, v13

    add-float/2addr v15, v4

    cmpl-float v15, v15, p6

    if-lez v15, :cond_2

    .end local v14           #w:F
    :cond_1
    const/4 v3, 0x0

    .local v3, ellipsisStart:I
    move v2, v5

    .end local v5           #i:I
    .end local v13           #sum:F
    .local v2, ellipsisCount:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v16, v0

    mul-int v16, v16, p8

    add-int/lit8 v16, v16, 0x3

    aput v3, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v16, v0

    mul-int v16, v16, p8

    add-int/lit8 v16, v16, 0x4

    aput v2, v15, v16

    goto :goto_0

    .end local v2           #ellipsisCount:I
    .end local v3           #ellipsisStart:I
    .restart local v5       #i:I
    .restart local v13       #sum:F
    .restart local v14       #w:F
    :cond_2
    add-float/2addr v13, v14

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .end local v5           #i:I
    .end local v13           #sum:F
    .end local v14           #w:F
    :cond_3
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object v1, v15

    if-eq v0, v1, :cond_4

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object v1, v15

    if-ne v0, v1, :cond_7

    :cond_4
    const/4 v13, 0x0

    .restart local v13       #sum:F
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_3
    if-ge v5, v8, :cond_5

    add-int v15, v5, p1

    sub-int v15, v15, p4

    add-int v15, v15, p5

    aget v14, p3, v15

    .restart local v14       #w:F
    add-float v15, v14, v13

    add-float/2addr v15, v4

    cmpl-float v15, v15, p6

    if-lez v15, :cond_6

    .end local v14           #w:F
    :cond_5
    move v3, v5

    .restart local v3       #ellipsisStart:I
    sub-int v2, v8, v5

    .restart local v2       #ellipsisCount:I
    goto :goto_2

    .end local v2           #ellipsisCount:I
    .end local v3           #ellipsisStart:I
    .restart local v14       #w:F
    :cond_6
    add-float/2addr v13, v14

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .end local v5           #i:I
    .end local v13           #sum:F
    .end local v14           #w:F
    :cond_7
    const/4 v9, 0x0

    .local v9, lsum:F
    const/4 v12, 0x0

    .local v12, rsum:F
    const/4 v7, 0x0

    .local v7, left:I
    move v11, v8

    .local v11, right:I
    sub-float v15, p6, v4

    const/high16 v16, 0x4000

    div-float v10, v15, v16

    .local v10, ravail:F
    move v11, v8

    :goto_4
    if-ltz v11, :cond_8

    const/4 v15, 0x1

    sub-int v15, v11, v15

    add-int v15, v15, p1

    sub-int v15, v15, p4

    add-int v15, v15, p5

    aget v14, p3, v15

    .restart local v14       #w:F
    add-float v15, v14, v12

    cmpl-float v15, v15, v10

    if-lez v15, :cond_a

    .end local v14           #w:F
    :cond_8
    sub-float v15, p6, v4

    sub-float v6, v15, v12

    .local v6, lavail:F
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v11, :cond_9

    add-int v15, v7, p1

    sub-int v15, v15, p4

    add-int v15, v15, p5

    aget v14, p3, v15

    .restart local v14       #w:F
    add-float v15, v14, v9

    cmpl-float v15, v15, v6

    if-lez v15, :cond_b

    .end local v14           #w:F
    :cond_9
    move v3, v7

    .restart local v3       #ellipsisStart:I
    sub-int v2, v11, v7

    .restart local v2       #ellipsisCount:I
    goto/16 :goto_2

    .end local v2           #ellipsisCount:I
    .end local v3           #ellipsisStart:I
    .end local v6           #lavail:F
    .restart local v14       #w:F
    :cond_a
    add-float/2addr v12, v14

    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    .restart local v6       #lavail:F
    :cond_b
    add-float/2addr v9, v14

    add-int/lit8 v7, v7, 0x1

    goto :goto_5
.end method

.method private static getFit(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IIF)I
    .locals 10
    .parameter "paint"
    .parameter "workPaint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "wid"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    add-int/lit8 v8, p4, 0x1

    .local v8, high:I
    sub-int v9, p3, v6

    .local v9, low:I
    :goto_0
    sub-int v0, v8, v9

    if-le v0, v6, :cond_1

    add-int v0, v8, v9

    div-int/lit8 v4, v0, 0x2

    .local v4, guess:I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, v5

    invoke-static/range {v0 .. v7}, Landroid/text/StaticLayout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    move-result v0

    cmpl-float v0, v0, p5

    if-lez v0, :cond_0

    move v8, v4

    goto :goto_0

    :cond_0
    move v9, v4

    goto :goto_0

    .end local v4           #guess:I
    :cond_1
    if-ge v9, p3, :cond_2

    move v0, p3

    :goto_1
    return v0

    :cond_2
    move v0, v9

    goto :goto_1
.end method

.method private static final isIdeographic(CZ)Z
    .locals 3
    .parameter "c"
    .parameter "includeNonStarters"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x2e80

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2fff

    if-gt p0, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3000

    if-ne p0, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x3040

    if-lt p0, v0, :cond_3

    const/16 v0, 0x309f

    if-gt p0, v0, :cond_3

    if-nez p1, :cond_2

    sparse-switch p0, :sswitch_data_0

    :cond_2
    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v2

    goto :goto_0

    :cond_3
    const/16 v0, 0x30a0

    if-lt p0, v0, :cond_5

    const/16 v0, 0x30ff

    if-gt p0, v0, :cond_5

    if-nez p1, :cond_4

    sparse-switch p0, :sswitch_data_1

    :cond_4
    move v0, v1

    goto :goto_0

    :sswitch_1
    move v0, v2

    goto :goto_0

    :cond_5
    const/16 v0, 0x3400

    if-lt p0, v0, :cond_6

    const/16 v0, 0x4db5

    if-gt p0, v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    const/16 v0, 0x4e00

    if-lt p0, v0, :cond_7

    const v0, 0x9fbb

    if-gt p0, v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    const v0, 0xf900

    if-lt p0, v0, :cond_8

    const v0, 0xfad9

    if-gt p0, v0, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    const v0, 0xa000

    if-lt p0, v0, :cond_9

    const v0, 0xa48f

    if-gt p0, v0, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    const v0, 0xa490

    if-lt p0, v0, :cond_a

    const v0, 0xa4cf

    if-gt p0, v0, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    const v0, 0xfe62

    if-lt p0, v0, :cond_b

    const v0, 0xfe66

    if-gt p0, v0, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    const v0, 0xff10

    if-lt p0, v0, :cond_c

    const v0, 0xff19

    if-gt p0, v0, :cond_c

    move v0, v1

    goto :goto_0

    :cond_c
    move v0, v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3041 -> :sswitch_0
        0x3043 -> :sswitch_0
        0x3045 -> :sswitch_0
        0x3047 -> :sswitch_0
        0x3049 -> :sswitch_0
        0x3063 -> :sswitch_0
        0x3083 -> :sswitch_0
        0x3085 -> :sswitch_0
        0x3087 -> :sswitch_0
        0x308e -> :sswitch_0
        0x3095 -> :sswitch_0
        0x3096 -> :sswitch_0
        0x309b -> :sswitch_0
        0x309c -> :sswitch_0
        0x309d -> :sswitch_0
        0x309e -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x30a0 -> :sswitch_1
        0x30a1 -> :sswitch_1
        0x30a3 -> :sswitch_1
        0x30a5 -> :sswitch_1
        0x30a7 -> :sswitch_1
        0x30a9 -> :sswitch_1
        0x30c3 -> :sswitch_1
        0x30e3 -> :sswitch_1
        0x30e5 -> :sswitch_1
        0x30e7 -> :sswitch_1
        0x30ee -> :sswitch_1
        0x30f5 -> :sswitch_1
        0x30f6 -> :sswitch_1
        0x30fb -> :sswitch_1
        0x30fc -> :sswitch_1
        0x30fd -> :sswitch_1
        0x30fe -> :sswitch_1
    .end sparse-switch
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I
    .locals 33
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "above"
    .parameter "below"
    .parameter "top"
    .parameter "bottom"
    .parameter "v"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "chooseht"
    .parameter "choosehtv"
    .parameter "fm"
    .parameter "tab"
    .parameter "needMultiply"
    .parameter "pstart"
    .parameter "chdirs"
    .parameter "dir"
    .parameter "easy"
    .parameter "last"
    .parameter "includepad"
    .parameter "trackpad"
    .parameter "widths"
    .parameter "widstart"
    .parameter "widoff"
    .parameter "ellipsize"
    .parameter "ellipsiswidth"
    .parameter "textwidth"
    .parameter "paint"

    .prologue
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move v13, v0

    .local v13, j:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    mul-int v31, v13, v5

    .local v31, off:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    add-int v5, v5, v31

    add-int/lit8 v32, v5, 0x1

    .local v32, want:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v29, v0

    .local v29, lines:[I
    move-object/from16 v0, v29

    array-length v0, v0

    move v5, v0

    move/from16 v0, v32

    move v1, v5

    if-lt v0, v1, :cond_0

    add-int/lit8 v5, v32, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v30

    .local v30, nlen:I
    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .local v22, grow:[I
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v29

    array-length v0, v0

    move v7, v0

    move-object/from16 v0, v29

    move v1, v5

    move-object/from16 v2, v22

    move v3, v6

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v29, v22

    move/from16 v0, v30

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v23, v0

    .local v23, grow2:[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move-object v8, v0

    array-length v8, v8

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v23

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .end local v22           #grow:[I
    .end local v23           #grow2:[Landroid/text/Layout$Directions;
    .end local v30           #nlen:I
    :cond_0
    if-eqz p11, :cond_3

    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    const/16 v25, 0x0

    .local v25, i:I
    :goto_0
    move-object/from16 v0, p11

    array-length v0, v0

    move v5, v0

    move/from16 v0, v25

    move v1, v5

    if-ge v0, v1, :cond_2

    aget-object v5, p11, v25

    instance-of v5, v5, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v5, :cond_1

    aget-object v5, p11, v25

    check-cast v5, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v9, p12, v25

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p8

    move-object/from16 v11, p13

    move-object/from16 v12, p29

    invoke-interface/range {v5 .. v12}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    :goto_1
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    :cond_1
    aget-object v5, p11, v25

    aget v9, p12, v25

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p8

    move-object/from16 v11, p13

    invoke-interface/range {v5 .. v11}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .end local v25           #i:I
    :cond_3
    if-nez v13, :cond_5

    if-eqz p22, :cond_4

    sub-int v5, p6, p4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mTopPadding:I

    :cond_4
    if-eqz p21, :cond_5

    move/from16 p4, p6

    :cond_5
    if-eqz p20, :cond_7

    if-eqz p22, :cond_6

    sub-int v5, p7, p5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mBottomPadding:I

    :cond_6
    if-eqz p21, :cond_7

    move/from16 p5, p7

    :cond_7
    if-eqz p15, :cond_b

    sub-int v5, p5, p4

    int-to-float v5, v5

    const/high16 v6, 0x3f80

    sub-float v6, p9, v6

    mul-float/2addr v5, v6

    add-float v5, v5, p10

    move v0, v5

    float-to-double v0, v0

    move-wide/from16 v19, v0

    .local v19, ex:D
    const-wide/16 v5, 0x0

    cmpl-double v5, v19, v5

    if-ltz v5, :cond_a

    const-wide/high16 v5, 0x3fe0

    add-double v5, v5, v19

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v21, v0

    .end local v19           #ex:D
    .local v21, extra:I
    :goto_2
    add-int/lit8 v5, v31, 0x0

    aput p2, v29, v5

    add-int/lit8 v5, v31, 0x1

    aput p8, v29, v5

    add-int/lit8 v5, v31, 0x2

    add-int v6, p5, v21

    aput v6, v29, v5

    sub-int v5, p5, p4

    add-int v5, v5, v21

    add-int p8, p8, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    add-int v5, v5, v31

    add-int/lit8 v5, v5, 0x0

    aput p3, v29, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    add-int v5, v5, v31

    add-int/lit8 v5, v5, 0x1

    aput p8, v29, v5

    if-eqz p14, :cond_8

    add-int/lit8 v5, v31, 0x0

    aget v6, v29, v5

    const/high16 v7, 0x2000

    or-int/2addr v6, v7

    aput v6, v29, v5

    :cond_8
    add-int/lit8 v5, v31, 0x0

    aget v6, v29, v5

    shl-int/lit8 v7, p18, 0x1e

    or-int/2addr v6, v7

    aput v6, v29, v5

    const/16 v18, 0x0

    .local v18, cur:I
    const/16 v16, 0x0

    .local v16, count:I
    if-nez p19, :cond_c

    move/from16 v26, p2

    .local v26, k:I
    :goto_3
    move/from16 v0, v26

    move/from16 v1, p3

    if-ge v0, v1, :cond_c

    sub-int v5, v26, p16

    aget-byte v5, p17, v5

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    add-int/lit8 v16, v16, 0x1

    sub-int v5, v26, p16

    aget-byte v18, p17, v5

    :cond_9
    add-int/lit8 v26, v26, 0x1

    goto :goto_3

    .end local v16           #count:I
    .end local v18           #cur:I
    .end local v21           #extra:I
    .end local v26           #k:I
    .restart local v19       #ex:D
    :cond_a
    move-wide/from16 v0, v19

    neg-double v0, v0

    move-wide v5, v0

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    double-to-int v5, v5

    move v0, v5

    neg-int v0, v0

    move/from16 v21, v0

    .restart local v21       #extra:I
    goto :goto_2

    .end local v19           #ex:D
    .end local v21           #extra:I
    :cond_b
    const/16 v21, 0x0

    .restart local v21       #extra:I
    goto :goto_2

    .restart local v16       #count:I
    .restart local v18       #cur:I
    :cond_c
    if-nez v16, :cond_f

    sget-object v28, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .local v28, linedirs:Landroid/text/Layout$Directions;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move-object v5, v0

    aput-object v28, v5, v13

    if-eqz p26, :cond_e

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p26

    move-object v1, v5

    if-ne v0, v1, :cond_d

    if-eqz v13, :cond_e

    :cond_d
    move-object/from16 v5, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p23

    move/from16 v9, p24

    move/from16 v10, p25

    move/from16 v11, p27

    move-object/from16 v12, p26

    move/from16 v14, p28

    move-object/from16 v15, p29

    invoke-direct/range {v5 .. v15}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;)V

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mLineCount:I

    return p8

    .end local v28           #linedirs:Landroid/text/Layout$Directions;
    :cond_f
    add-int/lit8 v5, v16, 0x1

    move v0, v5

    new-array v0, v0, [S

    move-object/from16 v27, v0

    .local v27, ld:[S
    const/16 v18, 0x0

    const/16 v16, 0x0

    move/from16 v24, p2

    .local v24, here:I
    move/from16 v26, p2

    .restart local v26       #k:I
    move/from16 v17, v16

    .end local v16           #count:I
    .local v17, count:I
    :goto_5
    move/from16 v0, v26

    move/from16 v1, p3

    if-ge v0, v1, :cond_10

    sub-int v5, v26, p16

    aget-byte v5, p17, v5

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_12

    add-int/lit8 v16, v17, 0x1

    .end local v17           #count:I
    .restart local v16       #count:I
    sub-int v5, v26, v24

    int-to-short v5, v5

    aput-short v5, v27, v17

    sub-int v5, v26, p16

    aget-byte v18, p17, v5

    move/from16 v24, v26

    :goto_6
    add-int/lit8 v26, v26, 0x1

    move/from16 v17, v16

    .end local v16           #count:I
    .restart local v17       #count:I
    goto :goto_5

    :cond_10
    sub-int v5, p3, v24

    int-to-short v5, v5

    aput-short v5, v27, v17

    const/4 v5, 0x1

    move/from16 v0, v17

    move v1, v5

    if-ne v0, v1, :cond_11

    const/4 v5, 0x0

    aget-short v5, v27, v5

    if-nez v5, :cond_11

    sget-object v28, Landroid/text/StaticLayout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    .restart local v28       #linedirs:Landroid/text/Layout$Directions;
    move/from16 v16, v17

    .end local v17           #count:I
    .restart local v16       #count:I
    goto :goto_4

    .end local v16           #count:I
    .end local v28           #linedirs:Landroid/text/Layout$Directions;
    .restart local v17       #count:I
    :cond_11
    new-instance v28, Landroid/text/Layout$Directions;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([S)V

    .restart local v28       #linedirs:Landroid/text/Layout$Directions;
    move/from16 v16, v17

    .end local v17           #count:I
    .restart local v16       #count:I
    goto/16 :goto_4

    .end local v16           #count:I
    .end local v28           #linedirs:Landroid/text/Layout$Directions;
    .restart local v17       #count:I
    :cond_12
    move/from16 v16, v17

    .end local v17           #count:I
    .restart local v16       #count:I
    goto :goto_6
.end method


# virtual methods
.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;IILandroid/text/Layout$Alignment;FFZZZFLandroid/text/TextUtils$TruncateAt;)V
    .locals 158
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "outerheight"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "trackpad"
    .parameter "breakOnlyAtSpaces"
    .parameter "ellipsizedWidth"
    .parameter "where"

    .prologue
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mLineCount:I

    const/16 v20, 0x0

    .local v20, v:I
    const/high16 v5, 0x3f80

    cmpl-float v5, p8, v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, p9, v5

    if-eqz v5, :cond_4

    :cond_0
    const/4 v5, 0x1

    move/from16 v27, v5

    .local v27, needMultiply:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object v11, v0

    .local v11, fm:Landroid/graphics/Paint$FontMetricsInt;
    const/16 v24, 0x0

    .local v24, choosehtv:[I
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move v1, v5

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v137

    .local v137, end:I
    if-ltz v137, :cond_5

    sub-int v5, v137, p2

    move/from16 v134, v5

    .local v134, bufsiz:I
    :goto_1
    const/16 v138, 0x1

    .local v138, first:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mChdirs:[B

    move-object v5, v0

    if-nez v5, :cond_1

    add-int/lit8 v5, v134, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v5

    new-array v5, v5, [B

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChdirs:[B

    add-int/lit8 v5, v134, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v5

    new-array v5, v5, [C

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChs:[C

    add-int/lit8 v5, v134, 0x1

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v5, v5, [F

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mWidths:[F

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mChdirs:[B

    move-object/from16 v29, v0

    .local v29, chdirs:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mChs:[C

    move-object/from16 v136, v0

    .local v136, chs:[C
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWidths:[F

    move-object v10, v0

    .local v10, widths:[F
    const/16 v130, 0x0

    .local v130, alter:Landroid/text/AlteredCharSequence;
    const/4 v7, 0x0

    .local v7, spanned:Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-eqz v5, :cond_2

    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v7, v0

    :cond_2
    const/16 v117, 0x1

    .local v117, DEFAULT_DIR:I
    move/from16 v28, p2

    .local v28, start:I
    :goto_2
    move/from16 v0, v28

    move/from16 v1, p3

    if-gt v0, v1, :cond_43

    if-eqz v138, :cond_6

    const/16 v138, 0x0

    :goto_3
    if-gez v137, :cond_7

    move/from16 v137, p3

    :goto_4
    const/16 v139, 0x1

    .local v139, firstWidthLineCount:I
    move/from16 v140, p5

    .local v140, firstwidth:I
    move/from16 v149, p5

    .local v149, restwidth:I
    const/16 v23, 0x0

    .local v23, chooseht:[Landroid/text/style/LineHeightSpan;
    if-eqz v7, :cond_c

    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object v0, v7

    move/from16 v1, v28

    move/from16 v2, v137

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v150

    check-cast v150, [Landroid/text/style/LeadingMarginSpan;

    .local v150, sp:[Landroid/text/style/LeadingMarginSpan;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_5
    move-object/from16 v0, v150

    array-length v0, v0

    move v5, v0

    if-ge v8, v5, :cond_8

    aget-object v146, v150, v8

    .local v146, lms:Landroid/text/style/LeadingMarginSpan;
    aget-object v5, v150, v8

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v140, v140, v5

    aget-object v5, v150, v8

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v149, v149, v5

    move-object/from16 v0, v146

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move v5, v0

    if-eqz v5, :cond_3

    check-cast v146, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .end local v146           #lms:Landroid/text/style/LeadingMarginSpan;
    invoke-interface/range {v146 .. v146}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v139

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .end local v7           #spanned:Landroid/text/Spanned;
    .end local v8           #i:I
    .end local v10           #widths:[F
    .end local v11           #fm:Landroid/graphics/Paint$FontMetricsInt;
    .end local v23           #chooseht:[Landroid/text/style/LineHeightSpan;
    .end local v24           #choosehtv:[I
    .end local v27           #needMultiply:Z
    .end local v28           #start:I
    .end local v29           #chdirs:[B
    .end local v117           #DEFAULT_DIR:I
    .end local v130           #alter:Landroid/text/AlteredCharSequence;
    .end local v134           #bufsiz:I
    .end local v136           #chs:[C
    .end local v137           #end:I
    .end local v138           #first:Z
    .end local v139           #firstWidthLineCount:I
    .end local v140           #firstwidth:I
    .end local v149           #restwidth:I
    .end local v150           #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_4
    const/4 v5, 0x0

    move/from16 v27, v5

    goto/16 :goto_0

    .restart local v11       #fm:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v24       #choosehtv:[I
    .restart local v27       #needMultiply:Z
    .restart local v137       #end:I
    :cond_5
    sub-int v5, p3, p2

    move/from16 v134, v5

    goto/16 :goto_1

    .restart local v7       #spanned:Landroid/text/Spanned;
    .restart local v10       #widths:[F
    .restart local v28       #start:I
    .restart local v29       #chdirs:[B
    .restart local v117       #DEFAULT_DIR:I
    .restart local v130       #alter:Landroid/text/AlteredCharSequence;
    .restart local v134       #bufsiz:I
    .restart local v136       #chs:[C
    .restart local v138       #first:Z
    :cond_6
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move v1, v5

    move/from16 v2, v28

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v137

    goto :goto_3

    :cond_7
    add-int/lit8 v137, v137, 0x1

    goto :goto_4

    .restart local v8       #i:I
    .restart local v23       #chooseht:[Landroid/text/style/LineHeightSpan;
    .restart local v139       #firstWidthLineCount:I
    .restart local v140       #firstwidth:I
    .restart local v149       #restwidth:I
    .restart local v150       #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_8
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object v0, v7

    move/from16 v1, v28

    move/from16 v2, v137

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v23

    .end local v23           #chooseht:[Landroid/text/style/LineHeightSpan;
    check-cast v23, [Landroid/text/style/LineHeightSpan;

    .restart local v23       #chooseht:[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    if-eqz v5, :cond_c

    if-eqz v24, :cond_9

    move-object/from16 v0, v24

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move v6, v0

    if-ge v5, v6, :cond_a

    :cond_9
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v24, v0

    :cond_a
    const/4 v8, 0x0

    :goto_6
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    if-ge v8, v5, :cond_c

    aget-object v5, v23, v8

    invoke-interface {v7, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v148

    .local v148, o:I
    move/from16 v0, v148

    move/from16 v1, v28

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, v148

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v24, v8

    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_b
    aput v20, v24, v8

    goto :goto_7

    .end local v8           #i:I
    .end local v148           #o:I
    .end local v150           #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_c
    sub-int v5, v137, v28

    move-object/from16 v0, v29

    array-length v0, v0

    move v6, v0

    if-le v5, v6, :cond_d

    sub-int v5, v137, v28

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v5

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChdirs:[B

    :cond_d
    sub-int v5, v137, v28

    move-object/from16 v0, v136

    array-length v0, v0

    move v6, v0

    if-le v5, v6, :cond_e

    sub-int v5, v137, v28

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v5

    move v0, v5

    new-array v0, v0, [C

    move-object/from16 v136, v0

    move-object/from16 v0, v136

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChs:[C

    :cond_e
    sub-int v5, v137, v28

    mul-int/lit8 v5, v5, 0x2

    array-length v6, v10

    if-le v5, v6, :cond_f

    sub-int v5, v137, v28

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v10, v5, [F

    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mWidths:[F

    :cond_f
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v137

    move-object/from16 v3, v136

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v147, v137, v28

    .local v147, n:I
    const/16 v31, 0x1

    .local v31, easy:Z
    const/16 v131, 0x0

    .local v131, altered:Z
    move/from16 v30, v117

    .local v30, dir:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_8
    move v0, v8

    move/from16 v1, v147

    if-ge v0, v1, :cond_10

    aget-char v5, v136, v8

    const/16 v6, 0x590

    if-lt v5, v6, :cond_11

    const/16 v31, 0x0

    :cond_10
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-eqz v5, :cond_13

    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v150, v0

    .local v150, sp:Landroid/text/Spanned;
    const-class v5, Landroid/text/style/ReplacementSpan;

    move-object/from16 v0, v150

    move/from16 v1, v28

    move/from16 v2, v137

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v151

    check-cast v151, [Landroid/text/style/ReplacementSpan;

    .local v151, spans:[Landroid/text/style/ReplacementSpan;
    const/16 v157, 0x0

    .local v157, y:I
    :goto_9
    move-object/from16 v0, v151

    array-length v0, v0

    move v5, v0

    move/from16 v0, v157

    move v1, v5

    if-ge v0, v1, :cond_13

    aget-object v5, v151, v157

    move-object/from16 v0, v150

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v129

    .local v129, a:I
    aget-object v5, v151, v157

    move-object/from16 v0, v150

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v132

    .local v132, b:I
    move/from16 v156, v129

    .local v156, x:I
    :goto_a
    move/from16 v0, v156

    move/from16 v1, v132

    if-ge v0, v1, :cond_12

    sub-int v5, v156, v28

    const v6, 0xfffc

    aput-char v6, v136, v5

    add-int/lit8 v156, v156, 0x1

    goto :goto_a

    .end local v129           #a:I
    .end local v132           #b:I
    .end local v150           #sp:Landroid/text/Spanned;
    .end local v151           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v156           #x:I
    .end local v157           #y:I
    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .restart local v129       #a:I
    .restart local v132       #b:I
    .restart local v150       #sp:Landroid/text/Spanned;
    .restart local v151       #spans:[Landroid/text/style/ReplacementSpan;
    .restart local v156       #x:I
    .restart local v157       #y:I
    :cond_12
    add-int/lit8 v157, v157, 0x1

    goto :goto_9

    .end local v129           #a:I
    .end local v132           #b:I
    .end local v150           #sp:Landroid/text/Spanned;
    .end local v151           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v156           #x:I
    .end local v157           #y:I
    :cond_13
    if-nez v31, :cond_18

    const/4 v5, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v136

    move-object/from16 v2, v29

    move/from16 v3, v147

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/StaticLayout;->bidi(I[C[BIZ)I

    move-result v30

    const/4 v8, 0x0

    :goto_b
    move v0, v8

    move/from16 v1, v147

    if-ge v0, v1, :cond_18

    aget-byte v5, v29, v8

    const/4 v6, 0x1

    if-ne v5, v6, :cond_16

    move/from16 v145, v8

    .local v145, j:I
    :goto_c
    move/from16 v0, v145

    move/from16 v1, v147

    if-ge v0, v1, :cond_14

    aget-byte v5, v29, v145

    const/4 v6, 0x1

    if-eq v5, v6, :cond_17

    :cond_14
    sub-int v5, v145, v8

    move-object/from16 v0, v136

    move v1, v8

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/text/AndroidCharacter;->mirror([CII)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v131, 0x1

    :cond_15
    const/4 v5, 0x1

    sub-int v8, v145, v5

    .end local v145           #j:I
    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .restart local v145       #j:I
    :cond_17
    add-int/lit8 v145, v145, 0x1

    goto :goto_c

    .end local v145           #j:I
    :cond_18
    if-eqz v131, :cond_28

    if-nez v130, :cond_27

    move-object/from16 v0, p1

    move-object/from16 v1, v136

    move/from16 v2, v28

    move/from16 v3, v137

    invoke-static {v0, v1, v2, v3}, Landroid/text/AlteredCharSequence;->make(Ljava/lang/CharSequence;[CII)Landroid/text/AlteredCharSequence;

    move-result-object v130

    :goto_d
    move-object/from16 v152, v130

    .local v152, sub:Ljava/lang/CharSequence;
    :goto_e
    move/from16 v155, v140

    .local v155, width:I
    const/16 v98, 0x0

    .local v98, w:F
    move/from16 v14, v28

    .local v14, here:I
    move/from16 v15, v28

    .local v15, ok:I
    move/from16 v40, v98

    .local v40, okwidth:F
    const/16 v16, 0x0

    .local v16, okascent:I
    const/16 v17, 0x0

    .local v17, okdescent:I
    const/16 v18, 0x0

    .local v18, oktop:I
    const/16 v19, 0x0

    .local v19, okbottom:I
    move/from16 v44, v28

    .local v44, fit:I
    move/from16 v69, v98

    .local v69, fitwidth:F
    const/16 v45, 0x0

    .local v45, fitascent:I
    const/16 v46, 0x0

    .local v46, fitdescent:I
    const/16 v47, 0x0

    .local v47, fittop:I
    const/16 v48, 0x0

    .local v48, fitbottom:I
    const/16 v26, 0x0

    .local v26, tab:Z
    move/from16 v8, v28

    :goto_f
    move v0, v8

    move/from16 v1, v137

    if-ge v0, v1, :cond_40

    if-nez v7, :cond_29

    move/from16 v9, v137

    .local v9, next:I
    :goto_10
    if-nez v7, :cond_2a

    move-object/from16 v0, p4

    move-object/from16 v1, v152

    move v2, v8

    move v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    const/4 v5, 0x0

    sub-int v6, v137, v28

    sub-int v12, v8, v28

    add-int/2addr v6, v12

    sub-int v12, v9, v8

    invoke-static {v10, v5, v10, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p4

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    :goto_11
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v144, v0

    .local v144, fmtop:I
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v142, v0

    .local v142, fmbottom:I
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v141, v0

    .local v141, fmascent:I
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v143, v0

    .local v143, fmdescent:I
    move/from16 v145, v8

    .restart local v145       #j:I
    :goto_12
    move/from16 v0, v145

    move v1, v9

    if-ge v0, v1, :cond_3f

    sub-int v5, v145, v28

    aget-char v135, v136, v5

    .local v135, c:C
    move/from16 v133, v98

    .local v133, before:F
    const/16 v5, 0xa

    move/from16 v0, v135

    move v1, v5

    if-ne v0, v1, :cond_2c

    :goto_13
    move/from16 v0, v155

    int-to-float v0, v0

    move v5, v0

    cmpg-float v5, v98, v5

    if-gtz v5, :cond_30

    move/from16 v69, v98

    add-int/lit8 v44, v145, 0x1

    move/from16 v0, v144

    move/from16 v1, v47

    if-ge v0, v1, :cond_19

    move/from16 v47, v144

    :cond_19
    move/from16 v0, v141

    move/from16 v1, v45

    if-ge v0, v1, :cond_1a

    move/from16 v45, v141

    :cond_1a
    move/from16 v0, v143

    move/from16 v1, v46

    if-le v0, v1, :cond_1b

    move/from16 v46, v143

    :cond_1b
    move/from16 v0, v142

    move/from16 v1, v48

    if-le v0, v1, :cond_1c

    move/from16 v48, v142

    :cond_1c
    const/16 v5, 0x20

    move/from16 v0, v135

    move v1, v5

    if-eq v0, v1, :cond_22

    const/16 v5, 0x9

    move/from16 v0, v135

    move v1, v5

    if-eq v0, v1, :cond_22

    const/16 v5, 0x2e

    move/from16 v0, v135

    move v1, v5

    if-eq v0, v1, :cond_1d

    const/16 v5, 0x2c

    move/from16 v0, v135

    move v1, v5

    if-eq v0, v1, :cond_1d

    const/16 v5, 0x3a

    move/from16 v0, v135

    move v1, v5

    if-eq v0, v1, :cond_1d

    const/16 v5, 0x3b

    move/from16 v0, v135

    move v1, v5

    if-ne v0, v1, :cond_1f

    :cond_1d
    const/4 v5, 0x1

    sub-int v5, v145, v5

    if-lt v5, v14, :cond_1e

    const/4 v5, 0x1

    sub-int v5, v145, v5

    sub-int v5, v5, v28

    aget-char v5, v136, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_1f

    :cond_1e
    add-int/lit8 v5, v145, 0x1

    if-ge v5, v9, :cond_22

    add-int/lit8 v5, v145, 0x1

    sub-int v5, v5, v28

    aget-char v5, v136, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_22

    :cond_1f
    const/16 v5, 0x2f

    move/from16 v0, v135

    move v1, v5

    if-eq v0, v1, :cond_20

    const/16 v5, 0x2d

    move/from16 v0, v135

    move v1, v5

    if-ne v0, v1, :cond_21

    :cond_20
    add-int/lit8 v5, v145, 0x1

    if-ge v5, v9, :cond_22

    add-int/lit8 v5, v145, 0x1

    sub-int v5, v5, v28

    aget-char v5, v136, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_22

    :cond_21
    const/16 v5, 0x2e80

    move/from16 v0, v135

    move v1, v5

    if-lt v0, v1, :cond_26

    const/4 v5, 0x1

    move/from16 v0, v135

    move v1, v5

    invoke-static {v0, v1}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_26

    add-int/lit8 v5, v145, 0x1

    if-ge v5, v9, :cond_26

    add-int/lit8 v5, v145, 0x1

    sub-int v5, v5, v28

    aget-char v5, v136, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_26

    :cond_22
    move/from16 v40, v98

    add-int/lit8 v15, v145, 0x1

    move/from16 v0, v47

    move/from16 v1, v18

    if-ge v0, v1, :cond_23

    move/from16 v18, v47

    :cond_23
    move/from16 v0, v45

    move/from16 v1, v16

    if-ge v0, v1, :cond_24

    move/from16 v16, v45

    :cond_24
    move/from16 v0, v46

    move/from16 v1, v17

    if-le v0, v1, :cond_25

    move/from16 v17, v46

    :cond_25
    move/from16 v0, v48

    move/from16 v1, v19

    if-le v0, v1, :cond_26

    move/from16 v19, v48

    :cond_26
    :goto_14
    add-int/lit8 v145, v145, 0x1

    goto/16 :goto_12

    .end local v9           #next:I
    .end local v14           #here:I
    .end local v15           #ok:I
    .end local v16           #okascent:I
    .end local v17           #okdescent:I
    .end local v18           #oktop:I
    .end local v19           #okbottom:I
    .end local v26           #tab:Z
    .end local v40           #okwidth:F
    .end local v44           #fit:I
    .end local v45           #fitascent:I
    .end local v46           #fitdescent:I
    .end local v47           #fittop:I
    .end local v48           #fitbottom:I
    .end local v69           #fitwidth:F
    .end local v98           #w:F
    .end local v133           #before:F
    .end local v135           #c:C
    .end local v141           #fmascent:I
    .end local v142           #fmbottom:I
    .end local v143           #fmdescent:I
    .end local v144           #fmtop:I
    .end local v145           #j:I
    .end local v152           #sub:Ljava/lang/CharSequence;
    .end local v155           #width:I
    :cond_27
    move-object/from16 v0, v130

    move-object/from16 v1, v136

    move/from16 v2, v28

    move/from16 v3, v137

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/AlteredCharSequence;->update([CII)V

    goto/16 :goto_d

    :cond_28
    move-object/from16 v152, p1

    .restart local v152       #sub:Ljava/lang/CharSequence;
    goto/16 :goto_e

    .restart local v14       #here:I
    .restart local v15       #ok:I
    .restart local v16       #okascent:I
    .restart local v17       #okdescent:I
    .restart local v18       #oktop:I
    .restart local v19       #okbottom:I
    .restart local v26       #tab:Z
    .restart local v40       #okwidth:F
    .restart local v44       #fit:I
    .restart local v45       #fitascent:I
    .restart local v46       #fitdescent:I
    .restart local v47       #fittop:I
    .restart local v48       #fitbottom:I
    .restart local v69       #fitwidth:F
    .restart local v98       #w:F
    .restart local v155       #width:I
    :cond_29
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object v0, v7

    move v1, v8

    move/from16 v2, v137

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v9

    .restart local v9       #next:I
    goto/16 :goto_10

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/text/TextPaint;->baselineShift:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    move-object/from16 v5, p4

    invoke-static/range {v5 .. v11}, Landroid/text/Styled;->getTextWidths(Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/text/Spanned;II[FLandroid/graphics/Paint$FontMetricsInt;)I

    const/4 v5, 0x0

    sub-int v6, v137, v28

    sub-int v12, v8, v28

    add-int/2addr v6, v12

    sub-int v12, v9, v8

    invoke-static {v10, v5, v10, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v5, v0

    iget v5, v5, Landroid/text/TextPaint;->baselineShift:I

    if-gez v5, :cond_2b

    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto/16 :goto_11

    :cond_2b
    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto/16 :goto_11

    .restart local v133       #before:F
    .restart local v135       #c:C
    .restart local v141       #fmascent:I
    .restart local v142       #fmbottom:I
    .restart local v143       #fmdescent:I
    .restart local v144       #fmtop:I
    .restart local v145       #j:I
    :cond_2c
    const/16 v5, 0x9

    move/from16 v0, v135

    move v1, v5

    if-ne v0, v1, :cond_2d

    const/4 v5, 0x0

    move-object/from16 v0, v152

    move/from16 v1, v28

    move/from16 v2, v137

    move/from16 v3, v98

    move-object v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Layout;->nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F

    move-result v98

    const/16 v26, 0x1

    goto/16 :goto_13

    :cond_2d
    invoke-static/range {v135 .. v135}, Lmiui/text/util/EmojiSmileys;->isEmoji(I)Z

    move-result v5

    if-eqz v5, :cond_2f

    if-nez v7, :cond_2e

    move-object/from16 v153, p4

    .local v153, whichPaint:Landroid/graphics/Paint;
    :goto_15
    invoke-virtual/range {v153 .. v153}, Landroid/graphics/Paint;->descent()F

    move-result v5

    invoke-virtual/range {v153 .. v153}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    sget v6, Landroid/text/StaticLayout;->EMOJI_PADDING_PX:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float v154, v5, v6

    .local v154, wid:F
    add-float v98, v98, v154

    const/16 v26, 0x1

    goto/16 :goto_13

    .end local v153           #whichPaint:Landroid/graphics/Paint;
    .end local v154           #wid:F
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v153, v0

    .restart local v153       #whichPaint:Landroid/graphics/Paint;
    goto :goto_15

    .end local v153           #whichPaint:Landroid/graphics/Paint;
    :cond_2f
    sub-int v5, v145, v28

    sub-int v6, v137, v28

    add-int/2addr v5, v6

    aget v5, v10, v5

    add-float v98, v98, v5

    goto/16 :goto_13

    :cond_30
    if-eqz p12, :cond_37

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p14

    move-object v1, v5

    if-eq v0, v1, :cond_37

    if-nez p6, :cond_37

    if-eq v15, v14, :cond_33

    :goto_16
    if-ge v15, v9, :cond_31

    sub-int v5, v15, v28

    aget-char v5, v136, v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_31

    add-int/lit8 v15, v15, 0x1

    goto :goto_16

    :cond_31
    move v0, v15

    move/from16 v1, p3

    if-ne v0, v1, :cond_32

    const/4 v5, 0x1

    move/from16 v32, v5

    :goto_17
    sub-int v37, v137, v28

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v21, p8

    move/from16 v22, p9

    move-object/from16 v25, v11

    move/from16 v33, p10

    move/from16 v34, p11

    move-object/from16 v35, v10

    move/from16 v36, v28

    move-object/from16 v38, p14

    move/from16 v39, p13

    move-object/from16 v41, p4

    invoke-direct/range {v12 .. v41}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    move v14, v15

    goto/16 :goto_14

    :cond_32
    const/4 v5, 0x0

    move/from16 v32, v5

    goto :goto_17

    :cond_33
    move/from16 v69, v98

    add-int/lit8 v44, v145, 0x1

    move/from16 v0, v144

    move/from16 v1, v47

    if-ge v0, v1, :cond_34

    move/from16 v47, v144

    :cond_34
    move/from16 v0, v141

    move/from16 v1, v45

    if-ge v0, v1, :cond_35

    move/from16 v45, v141

    :cond_35
    move/from16 v0, v143

    move/from16 v1, v46

    if-le v0, v1, :cond_36

    move/from16 v46, v143

    :cond_36
    move/from16 v0, v142

    move/from16 v1, v48

    if-le v0, v1, :cond_26

    move/from16 v48, v142

    goto/16 :goto_14

    :cond_37
    if-eq v15, v14, :cond_3a

    :goto_18
    if-ge v15, v9, :cond_38

    sub-int v5, v15, v28

    aget-char v5, v136, v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_38

    add-int/lit8 v15, v15, 0x1

    goto :goto_18

    :cond_38
    move v0, v15

    move/from16 v1, p3

    if-ne v0, v1, :cond_39

    const/4 v5, 0x1

    move/from16 v32, v5

    :goto_19
    sub-int v37, v137, v28

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v21, p8

    move/from16 v22, p9

    move-object/from16 v25, v11

    move/from16 v33, p10

    move/from16 v34, p11

    move-object/from16 v35, v10

    move/from16 v36, v28

    move-object/from16 v38, p14

    move/from16 v39, p13

    move-object/from16 v41, p4

    invoke-direct/range {v12 .. v41}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    move v14, v15

    .end local v98           #w:F
    :goto_1a
    if-ge v14, v8, :cond_3e

    move v9, v14

    move/from16 v145, v14

    :goto_1b
    move/from16 v44, v14

    move v15, v14

    const/16 v98, 0x0

    .restart local v98       #w:F
    const/16 v48, 0x0

    move/from16 v47, v48

    move/from16 v46, v48

    move/from16 v45, v48

    const/16 v19, 0x0

    move/from16 v18, v19

    move/from16 v17, v19

    move/from16 v16, v19

    add-int/lit8 v139, v139, -0x1

    if-gtz v139, :cond_26

    move/from16 v155, v149

    goto/16 :goto_14

    :cond_39
    const/4 v5, 0x0

    move/from16 v32, v5

    goto :goto_19

    :cond_3a
    move/from16 v0, v44

    move v1, v14

    if-eq v0, v1, :cond_3c

    move/from16 v0, v44

    move/from16 v1, p3

    if-ne v0, v1, :cond_3b

    const/4 v5, 0x1

    move/from16 v61, v5

    :goto_1c
    sub-int v66, v137, v28

    move-object/from16 v41, p0

    move-object/from16 v42, p1

    move/from16 v43, v14

    move/from16 v49, v20

    move/from16 v50, p8

    move/from16 v51, p9

    move-object/from16 v52, v23

    move-object/from16 v53, v24

    move-object/from16 v54, v11

    move/from16 v55, v26

    move/from16 v56, v27

    move/from16 v57, v28

    move-object/from16 v58, v29

    move/from16 v59, v30

    move/from16 v60, v31

    move/from16 v62, p10

    move/from16 v63, p11

    move-object/from16 v64, v10

    move/from16 v65, v28

    move-object/from16 v67, p14

    move/from16 v68, p13

    move-object/from16 v70, p4

    invoke-direct/range {v41 .. v70}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    move/from16 v14, v44

    goto :goto_1a

    :cond_3b
    const/4 v5, 0x0

    move/from16 v61, v5

    goto :goto_1c

    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v33, v0

    add-int/lit8 v36, v14, 0x1

    const/16 v39, 0x0

    move-object/from16 v32, p4

    move-object/from16 v34, p1

    move/from16 v35, v14

    move-object/from16 v37, v11

    move/from16 v38, v26

    invoke-static/range {v32 .. v39}, Landroid/text/StaticLayout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    add-int/lit8 v73, v14, 0x1

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v74, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v75, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v76, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v77, v0

    add-int/lit8 v5, v14, 0x1

    move v0, v5

    move/from16 v1, p3

    if-ne v0, v1, :cond_3d

    const/4 v5, 0x1

    move/from16 v90, v5

    :goto_1d
    sub-int v95, v137, v28

    sub-int v5, v14, v28

    aget v98, v10, v5

    .end local v98           #w:F
    move-object/from16 v70, p0

    move-object/from16 v71, p1

    move/from16 v72, v14

    move/from16 v78, v20

    move/from16 v79, p8

    move/from16 v80, p9

    move-object/from16 v81, v23

    move-object/from16 v82, v24

    move-object/from16 v83, v11

    move/from16 v84, v26

    move/from16 v85, v27

    move/from16 v86, v28

    move-object/from16 v87, v29

    move/from16 v88, v30

    move/from16 v89, v31

    move/from16 v91, p10

    move/from16 v92, p11

    move-object/from16 v93, v10

    move/from16 v94, v28

    move-object/from16 v96, p14

    move/from16 v97, p13

    move-object/from16 v99, p4

    invoke-direct/range {v70 .. v99}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1a

    .restart local v98       #w:F
    :cond_3d
    const/4 v5, 0x0

    move/from16 v90, v5

    goto :goto_1d

    .end local v98           #w:F
    :cond_3e
    const/4 v5, 0x1

    sub-int v145, v14, v5

    goto/16 :goto_1b

    .end local v133           #before:F
    .end local v135           #c:C
    .restart local v98       #w:F
    :cond_3f
    move v8, v9

    goto/16 :goto_f

    .end local v9           #next:I
    .end local v141           #fmascent:I
    .end local v142           #fmbottom:I
    .end local v143           #fmdescent:I
    .end local v144           #fmtop:I
    .end local v145           #j:I
    :cond_40
    move/from16 v0, v137

    move v1, v14

    if-eq v0, v1, :cond_42

    or-int v5, v47, v48

    or-int v5, v5, v46

    or-int v5, v5, v45

    if-nez v5, :cond_41

    move-object/from16 v0, p4

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v47, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v48, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v45, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v46, v0

    :cond_41
    move/from16 v0, v137

    move/from16 v1, p3

    if-ne v0, v1, :cond_46

    const/4 v5, 0x1

    move/from16 v90, v5

    :goto_1e
    sub-int v95, v137, v28

    move-object/from16 v70, p0

    move-object/from16 v71, p1

    move/from16 v72, v14

    move/from16 v73, v137

    move/from16 v74, v45

    move/from16 v75, v46

    move/from16 v76, v47

    move/from16 v77, v48

    move/from16 v78, v20

    move/from16 v79, p8

    move/from16 v80, p9

    move-object/from16 v81, v23

    move-object/from16 v82, v24

    move-object/from16 v83, v11

    move/from16 v84, v26

    move/from16 v85, v27

    move/from16 v86, v28

    move-object/from16 v87, v29

    move/from16 v88, v30

    move/from16 v89, v31

    move/from16 v91, p10

    move/from16 v92, p11

    move-object/from16 v93, v10

    move/from16 v94, v28

    move-object/from16 v96, p14

    move/from16 v97, p13

    move-object/from16 v99, p4

    invoke-direct/range {v70 .. v99}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    :cond_42
    move/from16 v28, v137

    move/from16 v0, v137

    move/from16 v1, p3

    if-ne v0, v1, :cond_47

    .end local v8           #i:I
    .end local v14           #here:I
    .end local v15           #ok:I
    .end local v16           #okascent:I
    .end local v17           #okdescent:I
    .end local v18           #oktop:I
    .end local v19           #okbottom:I
    .end local v23           #chooseht:[Landroid/text/style/LineHeightSpan;
    .end local v26           #tab:Z
    .end local v30           #dir:I
    .end local v31           #easy:Z
    .end local v40           #okwidth:F
    .end local v44           #fit:I
    .end local v45           #fitascent:I
    .end local v46           #fitdescent:I
    .end local v47           #fittop:I
    .end local v48           #fitbottom:I
    .end local v69           #fitwidth:F
    .end local v98           #w:F
    .end local v131           #altered:Z
    .end local v139           #firstWidthLineCount:I
    .end local v140           #firstwidth:I
    .end local v147           #n:I
    .end local v149           #restwidth:I
    .end local v152           #sub:Ljava/lang/CharSequence;
    .end local v155           #width:I
    :cond_43
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_44

    const/4 v5, 0x1

    sub-int v5, p3, v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_45

    :cond_44
    move-object/from16 v0, p4

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v103, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v104, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v105, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v106, v0

    const/16 v110, 0x0

    const/16 v111, 0x0

    const/16 v113, 0x0

    const/16 v118, 0x1

    const/16 v119, 0x1

    const/16 v124, 0x0

    const/16 v127, 0x0

    move-object/from16 v99, p0

    move-object/from16 v100, p1

    move/from16 v101, p3

    move/from16 v102, p3

    move/from16 v107, v20

    move/from16 v108, p8

    move/from16 v109, p9

    move-object/from16 v112, v11

    move/from16 v114, v27

    move/from16 v115, p3

    move-object/from16 v116, v29

    move/from16 v120, p10

    move/from16 v121, p11

    move-object/from16 v122, v10

    move/from16 v123, p2

    move-object/from16 v125, p14

    move/from16 v126, p13

    move-object/from16 v128, p4

    invoke-direct/range {v99 .. v128}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    :cond_45
    return-void

    .restart local v8       #i:I
    .restart local v14       #here:I
    .restart local v15       #ok:I
    .restart local v16       #okascent:I
    .restart local v17       #okdescent:I
    .restart local v18       #oktop:I
    .restart local v19       #okbottom:I
    .restart local v23       #chooseht:[Landroid/text/style/LineHeightSpan;
    .restart local v26       #tab:Z
    .restart local v30       #dir:I
    .restart local v31       #easy:Z
    .restart local v40       #okwidth:F
    .restart local v44       #fit:I
    .restart local v45       #fitascent:I
    .restart local v46       #fitdescent:I
    .restart local v47       #fittop:I
    .restart local v48       #fitbottom:I
    .restart local v69       #fitwidth:F
    .restart local v98       #w:F
    .restart local v131       #altered:Z
    .restart local v139       #firstWidthLineCount:I
    .restart local v140       #firstwidth:I
    .restart local v147       #n:I
    .restart local v149       #restwidth:I
    .restart local v152       #sub:Ljava/lang/CharSequence;
    .restart local v155       #width:I
    :cond_46
    const/4 v5, 0x0

    move/from16 v90, v5

    goto/16 :goto_1e

    :cond_47
    move/from16 v28, v137

    goto/16 :goto_2
.end method

.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZZFLandroid/text/TextUtils$TruncateAt;)V
    .locals 15
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "trackpad"
    .parameter "breakOnlyAtSpaces"
    .parameter "ellipsizedWidth"
    .parameter "where"

    .prologue
    const/4 v6, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    invoke-virtual/range {v0 .. v14}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;IILandroid/text/Layout$Alignment;FFZZZFLandroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .parameter "line"

    .prologue
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 2
    .parameter "line"

    .prologue
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 2
    .parameter "line"

    .prologue
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .parameter "line"

    .prologue
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 6
    .parameter "vertical"

    .prologue
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .local v1, high:I
    const/4 v3, -0x1

    .local v3, low:I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .local v2, lines:[I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .local v0, guess:I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_0

    .end local v0           #guess:I
    :cond_1
    if-gez v3, :cond_2

    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_2
    move v4, v3

    goto :goto_1
.end method

.method public getLineStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 2
    .parameter "line"

    .prologue
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .parameter "line"

    .prologue
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method
