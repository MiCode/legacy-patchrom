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
    .line 77
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

    .line 1351
    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 92
    if-eqz p11, :cond_4

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Landroid/text/Layout$Ellipsizer;

    .line 95
    .local v17, e:Landroid/text/Layout$Ellipsizer;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 96
    move/from16 v0, p12

    move-object/from16 v1, v17

    iput v0, v1, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 97
    move-object/from16 v0, p11

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 98
    move/from16 v0, p12

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 100
    const/4 v2, 0x5

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mColumns:I

    .line 106
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

    .line 107
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

    .line 110
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

    .line 114
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

    .line 115
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p11

    move-object v1, v2

    if-ne v0, v1, :cond_1

    .line 116
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v18

    .line 117
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

    .line 118
    add-int/lit8 v2, v18, 0x1

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v2

    move v0, v2

    move/from16 v1, p6

    if-le v0, v1, :cond_0

    .line 119
    add-int/lit8 v18, v18, -0x1

    .line 121
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

    .line 123
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

    .line 124
    add-int/lit8 v2, v18, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mLineCount:I

    .line 129
    .end local v18           #lastline:I
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChdirs:[B

    .line 130
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChs:[C

    .line 131
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mWidths:[F

    .line 132
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 133
    return-void

    .line 77
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

    .line 102
    :cond_4
    const/4 v2, 0x3

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mColumns:I

    .line 103
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto/16 :goto_1

    .line 110
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
    .line 54
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

    .line 56
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
    .line 64
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

    .line 66
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
    .line 45
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

    .line 47
    return-void
.end method

.method constructor <init>(Z)V
    .locals 7
    .parameter "ellipsize"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 136
    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1351
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 138
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 139
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 140
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 142
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
    .line 659
    invoke-static {p1, p2, p3}, Landroid/text/AndroidCharacter;->getDirectionalities([C[BI)V

    .line 664
    const/4 p4, 0x1

    if-eq p0, p4, :cond_0

    .end local p4
    const/4 p4, -0x1

    if-eq p0, p4, :cond_0

    .line 666
    if-ltz p0, :cond_2

    const/4 p0, 0x1

    .line 667
    :goto_0
    const/4 p4, 0x0

    .local p4, j:I
    move v0, p4

    .end local p4           #j:I
    .local v0, j:I
    :goto_1
    if-ge v0, p3, :cond_0

    .line 668
    aget-byte p4, p2, v0

    .line 670
    .local p4, d:I
    if-nez p4, :cond_3

    .line 671
    const/4 p0, 0x1

    .line 681
    .end local v0           #j:I
    .end local p4           #d:I
    :cond_0
    :goto_2
    const/4 p4, 0x1

    if-ne p0, p4, :cond_5

    const/4 p4, 0x0

    .line 696
    .local p4, SOR:B
    :goto_3
    const/4 v0, 0x0

    .restart local v0       #j:I
    :goto_4
    if-ge v0, p3, :cond_7

    .line 697
    aget-byte v1, p2, v0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 698
    if-nez v0, :cond_6

    .line 699
    aput-byte p4, p2, v0

    .line 696
    :cond_1
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 666
    .end local v0           #j:I
    .end local p4           #SOR:B
    :cond_2
    const/4 p0, -0x1

    goto :goto_0

    .line 674
    .restart local v0       #j:I
    .local p4, d:I
    :cond_3
    const/4 v1, 0x1

    if-ne p4, v1, :cond_4

    .line 675
    const/4 p0, -0x1

    .line 676
    goto :goto_2

    .line 667
    :cond_4
    add-int/lit8 p4, v0, 0x1

    .end local v0           #j:I
    .local p4, j:I
    move v0, p4

    .end local p4           #j:I
    .restart local v0       #j:I
    goto :goto_1

    .line 681
    .end local v0           #j:I
    :cond_5
    const/4 p4, 0x1

    goto :goto_3

    .line 701
    .restart local v0       #j:I
    .local p4, SOR:B
    :cond_6
    const/4 v1, 0x1

    sub-int v1, v0, v1

    aget-byte v1, p2, v1

    aput-byte v1, p2, v0

    goto :goto_5

    .line 708
    :cond_7
    move v0, p4

    .line 709
    .local v0, cur:B
    const/4 v1, 0x0

    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .local v2, j:I
    :goto_6
    if-ge v2, p3, :cond_b

    .line 710
    aget-byte v1, p2, v2

    .line 712
    .local v1, d:B
    if-eqz v1, :cond_8

    const/4 v3, 0x1

    if-eq v1, v3, :cond_8

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a

    .line 715
    :cond_8
    move v0, v1

    .line 709
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

    .line 716
    .local v1, d:B
    :cond_a
    const/4 v3, 0x3

    if-ne v1, v3, :cond_9

    .line 717
    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 719
    .end local v1           #d:B
    const/4 v1, 0x6

    aput-byte v1, p2, v2

    goto :goto_7

    .line 726
    :cond_b
    const/4 v0, 0x0

    .end local v2           #j:I
    .local v0, j:I
    :goto_8
    if-ge v0, p3, :cond_d

    .line 727
    aget-byte v1, p2, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 728
    const/4 v1, 0x1

    aput-byte v1, p2, v0

    .line 726
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 734
    :cond_d
    const/4 v0, 0x1

    move v1, v0

    .end local v0           #j:I
    .local v1, j:I
    :goto_9
    const/4 v0, 0x1

    sub-int v0, p3, v0

    if-ge v1, v0, :cond_11

    .line 735
    aget-byte v0, p2, v1

    .line 736
    .local v0, d:B
    const/4 v2, 0x1

    sub-int v2, v1, v2

    aget-byte v3, p2, v2

    .line 737
    .local v3, prev:B
    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p2, v2

    .line 739
    .local v2, next:B
    const/4 v4, 0x4

    if-ne v0, v4, :cond_f

    .line 740
    const/4 v0, 0x3

    if-ne v3, v0, :cond_e

    .end local v0           #d:B
    const/4 v0, 0x3

    if-ne v2, v0, :cond_e

    .line 742
    const/4 v0, 0x3

    aput-byte v0, p2, v1

    .line 734
    :cond_e
    :goto_a
    add-int/lit8 v0, v1, 0x1

    .end local v1           #j:I
    .local v0, j:I
    move v1, v0

    .end local v0           #j:I
    .restart local v1       #j:I
    goto :goto_9

    .line 743
    .local v0, d:B
    :cond_f
    const/4 v4, 0x7

    if-ne v0, v4, :cond_e

    .line 744
    const/4 v0, 0x3

    if-ne v3, v0, :cond_10

    .end local v0           #d:B
    const/4 v0, 0x3

    if-ne v2, v0, :cond_10

    .line 746
    const/4 v0, 0x3

    aput-byte v0, p2, v1

    .line 747
    :cond_10
    const/4 v0, 0x6

    if-ne v3, v0, :cond_e

    const/4 v0, 0x6

    if-ne v2, v0, :cond_e

    .line 749
    const/4 v0, 0x6

    aput-byte v0, p2, v1

    goto :goto_a

    .line 756
    .end local v2           #next:B
    .end local v3           #prev:B
    :cond_11
    const/4 v0, 0x0

    .line 757
    .local v0, adjacent:Z
    const/4 v1, 0x0

    move v2, v1

    .end local v1           #j:I
    .local v2, j:I
    :goto_b
    if-ge v2, p3, :cond_14

    .line 758
    aget-byte v1, p2, v2

    .line 760
    .local v1, d:B
    const/4 v3, 0x3

    if-ne v1, v3, :cond_12

    .line 761
    const/4 v0, 0x1

    .line 757
    .end local v1           #d:B
    :goto_c
    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_b

    .line 762
    .local v1, d:B
    :cond_12
    const/4 v3, 0x5

    if-ne v1, v3, :cond_13

    if-eqz v0, :cond_13

    .line 763
    const/4 v1, 0x3

    aput-byte v1, p2, v2

    goto :goto_c

    .line 765
    :cond_13
    const/4 v0, 0x0

    goto :goto_c

    .line 772
    .end local v1           #d:B
    :cond_14
    const/4 v0, 0x0

    .line 773
    const/4 v1, 0x1

    sub-int v1, p3, v1

    .end local v2           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    :goto_d
    if-ltz v2, :cond_1a

    .line 774
    aget-byte v1, p2, v2

    .line 776
    .local v1, d:B
    const/4 v3, 0x3

    if-ne v1, v3, :cond_16

    .line 777
    const/4 v0, 0x1

    .line 773
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

    .line 778
    .local v1, d:B
    :cond_16
    const/4 v3, 0x5

    if-ne v1, v3, :cond_18

    .line 779
    if-eqz v0, :cond_17

    .line 780
    const/4 v1, 0x3

    aput-byte v1, p2, v2

    goto :goto_e

    .line 782
    :cond_17
    const/16 v1, 0xd

    aput-byte v1, p2, v2

    goto :goto_e

    .line 785
    :cond_18
    const/4 v0, 0x0

    .line 787
    const/4 v3, 0x4

    if-eq v1, v3, :cond_19

    const/4 v3, 0x7

    if-eq v1, v3, :cond_19

    const/16 v3, 0xa

    if-eq v1, v3, :cond_19

    const/16 v3, 0xb

    if-ne v1, v3, :cond_15

    .line 791
    :cond_19
    const/16 v1, 0xd

    aput-byte v1, p2, v2

    goto :goto_e

    .line 798
    .end local v1           #d:B
    :cond_1a
    move v0, p4

    .line 799
    .local v0, cur:B
    const/4 v1, 0x0

    .end local v2           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    :goto_f
    if-ge v2, p3, :cond_1e

    .line 800
    aget-byte v1, p2, v2

    .line 802
    .local v1, d:B
    if-eq v1, p4, :cond_1b

    if-eqz v1, :cond_1b

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1c

    .line 805
    :cond_1b
    move v0, v1

    .line 807
    :cond_1c
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1d

    .line 808
    aput-byte v0, p2, v2

    .line 799
    :cond_1d
    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_f

    .line 814
    :cond_1e
    move v0, p4

    .line 815
    const/4 v1, 0x0

    .end local v2           #j:I
    .restart local v1       #j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    :goto_10
    if-ge v2, p3, :cond_29

    .line 816
    aget-byte v1, p2, v2

    .line 818
    .local v1, d:B
    if-eqz v1, :cond_1f

    const/4 v3, 0x1

    if-ne v1, v3, :cond_20

    .line 820
    :cond_1f
    move v0, v1

    move v1, v2

    .line 815
    .end local v2           #j:I
    .local v1, j:I
    :goto_11
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_10

    .line 821
    .local v1, d:B
    :cond_20
    const/4 v3, 0x3

    if-eq v1, v3, :cond_21

    const/4 v3, 0x6

    if-ne v1, v3, :cond_22

    .line 823
    :cond_21
    const/4 v0, 0x1

    move v1, v2

    .end local v2           #j:I
    .local v1, j:I
    goto :goto_11

    .line 825
    .local v1, d:B
    .restart local v2       #j:I
    :cond_22
    move v1, p4

    .line 828
    .local v1, dd:B
    add-int/lit8 v3, v2, 0x1

    .local v3, k:I
    :goto_12
    if-ge v3, p3, :cond_23

    .line 829
    aget-byte v1, p2, v3

    .line 831
    if-eqz v1, :cond_23

    const/4 v4, 0x1

    if-ne v1, v4, :cond_24

    .line 842
    :cond_23
    :goto_13
    move v2, v2

    .local v2, y:I
    :goto_14
    if-ge v2, v3, :cond_28

    .line 843
    if-ne v1, v0, :cond_27

    .line 844
    aput-byte v0, p2, v2

    .line 842
    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 835
    .local v2, j:I
    :cond_24
    const/4 v4, 0x3

    if-eq v1, v4, :cond_25

    const/4 v4, 0x6

    if-ne v1, v4, :cond_26

    .line 837
    :cond_25
    const/4 v1, 0x1

    .line 838
    goto :goto_13

    .line 828
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 846
    .local v2, y:I
    :cond_27
    aput-byte p4, p2, v2

    goto :goto_15

    .line 849
    :cond_28
    const/4 v1, 0x1

    sub-int v1, v3, v1

    .local v1, j:I
    goto :goto_11

    .line 859
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

    .line 860
    aget-char v0, p1, v1

    .line 862
    .local v0, c:C
    const/16 v2, 0x9

    if-eq v0, v2, :cond_2a

    const v2, 0xd800

    if-lt v0, v2, :cond_2b

    const v2, 0xdfff

    if-gt v0, v2, :cond_2b

    .line 863
    :cond_2a
    aput-byte p4, p2, v1

    .line 859
    :cond_2b
    add-int/lit8 v0, v1, 0x1

    .end local v1           #j:I
    .local v0, j:I
    move v1, v0

    .end local v0           #j:I
    .restart local v1       #j:I
    goto :goto_16

    .line 867
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
    .line 1156
    sub-int v8, p2, p1

    .line 1158
    .local v8, len:I
    cmpg-float v15, p9, p6

    if-gtz v15, :cond_0

    .line 1160
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

    .line 1161
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

    .line 1232
    :goto_0
    return-void

    .line 1165
    :cond_0
    const-string/jumbo v15, "\u2026"

    move-object/from16 v0, p10

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 1168
    .local v4, ellipsiswid:F
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object v1, v15

    if-ne v0, v1, :cond_3

    .line 1169
    const/4 v13, 0x0

    .line 1172
    .local v13, sum:F
    move v5, v8

    .local v5, i:I
    :goto_1
    if-ltz v5, :cond_1

    .line 1173
    const/4 v15, 0x1

    sub-int v15, v5, v15

    add-int v15, v15, p1

    sub-int v15, v15, p4

    add-int v15, v15, p5

    aget v14, p3, v15

    .line 1175
    .local v14, w:F
    add-float v15, v14, v13

    add-float/2addr v15, v4

    cmpl-float v15, v15, p6

    if-lez v15, :cond_2

    .line 1182
    .end local v14           #w:F
    :cond_1
    const/4 v3, 0x0

    .line 1183
    .local v3, ellipsisStart:I
    move v2, v5

    .line 1230
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

    .line 1231
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

    .line 1179
    .end local v2           #ellipsisCount:I
    .end local v3           #ellipsisStart:I
    .restart local v5       #i:I
    .restart local v13       #sum:F
    .restart local v14       #w:F
    :cond_2
    add-float/2addr v13, v14

    .line 1172
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1184
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

    .line 1185
    :cond_4
    const/4 v13, 0x0

    .line 1188
    .restart local v13       #sum:F
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_3
    if-ge v5, v8, :cond_5

    .line 1189
    add-int v15, v5, p1

    sub-int v15, v15, p4

    add-int v15, v15, p5

    aget v14, p3, v15

    .line 1191
    .restart local v14       #w:F
    add-float v15, v14, v13

    add-float/2addr v15, v4

    cmpl-float v15, v15, p6

    if-lez v15, :cond_6

    .line 1198
    .end local v14           #w:F
    :cond_5
    move v3, v5

    .line 1199
    .restart local v3       #ellipsisStart:I
    sub-int v2, v8, v5

    .line 1200
    .restart local v2       #ellipsisCount:I
    goto :goto_2

    .line 1195
    .end local v2           #ellipsisCount:I
    .end local v3           #ellipsisStart:I
    .restart local v14       #w:F
    :cond_6
    add-float/2addr v13, v14

    .line 1188
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1201
    .end local v5           #i:I
    .end local v13           #sum:F
    .end local v14           #w:F
    :cond_7
    const/4 v9, 0x0

    .local v9, lsum:F
    const/4 v12, 0x0

    .line 1202
    .local v12, rsum:F
    const/4 v7, 0x0

    .local v7, left:I
    move v11, v8

    .line 1204
    .local v11, right:I
    sub-float v15, p6, v4

    const/high16 v16, 0x4000

    div-float v10, v15, v16

    .line 1205
    .local v10, ravail:F
    move v11, v8

    :goto_4
    if-ltz v11, :cond_8

    .line 1206
    const/4 v15, 0x1

    sub-int v15, v11, v15

    add-int v15, v15, p1

    sub-int v15, v15, p4

    add-int v15, v15, p5

    aget v14, p3, v15

    .line 1208
    .restart local v14       #w:F
    add-float v15, v14, v12

    cmpl-float v15, v15, v10

    if-lez v15, :cond_a

    .line 1215
    .end local v14           #w:F
    :cond_8
    sub-float v15, p6, v4

    sub-float v6, v15, v12

    .line 1216
    .local v6, lavail:F
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v11, :cond_9

    .line 1217
    add-int v15, v7, p1

    sub-int v15, v15, p4

    add-int v15, v15, p5

    aget v14, p3, v15

    .line 1219
    .restart local v14       #w:F
    add-float v15, v14, v9

    cmpl-float v15, v15, v6

    if-lez v15, :cond_b

    .line 1226
    .end local v14           #w:F
    :cond_9
    move v3, v7

    .line 1227
    .restart local v3       #ellipsisStart:I
    sub-int v2, v11, v7

    .restart local v2       #ellipsisCount:I
    goto/16 :goto_2

    .line 1212
    .end local v2           #ellipsisCount:I
    .end local v3           #ellipsisStart:I
    .end local v6           #lavail:F
    .restart local v14       #w:F
    :cond_a
    add-float/2addr v12, v14

    .line 1205
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    .line 1223
    .restart local v6       #lavail:F
    :cond_b
    add-float/2addr v9, v14

    .line 1216
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

    .line 979
    add-int/lit8 v8, p4, 0x1

    .local v8, high:I
    sub-int v9, p3, v6

    .line 981
    .local v9, low:I
    :goto_0
    sub-int v0, v8, v9

    if-le v0, v6, :cond_1

    .line 982
    add-int v0, v8, v9

    div-int/lit8 v4, v0, 0x2

    .local v4, guess:I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, v5

    .line 984
    invoke-static/range {v0 .. v7}, Landroid/text/StaticLayout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    move-result v0

    cmpl-float v0, v0, p5

    if-lez v0, :cond_0

    .line 986
    move v8, v4

    goto :goto_0

    .line 988
    :cond_0
    move v9, v4

    goto :goto_0

    .line 991
    .end local v4           #guess:I
    :cond_1
    if-ge v9, p3, :cond_2

    move v0, p3

    .line 994
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

    .line 882
    const/16 v0, 0x2e80

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2fff

    if-gt p0, v0, :cond_0

    move v0, v1

    .line 959
    :goto_0
    return v0

    .line 885
    :cond_0
    const/16 v0, 0x3000

    if-ne p0, v0, :cond_1

    move v0, v1

    .line 886
    goto :goto_0

    .line 888
    :cond_1
    const/16 v0, 0x3040

    if-lt p0, v0, :cond_3

    const/16 v0, 0x309f

    if-gt p0, v0, :cond_3

    .line 889
    if-nez p1, :cond_2

    .line 890
    sparse-switch p0, :sswitch_data_0

    :cond_2
    move v0, v1

    .line 910
    goto :goto_0

    :sswitch_0
    move v0, v2

    .line 907
    goto :goto_0

    .line 912
    :cond_3
    const/16 v0, 0x30a0

    if-lt p0, v0, :cond_5

    const/16 v0, 0x30ff

    if-gt p0, v0, :cond_5

    .line 913
    if-nez p1, :cond_4

    .line 914
    sparse-switch p0, :sswitch_data_1

    :cond_4
    move v0, v1

    .line 935
    goto :goto_0

    :sswitch_1
    move v0, v2

    .line 932
    goto :goto_0

    .line 937
    :cond_5
    const/16 v0, 0x3400

    if-lt p0, v0, :cond_6

    const/16 v0, 0x4db5

    if-gt p0, v0, :cond_6

    move v0, v1

    .line 938
    goto :goto_0

    .line 940
    :cond_6
    const/16 v0, 0x4e00

    if-lt p0, v0, :cond_7

    const v0, 0x9fbb

    if-gt p0, v0, :cond_7

    move v0, v1

    .line 941
    goto :goto_0

    .line 943
    :cond_7
    const v0, 0xf900

    if-lt p0, v0, :cond_8

    const v0, 0xfad9

    if-gt p0, v0, :cond_8

    move v0, v1

    .line 944
    goto :goto_0

    .line 946
    :cond_8
    const v0, 0xa000

    if-lt p0, v0, :cond_9

    const v0, 0xa48f

    if-gt p0, v0, :cond_9

    move v0, v1

    .line 947
    goto :goto_0

    .line 949
    :cond_9
    const v0, 0xa490

    if-lt p0, v0, :cond_a

    const v0, 0xa4cf

    if-gt p0, v0, :cond_a

    move v0, v1

    .line 950
    goto :goto_0

    .line 952
    :cond_a
    const v0, 0xfe62

    if-lt p0, v0, :cond_b

    const v0, 0xfe66

    if-gt p0, v0, :cond_b

    move v0, v1

    .line 953
    goto :goto_0

    .line 955
    :cond_b
    const v0, 0xff10

    if-lt p0, v0, :cond_c

    const v0, 0xff19

    if-gt p0, v0, :cond_c

    move v0, v1

    .line 956
    goto :goto_0

    :cond_c
    move v0, v2

    .line 959
    goto :goto_0

    .line 890
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

    .line 914
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
    .line 1008
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move v13, v0

    .line 1009
    .local v13, j:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    mul-int v31, v13, v5

    .line 1010
    .local v31, off:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    add-int v5, v5, v31

    add-int/lit8 v32, v5, 0x1

    .line 1011
    .local v32, want:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v29, v0

    .line 1015
    .local v29, lines:[I
    move-object/from16 v0, v29

    array-length v0, v0

    move v5, v0

    move/from16 v0, v32

    move v1, v5

    if-lt v0, v1, :cond_0

    .line 1016
    add-int/lit8 v5, v32, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v30

    .line 1017
    .local v30, nlen:I
    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .line 1018
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

    .line 1019
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 1020
    move-object/from16 v29, v22

    .line 1022
    move/from16 v0, v30

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v23, v0

    .line 1023
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

    .line 1025
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 1028
    .end local v22           #grow:[I
    .end local v23           #grow2:[Landroid/text/Layout$Directions;
    .end local v30           #nlen:I
    :cond_0
    if-eqz p11, :cond_3

    .line 1029
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1030
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1031
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1032
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1034
    const/16 v25, 0x0

    .local v25, i:I
    :goto_0
    move-object/from16 v0, p11

    array-length v0, v0

    move v5, v0

    move/from16 v0, v25

    move v1, v5

    if-ge v0, v1, :cond_2

    .line 1035
    aget-object v5, p11, v25

    instance-of v5, v5, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v5, :cond_1

    .line 1036
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

    .line 1034
    :goto_1
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 1040
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

    .line 1044
    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 1045
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 1046
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 1047
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 1050
    .end local v25           #i:I
    :cond_3
    if-nez v13, :cond_5

    .line 1051
    if-eqz p22, :cond_4

    .line 1052
    sub-int v5, p6, p4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mTopPadding:I

    .line 1055
    :cond_4
    if-eqz p21, :cond_5

    .line 1056
    move/from16 p4, p6

    .line 1059
    :cond_5
    if-eqz p20, :cond_7

    .line 1060
    if-eqz p22, :cond_6

    .line 1061
    sub-int v5, p7, p5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 1064
    :cond_6
    if-eqz p21, :cond_7

    .line 1065
    move/from16 p5, p7

    .line 1071
    :cond_7
    if-eqz p15, :cond_b

    .line 1072
    sub-int v5, p5, p4

    int-to-float v5, v5

    const/high16 v6, 0x3f80

    sub-float v6, p9, v6

    mul-float/2addr v5, v6

    add-float v5, v5, p10

    move v0, v5

    float-to-double v0, v0

    move-wide/from16 v19, v0

    .line 1073
    .local v19, ex:D
    const-wide/16 v5, 0x0

    cmpl-double v5, v19, v5

    if-ltz v5, :cond_a

    .line 1074
    const-wide/high16 v5, 0x3fe0

    add-double v5, v5, v19

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v21, v0

    .line 1082
    .end local v19           #ex:D
    .local v21, extra:I
    :goto_2
    add-int/lit8 v5, v31, 0x0

    aput p2, v29, v5

    .line 1083
    add-int/lit8 v5, v31, 0x1

    aput p8, v29, v5

    .line 1084
    add-int/lit8 v5, v31, 0x2

    add-int v6, p5, v21

    aput v6, v29, v5

    .line 1086
    sub-int v5, p5, p4

    add-int v5, v5, v21

    add-int p8, p8, v5

    .line 1087
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    add-int v5, v5, v31

    add-int/lit8 v5, v5, 0x0

    aput p3, v29, v5

    .line 1088
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    add-int v5, v5, v31

    add-int/lit8 v5, v5, 0x1

    aput p8, v29, v5

    .line 1090
    if-eqz p14, :cond_8

    .line 1091
    add-int/lit8 v5, v31, 0x0

    aget v6, v29, v5

    const/high16 v7, 0x2000

    or-int/2addr v6, v7

    aput v6, v29, v5

    .line 1094
    :cond_8
    add-int/lit8 v5, v31, 0x0

    aget v6, v29, v5

    shl-int/lit8 v7, p18, 0x1e

    or-int/2addr v6, v7

    aput v6, v29, v5

    .line 1096
    const/16 v18, 0x0

    .line 1097
    .local v18, cur:I
    const/16 v16, 0x0

    .line 1099
    .local v16, count:I
    if-nez p19, :cond_c

    .line 1100
    move/from16 v26, p2

    .local v26, k:I
    :goto_3
    move/from16 v0, v26

    move/from16 v1, p3

    if-ge v0, v1, :cond_c

    .line 1101
    sub-int v5, v26, p16

    aget-byte v5, p17, v5

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 1102
    add-int/lit8 v16, v16, 0x1

    .line 1103
    sub-int v5, v26, p16

    aget-byte v18, p17, v5

    .line 1100
    :cond_9
    add-int/lit8 v26, v26, 0x1

    goto :goto_3

    .line 1076
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

    .line 1079
    .end local v19           #ex:D
    .end local v21           #extra:I
    :cond_b
    const/16 v21, 0x0

    .restart local v21       #extra:I
    goto :goto_2

    .line 1110
    .restart local v16       #count:I
    .restart local v18       #cur:I
    :cond_c
    if-nez v16, :cond_f

    .line 1111
    sget-object v28, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1138
    .local v28, linedirs:Landroid/text/Layout$Directions;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move-object v5, v0

    aput-object v28, v5, v13

    .line 1141
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

    .line 1142
    invoke-direct/range {v5 .. v15}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;)V

    .line 1148
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mLineCount:I

    .line 1149
    return p8

    .line 1113
    .end local v28           #linedirs:Landroid/text/Layout$Directions;
    :cond_f
    add-int/lit8 v5, v16, 0x1

    move v0, v5

    new-array v0, v0, [S

    move-object/from16 v27, v0

    .line 1115
    .local v27, ld:[S
    const/16 v18, 0x0

    .line 1116
    const/16 v16, 0x0

    .line 1117
    move/from16 v24, p2

    .line 1119
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

    .line 1120
    sub-int v5, v26, p16

    aget-byte v5, p17, v5

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_12

    .line 1123
    add-int/lit8 v16, v17, 0x1

    .end local v17           #count:I
    .restart local v16       #count:I
    sub-int v5, v26, v24

    int-to-short v5, v5

    aput-short v5, v27, v17

    .line 1124
    sub-int v5, v26, p16

    aget-byte v18, p17, v5

    .line 1125
    move/from16 v24, v26

    .line 1119
    :goto_6
    add-int/lit8 v26, v26, 0x1

    move/from16 v17, v16

    .end local v16           #count:I
    .restart local v17       #count:I
    goto :goto_5

    .line 1129
    :cond_10
    sub-int v5, p3, v24

    int-to-short v5, v5

    aput-short v5, v27, v17

    .line 1131
    const/4 v5, 0x1

    move/from16 v0, v17

    move v1, v5

    if-ne v0, v1, :cond_11

    const/4 v5, 0x0

    aget-short v5, v27, v5

    if-nez v5, :cond_11

    .line 1132
    sget-object v28, Landroid/text/StaticLayout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    .restart local v28       #linedirs:Landroid/text/Layout$Directions;
    move/from16 v16, v17

    .end local v17           #count:I
    .restart local v16       #count:I
    goto :goto_4

    .line 1134
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
    .line 167
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mLineCount:I

    .line 169
    const/16 v20, 0x0

    .line 170
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

    .line 172
    .local v27, needMultiply:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object v11, v0

    .line 173
    .local v11, fm:Landroid/graphics/Paint$FontMetricsInt;
    const/16 v24, 0x0

    .line 175
    .local v24, choosehtv:[I
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move v1, v5

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v137

    .line 176
    .local v137, end:I
    if-ltz v137, :cond_5

    sub-int v5, v137, p2

    move/from16 v134, v5

    .line 177
    .local v134, bufsiz:I
    :goto_1
    const/16 v138, 0x1

    .line 179
    .local v138, first:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mChdirs:[B

    move-object v5, v0

    if-nez v5, :cond_1

    .line 180
    add-int/lit8 v5, v134, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v5

    new-array v5, v5, [B

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChdirs:[B

    .line 181
    add-int/lit8 v5, v134, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v5

    new-array v5, v5, [C

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChs:[C

    .line 182
    add-int/lit8 v5, v134, 0x1

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v5, v5, [F

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mWidths:[F

    .line 185
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mChdirs:[B

    move-object/from16 v29, v0

    .line 186
    .local v29, chdirs:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mChs:[C

    move-object/from16 v136, v0

    .line 187
    .local v136, chs:[C
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWidths:[F

    move-object v10, v0

    .line 189
    .local v10, widths:[F
    const/16 v130, 0x0

    .line 190
    .local v130, alter:Landroid/text/AlteredCharSequence;
    const/4 v7, 0x0

    .line 192
    .local v7, spanned:Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-eqz v5, :cond_2

    .line 193
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v7, v0

    .line 195
    :cond_2
    const/16 v117, 0x1

    .line 197
    .local v117, DEFAULT_DIR:I
    move/from16 v28, p2

    .local v28, start:I
    :goto_2
    move/from16 v0, v28

    move/from16 v1, p3

    if-gt v0, v1, :cond_43

    .line 198
    if-eqz v138, :cond_6

    .line 199
    const/16 v138, 0x0

    .line 203
    :goto_3
    if-gez v137, :cond_7

    .line 204
    move/from16 v137, p3

    .line 208
    :goto_4
    const/16 v139, 0x1

    .line 209
    .local v139, firstWidthLineCount:I
    move/from16 v140, p5

    .line 210
    .local v140, firstwidth:I
    move/from16 v149, p5

    .line 212
    .local v149, restwidth:I
    const/16 v23, 0x0

    .line 214
    .local v23, chooseht:[Landroid/text/style/LineHeightSpan;
    if-eqz v7, :cond_c

    .line 217
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object v0, v7

    move/from16 v1, v28

    move/from16 v2, v137

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v150

    check-cast v150, [Landroid/text/style/LeadingMarginSpan;

    .line 218
    .local v150, sp:[Landroid/text/style/LeadingMarginSpan;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_5
    move-object/from16 v0, v150

    array-length v0, v0

    move v5, v0

    if-ge v8, v5, :cond_8

    .line 219
    aget-object v146, v150, v8

    .line 220
    .local v146, lms:Landroid/text/style/LeadingMarginSpan;
    aget-object v5, v150, v8

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v140, v140, v5

    .line 221
    aget-object v5, v150, v8

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v149, v149, v5

    .line 222
    move-object/from16 v0, v146

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move v5, v0

    if-eqz v5, :cond_3

    .line 223
    check-cast v146, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .end local v146           #lms:Landroid/text/style/LeadingMarginSpan;
    invoke-interface/range {v146 .. v146}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v139

    .line 218
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 170
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

    .line 176
    .restart local v11       #fm:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v24       #choosehtv:[I
    .restart local v27       #needMultiply:Z
    .restart local v137       #end:I
    :cond_5
    sub-int v5, p3, p2

    move/from16 v134, v5

    goto/16 :goto_1

    .line 201
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

    .line 206
    :cond_7
    add-int/lit8 v137, v137, 0x1

    goto :goto_4

    .line 227
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

    .line 229
    .restart local v23       #chooseht:[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    if-eqz v5, :cond_c

    .line 230
    if-eqz v24, :cond_9

    move-object/from16 v0, v24

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move v6, v0

    if-ge v5, v6, :cond_a

    .line 232
    :cond_9
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 236
    :cond_a
    const/4 v8, 0x0

    :goto_6
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    if-ge v8, v5, :cond_c

    .line 237
    aget-object v5, v23, v8

    invoke-interface {v7, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v148

    .line 239
    .local v148, o:I
    move/from16 v0, v148

    move/from16 v1, v28

    if-ge v0, v1, :cond_b

    .line 243
    move-object/from16 v0, p0

    move/from16 v1, v148

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v24, v8

    .line 236
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 247
    :cond_b
    aput v20, v24, v8

    goto :goto_7

    .line 253
    .end local v8           #i:I
    .end local v148           #o:I
    .end local v150           #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_c
    sub-int v5, v137, v28

    move-object/from16 v0, v29

    array-length v0, v0

    move v6, v0

    if-le v5, v6, :cond_d

    .line 254
    sub-int v5, v137, v28

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v5

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v29, v0

    .line 255
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChdirs:[B

    .line 257
    :cond_d
    sub-int v5, v137, v28

    move-object/from16 v0, v136

    array-length v0, v0

    move v6, v0

    if-le v5, v6, :cond_e

    .line 258
    sub-int v5, v137, v28

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v5

    move v0, v5

    new-array v0, v0, [C

    move-object/from16 v136, v0

    .line 259
    move-object/from16 v0, v136

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChs:[C

    .line 261
    :cond_e
    sub-int v5, v137, v28

    mul-int/lit8 v5, v5, 0x2

    array-length v6, v10

    if-le v5, v6, :cond_f

    .line 262
    sub-int v5, v137, v28

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v10, v5, [F

    .line 263
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mWidths:[F

    .line 266
    :cond_f
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v137

    move-object/from16 v3, v136

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 267
    sub-int v147, v137, v28

    .line 269
    .local v147, n:I
    const/16 v31, 0x1

    .line 270
    .local v31, easy:Z
    const/16 v131, 0x0

    .line 271
    .local v131, altered:Z
    move/from16 v30, v117

    .line 273
    .local v30, dir:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_8
    move v0, v8

    move/from16 v1, v147

    if-ge v0, v1, :cond_10

    .line 274
    aget-char v5, v136, v8

    const/16 v6, 0x590

    if-lt v5, v6, :cond_11

    .line 275
    const/16 v31, 0x0

    .line 284
    :cond_10
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-eqz v5, :cond_13

    .line 285
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v150, v0

    .line 286
    .local v150, sp:Landroid/text/Spanned;
    const-class v5, Landroid/text/style/ReplacementSpan;

    move-object/from16 v0, v150

    move/from16 v1, v28

    move/from16 v2, v137

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v151

    check-cast v151, [Landroid/text/style/ReplacementSpan;

    .line 288
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

    .line 289
    aget-object v5, v151, v157

    move-object/from16 v0, v150

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v129

    .line 290
    .local v129, a:I
    aget-object v5, v151, v157

    move-object/from16 v0, v150

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v132

    .line 292
    .local v132, b:I
    move/from16 v156, v129

    .local v156, x:I
    :goto_a
    move/from16 v0, v156

    move/from16 v1, v132

    if-ge v0, v1, :cond_12

    .line 293
    sub-int v5, v156, v28

    const v6, 0xfffc

    aput-char v6, v136, v5

    .line 292
    add-int/lit8 v156, v156, 0x1

    goto :goto_a

    .line 273
    .end local v129           #a:I
    .end local v132           #b:I
    .end local v150           #sp:Landroid/text/Spanned;
    .end local v151           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v156           #x:I
    .end local v157           #y:I
    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 288
    .restart local v129       #a:I
    .restart local v132       #b:I
    .restart local v150       #sp:Landroid/text/Spanned;
    .restart local v151       #spans:[Landroid/text/style/ReplacementSpan;
    .restart local v156       #x:I
    .restart local v157       #y:I
    :cond_12
    add-int/lit8 v157, v157, 0x1

    goto :goto_9

    .line 298
    .end local v129           #a:I
    .end local v132           #b:I
    .end local v150           #sp:Landroid/text/Spanned;
    .end local v151           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v156           #x:I
    .end local v157           #y:I
    :cond_13
    if-nez v31, :cond_18

    .line 300
    const/4 v5, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v136

    move-object/from16 v2, v29

    move/from16 v3, v147

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/StaticLayout;->bidi(I[C[BIZ)I

    move-result v30

    .line 304
    const/4 v8, 0x0

    :goto_b
    move v0, v8

    move/from16 v1, v147

    if-ge v0, v1, :cond_18

    .line 305
    aget-byte v5, v29, v8

    const/4 v6, 0x1

    if-ne v5, v6, :cond_16

    .line 308
    move/from16 v145, v8

    .local v145, j:I
    :goto_c
    move/from16 v0, v145

    move/from16 v1, v147

    if-ge v0, v1, :cond_14

    .line 309
    aget-byte v5, v29, v145

    const/4 v6, 0x1

    if-eq v5, v6, :cond_17

    .line 314
    :cond_14
    sub-int v5, v145, v8

    move-object/from16 v0, v136

    move v1, v8

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/text/AndroidCharacter;->mirror([CII)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 315
    const/16 v131, 0x1

    .line 317
    :cond_15
    const/4 v5, 0x1

    sub-int v8, v145, v5

    .line 304
    .end local v145           #j:I
    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 308
    .restart local v145       #j:I
    :cond_17
    add-int/lit8 v145, v145, 0x1

    goto :goto_c

    .line 324
    .end local v145           #j:I
    :cond_18
    if-eqz v131, :cond_28

    .line 325
    if-nez v130, :cond_27

    .line 326
    move-object/from16 v0, p1

    move-object/from16 v1, v136

    move/from16 v2, v28

    move/from16 v3, v137

    invoke-static {v0, v1, v2, v3}, Landroid/text/AlteredCharSequence;->make(Ljava/lang/CharSequence;[CII)Landroid/text/AlteredCharSequence;

    move-result-object v130

    .line 330
    :goto_d
    move-object/from16 v152, v130

    .line 335
    .local v152, sub:Ljava/lang/CharSequence;
    :goto_e
    move/from16 v155, v140

    .line 337
    .local v155, width:I
    const/16 v98, 0x0

    .line 338
    .local v98, w:F
    move/from16 v14, v28

    .line 340
    .local v14, here:I
    move/from16 v15, v28

    .line 341
    .local v15, ok:I
    move/from16 v40, v98

    .line 342
    .local v40, okwidth:F
    const/16 v16, 0x0

    .local v16, okascent:I
    const/16 v17, 0x0

    .local v17, okdescent:I
    const/16 v18, 0x0

    .local v18, oktop:I
    const/16 v19, 0x0

    .line 344
    .local v19, okbottom:I
    move/from16 v44, v28

    .line 345
    .local v44, fit:I
    move/from16 v69, v98

    .line 346
    .local v69, fitwidth:F
    const/16 v45, 0x0

    .local v45, fitascent:I
    const/16 v46, 0x0

    .local v46, fitdescent:I
    const/16 v47, 0x0

    .local v47, fittop:I
    const/16 v48, 0x0

    .line 348
    .local v48, fitbottom:I
    const/16 v26, 0x0

    .line 351
    .local v26, tab:Z
    move/from16 v8, v28

    :goto_f
    move v0, v8

    move/from16 v1, v137

    if-ge v0, v1, :cond_40

    .line 352
    if-nez v7, :cond_29

    .line 353
    move/from16 v9, v137

    .line 359
    .local v9, next:I
    :goto_10
    if-nez v7, :cond_2a

    .line 360
    move-object/from16 v0, p4

    move-object/from16 v1, v152

    move v2, v8

    move v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    .line 361
    const/4 v5, 0x0

    sub-int v6, v137, v28

    sub-int v12, v8, v28

    add-int/2addr v6, v12

    sub-int v12, v9, v8

    invoke-static {v10, v5, v10, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    move-object/from16 v0, p4

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 383
    :goto_11
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v144, v0

    .line 384
    .local v144, fmtop:I
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v142, v0

    .line 385
    .local v142, fmbottom:I
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v141, v0

    .line 386
    .local v141, fmascent:I
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v143, v0

    .line 398
    .local v143, fmdescent:I
    move/from16 v145, v8

    .restart local v145       #j:I
    :goto_12
    move/from16 v0, v145

    move v1, v9

    if-ge v0, v1, :cond_3f

    .line 399
    sub-int v5, v145, v28

    aget-char v135, v136, v5

    .line 400
    .local v135, c:C
    move/from16 v133, v98

    .line 402
    .local v133, before:F
    const/16 v5, 0xa

    move/from16 v0, v135

    move v1, v5

    if-ne v0, v1, :cond_2c

    .line 425
    :goto_13
    move/from16 v0, v155

    int-to-float v0, v0

    move v5, v0

    cmpg-float v5, v98, v5

    if-gtz v5, :cond_30

    .line 426
    move/from16 v69, v98

    .line 427
    add-int/lit8 v44, v145, 0x1

    .line 429
    move/from16 v0, v144

    move/from16 v1, v47

    if-ge v0, v1, :cond_19

    .line 430
    move/from16 v47, v144

    .line 431
    :cond_19
    move/from16 v0, v141

    move/from16 v1, v45

    if-ge v0, v1, :cond_1a

    .line 432
    move/from16 v45, v141

    .line 433
    :cond_1a
    move/from16 v0, v143

    move/from16 v1, v46

    if-le v0, v1, :cond_1b

    .line 434
    move/from16 v46, v143

    .line 435
    :cond_1b
    move/from16 v0, v142

    move/from16 v1, v48

    if-le v0, v1, :cond_1c

    .line 436
    move/from16 v48, v142

    .line 454
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

    .line 462
    :cond_22
    move/from16 v40, v98

    .line 463
    add-int/lit8 v15, v145, 0x1

    .line 465
    move/from16 v0, v47

    move/from16 v1, v18

    if-ge v0, v1, :cond_23

    .line 466
    move/from16 v18, v47

    .line 467
    :cond_23
    move/from16 v0, v45

    move/from16 v1, v16

    if-ge v0, v1, :cond_24

    .line 468
    move/from16 v16, v45

    .line 469
    :cond_24
    move/from16 v0, v46

    move/from16 v1, v17

    if-le v0, v1, :cond_25

    .line 470
    move/from16 v17, v46

    .line 471
    :cond_25
    move/from16 v0, v48

    move/from16 v1, v19

    if-le v0, v1, :cond_26

    .line 472
    move/from16 v19, v48

    .line 398
    :cond_26
    :goto_14
    add-int/lit8 v145, v145, 0x1

    goto/16 :goto_12

    .line 328
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

    .line 332
    :cond_28
    move-object/from16 v152, p1

    .restart local v152       #sub:Ljava/lang/CharSequence;
    goto/16 :goto_e

    .line 355
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

    .line 366
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/text/TextPaint;->baselineShift:I

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    move-object/from16 v5, p4

    invoke-static/range {v5 .. v11}, Landroid/text/Styled;->getTextWidths(Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/text/Spanned;II[FLandroid/graphics/Paint$FontMetricsInt;)I

    .line 371
    const/4 v5, 0x0

    sub-int v6, v137, v28

    sub-int v12, v8, v28

    add-int/2addr v6, v12

    sub-int v12, v9, v8

    invoke-static {v10, v5, v10, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v5, v0

    iget v5, v5, Landroid/text/TextPaint;->baselineShift:I

    if-gez v5, :cond_2b

    .line 375
    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 376
    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto/16 :goto_11

    .line 378
    :cond_2b
    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 379
    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto/16 :goto_11

    .line 404
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

    .line 405
    const/4 v5, 0x0

    move-object/from16 v0, v152

    move/from16 v1, v28

    move/from16 v2, v137

    move/from16 v3, v98

    move-object v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Layout;->nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F

    move-result v98

    .line 406
    const/16 v26, 0x1

    goto/16 :goto_13

    .line 407
    :cond_2d
    invoke-static/range {v135 .. v135}, Lmiui/text/util/EmojiSmileys;->isEmoji(I)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 410
    if-nez v7, :cond_2e

    .line 411
    move-object/from16 v153, p4

    .line 416
    .local v153, whichPaint:Landroid/graphics/Paint;
    :goto_15
    invoke-virtual/range {v153 .. v153}, Landroid/graphics/Paint;->descent()F

    move-result v5

    invoke-virtual/range {v153 .. v153}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    sget v6, Landroid/text/StaticLayout;->EMOJI_PADDING_PX:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float v154, v5, v6

    .line 417
    .local v154, wid:F
    add-float v98, v98, v154

    .line 418
    const/16 v26, 0x1

    .line 419
    goto/16 :goto_13

    .line 413
    .end local v153           #whichPaint:Landroid/graphics/Paint;
    .end local v154           #wid:F
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v153, v0

    .restart local v153       #whichPaint:Landroid/graphics/Paint;
    goto :goto_15

    .line 420
    .end local v153           #whichPaint:Landroid/graphics/Paint;
    :cond_2f
    sub-int v5, v145, v28

    sub-int v6, v137, v28

    add-int/2addr v5, v6

    aget v5, v10, v5

    add-float v98, v98, v5

    goto/16 :goto_13

    .line 474
    :cond_30
    if-eqz p12, :cond_37

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p14

    move-object v1, v5

    if-eq v0, v1, :cond_37

    if-nez p6, :cond_37

    .line 476
    if-eq v15, v14, :cond_33

    .line 479
    :goto_16
    if-ge v15, v9, :cond_31

    sub-int v5, v15, v28

    aget-char v5, v136, v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_31

    .line 480
    add-int/lit8 v15, v15, 0x1

    goto :goto_16

    .line 483
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

    .line 495
    move v14, v15

    goto/16 :goto_14

    .line 483
    :cond_32
    const/4 v5, 0x0

    move/from16 v32, v5

    goto :goto_17

    .line 499
    :cond_33
    move/from16 v69, v98

    .line 500
    add-int/lit8 v44, v145, 0x1

    .line 502
    move/from16 v0, v144

    move/from16 v1, v47

    if-ge v0, v1, :cond_34

    .line 503
    move/from16 v47, v144

    .line 504
    :cond_34
    move/from16 v0, v141

    move/from16 v1, v45

    if-ge v0, v1, :cond_35

    .line 505
    move/from16 v45, v141

    .line 506
    :cond_35
    move/from16 v0, v143

    move/from16 v1, v46

    if-le v0, v1, :cond_36

    .line 507
    move/from16 v46, v143

    .line 508
    :cond_36
    move/from16 v0, v142

    move/from16 v1, v48

    if-le v0, v1, :cond_26

    .line 509
    move/from16 v48, v142

    goto/16 :goto_14

    .line 512
    :cond_37
    if-eq v15, v14, :cond_3a

    .line 515
    :goto_18
    if-ge v15, v9, :cond_38

    sub-int v5, v15, v28

    aget-char v5, v136, v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_38

    .line 516
    add-int/lit8 v15, v15, 0x1

    goto :goto_18

    .line 519
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

    .line 531
    move v14, v15

    .line 571
    .end local v98           #w:F
    :goto_1a
    if-ge v14, v8, :cond_3e

    .line 572
    move v9, v14

    move/from16 v145, v14

    .line 577
    :goto_1b
    move/from16 v44, v14

    move v15, v14

    .line 578
    const/16 v98, 0x0

    .line 579
    .restart local v98       #w:F
    const/16 v48, 0x0

    move/from16 v47, v48

    move/from16 v46, v48

    move/from16 v45, v48

    .line 580
    const/16 v19, 0x0

    move/from16 v18, v19

    move/from16 v17, v19

    move/from16 v16, v19

    .line 582
    add-int/lit8 v139, v139, -0x1

    if-gtz v139, :cond_26

    .line 583
    move/from16 v155, v149

    goto/16 :goto_14

    .line 519
    :cond_39
    const/4 v5, 0x0

    move/from16 v32, v5

    goto :goto_19

    .line 532
    :cond_3a
    move/from16 v0, v44

    move v1, v14

    if-eq v0, v1, :cond_3c

    .line 534
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

    .line 547
    move/from16 v14, v44

    goto :goto_1a

    .line 534
    :cond_3b
    const/4 v5, 0x0

    move/from16 v61, v5

    goto :goto_1c

    .line 550
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v33, v0

    add-int/lit8 v36, v14, 0x1

    const/16 v39, 0x0

    move-object/from16 v32, p4

    move-object/from16 v34, p1

    move/from16 v35, v14

    move-object/from16 v37, v11

    move/from16 v38, v26

    invoke-static/range {v32 .. v39}, Landroid/text/StaticLayout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    .line 554
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

    .line 568
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1a

    .line 554
    .restart local v98       #w:F
    :cond_3d
    const/4 v5, 0x0

    move/from16 v90, v5

    goto :goto_1d

    .line 574
    .end local v98           #w:F
    :cond_3e
    const/4 v5, 0x1

    sub-int v145, v14, v5

    goto/16 :goto_1b

    .line 351
    .end local v133           #before:F
    .end local v135           #c:C
    .restart local v98       #w:F
    :cond_3f
    move v8, v9

    goto/16 :goto_f

    .line 589
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

    .line 590
    or-int v5, v47, v48

    or-int v5, v5, v46

    or-int v5, v5, v45

    if-nez v5, :cond_41

    .line 591
    move-object/from16 v0, p4

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 593
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v47, v0

    .line 594
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v48, v0

    .line 595
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v45, v0

    .line 596
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v46, v0

    .line 601
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

    .line 613
    :cond_42
    move/from16 v28, v137

    .line 615
    move/from16 v0, v137

    move/from16 v1, p3

    if-ne v0, v1, :cond_47

    .line 619
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

    .line 622
    :cond_44
    move-object/from16 v0, p4

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 624
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

    .line 635
    :cond_45
    return-void

    .line 601
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

    .line 197
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
    .line 151
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

    .line 158
    return-void
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 1291
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1296
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1297
    const/4 v0, 0x0

    .line 1300
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
    .line 1305
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1306
    const/4 v0, 0x0

    .line 1309
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
    .line 1314
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 2
    .parameter "line"

    .prologue
    .line 1279
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
    .line 1259
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1267
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
    .line 1283
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 6
    .parameter "vertical"

    .prologue
    .line 1239
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 1240
    .local v1, high:I
    const/4 v3, -0x1

    .line 1242
    .local v3, low:I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 1243
    .local v2, lines:[I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 1244
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 1245
    .local v0, guess:I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    .line 1246
    move v1, v0

    goto :goto_0

    .line 1248
    :cond_0
    move v3, v0

    goto :goto_0

    .line 1251
    .end local v0           #guess:I
    :cond_1
    if-gez v3, :cond_2

    .line 1252
    const/4 v4, 0x0

    .line 1254
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
    .line 1271
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
    .line 1263
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
    .line 1275
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
    .line 1287
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method
