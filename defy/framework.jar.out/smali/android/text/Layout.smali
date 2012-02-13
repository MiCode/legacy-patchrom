.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$Directions;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions; = null

.field static final DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions; = null

.field public static final DIR_LEFT_TO_RIGHT:I = 0x1

.field static final DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final DIR_REQUEST_LTR:I = 0x1

.field static final DIR_REQUEST_RTL:I = -0x1

.field public static final DIR_RIGHT_TO_LEFT:I = -0x1

.field protected static EMOJI_PADDING_PX:I = 0x0

.field private static final NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle; = null

.field private static final TAB_INCREMENT:I = 0x14

.field private static sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mEmojiDestRect:Landroid/graphics/RectF;

.field private mPaint:Landroid/text/TextPaint;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannedText:Z

.field private mText:Ljava/lang/CharSequence;

.field private mWidth:I

.field mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    sput v1, Landroid/text/Layout;->EMOJI_PADDING_PX:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v1, [S

    const/4 v2, 0x0

    const/16 v3, 0x7fff

    aput-short v3, v1, v2

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([S)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    new-instance v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    new-array v1, v1, [S

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([S)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-void

    :array_0
    .array-data 0x2
        0x0t 0x0t
        0xfft 0x7ft
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 3
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingMult"
    .parameter "spacingAdd"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    if-gez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iput p3, p0, Landroid/text/Layout;->mWidth:I

    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return-void
.end method

.method static synthetic access$100(Landroid/text/Layout;III[CI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/text/Layout;->ellipsize(III[CI)V

    return-void
.end method

.method private addSelection(IIIIILandroid/graphics/Path;)V
    .locals 19
    .parameter "line"
    .parameter "start"
    .parameter "end"
    .parameter "top"
    .parameter "bottom"
    .parameter "dest"

    .prologue
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v16

    .local v16, linestart:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    .local v15, lineend:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v11

    .local v11, dirs:Landroid/text/Layout$Directions;
    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v5, v0

    const/4 v6, 0x1

    sub-int v6, v15, v6

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_0

    add-int/lit8 v15, v15, -0x1

    :cond_0
    move/from16 v13, v16

    .local v13, here:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static {v11}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v5

    array-length v5, v5

    if-ge v14, v5, :cond_3

    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static {v11}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v5

    aget-short v5, v5, v14

    add-int v18, v13, v5

    .local v18, there:I
    move/from16 v0, v18

    move v1, v15

    if-le v0, v1, :cond_1

    move/from16 v18, v15

    :cond_1
    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_2

    move/from16 v0, p3

    move v1, v13

    if-lt v0, v1, :cond_2

    move/from16 v0, p2

    move v1, v13

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .local v17, st:I
    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .local v12, en:I
    move/from16 v0, v17

    move v1, v12

    if-eq v0, v1, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v5

    move v3, v6

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/Layout;->getHorizontal(IZZI)F

    move-result v6

    .local v6, h1:F
    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v12

    move v2, v5

    move v3, v7

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/Layout;->getHorizontal(IZZI)F

    move-result v8

    .local v8, h2:F
    move/from16 v0, p4

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move v9, v0

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v5, p6

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .end local v6           #h1:F
    .end local v8           #h2:F
    .end local v12           #en:I
    .end local v17           #st:I
    :cond_2
    move/from16 v13, v18

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .end local v18           #there:I
    :cond_3
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;FIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z[Ljava/lang/Object;)V
    .locals 27
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "dir"
    .parameter "directions"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "hasTabs"
    .parameter "parspans"

    .prologue
    if-nez p13, :cond_6

    sget-object v5, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, p6

    move-object v1, v5

    if-ne v0, v1, :cond_1

    const/4 v10, 0x0

    const/16 v17, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    invoke-static/range {v5 .. v17}, Landroid/text/Styled;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v19, 0x0

    .local v19, buf:[C
    :goto_1
    const/16 v21, 0x0

    .local v21, h:F
    const/16 v22, 0x0

    .local v22, here:I
    const/16 v23, 0x0

    .local v23, i:I
    :goto_2
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static/range {p6 .. p6}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v5

    array-length v5, v5

    move/from16 v0, v23

    move v1, v5

    if-ge v0, v1, :cond_f

    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static/range {p6 .. p6}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v5

    aget-short v5, v5, v23

    add-int v26, v22, v5

    .local v26, there:I
    sub-int v5, p4, p3

    move/from16 v0, v26

    move v1, v5

    if-le v0, v1, :cond_2

    sub-int v26, p4, p3

    :cond_2
    move/from16 v25, v22

    .local v25, segstart:I
    if-eqz p13, :cond_7

    move/from16 v24, v22

    .local v24, j:I
    :goto_3
    move/from16 v0, v24

    move/from16 v1, v26

    if-gt v0, v1, :cond_e

    move/from16 v0, v24

    move/from16 v1, v26

    if-eq v0, v1, :cond_3

    aget-char v5, v19, v24

    const/16 v6, 0x9

    if-ne v5, v6, :cond_a

    :cond_3
    add-int v7, p3, v25

    add-int v8, p3, v24

    and-int/lit8 v5, v23, 0x1

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    move v10, v5

    :goto_4
    add-float v11, p7, v21

    add-int v5, p3, v24

    move v0, v5

    move/from16 v1, p4

    if-eq v0, v1, :cond_9

    const/4 v5, 0x1

    move/from16 v17, v5

    :goto_5
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v9, p5

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    invoke-static/range {v5 .. v17}, Landroid/text/Styled;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result v5

    add-float v21, v21, v5

    move/from16 v0, v24

    move/from16 v1, v26

    if-eq v0, v1, :cond_4

    aget-char v5, v19, v24

    const/16 v6, 0x9

    if-ne v5, v6, :cond_4

    move/from16 v0, p5

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move v6, v0

    mul-float v6, v6, v21

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move v3, v6

    move-object/from16 v4, p14

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Layout;->nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F

    move-result v6

    mul-float v21, v5, v6

    :cond_4
    add-int/lit8 v25, v24, 0x1

    :cond_5
    :goto_6
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .end local v19           #buf:[C
    .end local v21           #h:F
    .end local v22           #here:I
    .end local v23           #i:I
    .end local v24           #j:I
    .end local v25           #segstart:I
    .end local v26           #there:I
    :cond_6
    sub-int v5, p4, p3

    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v19

    .restart local v19       #buf:[C
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, v19

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    goto/16 :goto_1

    .restart local v21       #h:F
    .restart local v22       #here:I
    .restart local v23       #i:I
    .restart local v25       #segstart:I
    .restart local v26       #there:I
    :cond_7
    move/from16 v24, v26

    goto :goto_3

    .restart local v24       #j:I
    :cond_8
    const/4 v5, 0x0

    move v10, v5

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    move/from16 v17, v5

    goto :goto_5

    :cond_a
    if-eqz p13, :cond_5

    aget-char v5, v19, v24

    invoke-static {v5}, Lmiui/text/util/EmojiSmileys;->getEmojiBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v18

    .local v18, bm:Landroid/graphics/Bitmap;
    if-eqz v18, :cond_5

    add-int v7, p3, v25

    add-int v8, p3, v24

    and-int/lit8 v5, v23, 0x1

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    move v10, v5

    :goto_7
    add-float v11, p7, v21

    add-int v5, p3, v24

    move v0, v5

    move/from16 v1, p4

    if-eq v0, v1, :cond_d

    const/4 v5, 0x1

    move/from16 v17, v5

    :goto_8
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v9, p5

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    invoke-static/range {v5 .. v17}, Landroid/text/Styled;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result v5

    add-float v21, v21, v5

    move-object/from16 v0, p12

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    add-int v8, p3, v24

    add-int v5, p3, v24

    add-int/lit8 v9, v5, 0x1

    const/4 v10, 0x0

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    move-object/from16 v7, p2

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mEmojiDestRect:Landroid/graphics/RectF;

    move-object v5, v0

    if-nez v5, :cond_b

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/Layout;->mEmojiDestRect:Landroid/graphics/RectF;

    :cond_b
    invoke-virtual/range {p12 .. p12}, Landroid/text/TextPaint;->descent()F

    move-result v5

    invoke-virtual/range {p12 .. p12}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float v20, v5, v6

    .local v20, emojiSize:F
    sget v5, Landroid/text/Layout;->EMOJI_PADDING_PX:I

    int-to-float v5, v5

    add-float v21, v21, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mEmojiDestRect:Landroid/graphics/RectF;

    move-object v5, v0

    add-float v6, p7, v21

    move/from16 v0, p9

    int-to-float v0, v0

    move v7, v0

    invoke-virtual/range {p12 .. p12}, Landroid/text/TextPaint;->ascent()F

    move-result v8

    add-float/2addr v7, v8

    add-float v8, p7, v21

    add-float v8, v8, v20

    move/from16 v0, p9

    int-to-float v0, v0

    move v9, v0

    invoke-virtual/range {p12 .. p12}, Landroid/text/TextPaint;->descent()F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mEmojiDestRect:Landroid/graphics/RectF;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v4, p11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    sget v5, Landroid/text/Layout;->EMOJI_PADDING_PX:I

    int-to-float v5, v5

    add-float v5, v5, v20

    add-float v21, v21, v5

    add-int/lit8 v25, v24, 0x1

    goto/16 :goto_6

    .end local v20           #emojiSize:F
    :cond_c
    const/4 v5, 0x0

    move v10, v5

    goto/16 :goto_7

    :cond_d
    const/4 v5, 0x0

    move/from16 v17, v5

    goto/16 :goto_8

    .end local v18           #bm:Landroid/graphics/Bitmap;
    :cond_e
    move/from16 v22, v26

    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .end local v24           #j:I
    .end local v25           #segstart:I
    .end local v26           #there:I
    :cond_f
    if-eqz p13, :cond_0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->recycle([C)V

    goto/16 :goto_0
.end method

.method private ellipsize(III[CI)V
    .locals 7
    .parameter "start"
    .parameter "end"
    .parameter "line"
    .parameter "dest"
    .parameter "destoff"

    .prologue
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    .local v2, ellipsisCount:I
    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    .local v3, ellipsisStart:I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .local v5, linestart:I
    move v4, v3

    .local v4, i:I
    :goto_0
    add-int v6, v3, v2

    if-ge v4, v6, :cond_0

    if-ne v4, v3, :cond_3

    const/16 v1, 0x2026

    .local v1, c:C
    :goto_1
    add-int v0, v4, v5

    .local v0, a:I
    if-lt v0, p1, :cond_2

    if-ge v0, p2, :cond_2

    add-int v6, p5, v0

    sub-int/2addr v6, p1

    aput-char v1, p4, v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0           #a:I
    .end local v1           #c:C
    :cond_3
    const v1, 0xfeff

    .restart local v1       #c:C
    goto :goto_1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .locals 10
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "paint"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .local v8, need:F
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    .local v1, workPaint:Landroid/text/TextPaint;
    move v3, p1

    .local v3, i:I
    :goto_0
    if-gt v3, p2, :cond_2

    const/16 v0, 0xa

    invoke-static {p0, v0, v3, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    .local v4, next:I
    if-gez v4, :cond_0

    move v4, p2

    :cond_0
    const/4 v6, 0x1

    move-object v0, p3

    move-object v2, p0

    move-object v7, v5

    invoke-static/range {v0 .. v7}, Landroid/text/Layout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    move-result v9

    .local v9, w:F
    cmpl-float v0, v9, v8

    if-lez v0, :cond_1

    move v8, v9

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v3, v4

    goto :goto_0

    .end local v4           #next:I
    .end local v9           #w:F
    :cond_2
    return v8
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 2
    .parameter "source"
    .parameter "paint"

    .prologue
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method private getHorizontal(IZZ)F
    .locals 2
    .parameter "offset"
    .parameter "trailing"
    .parameter "alt"

    .prologue
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .local v0, line:I
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/Layout;->getHorizontal(IZZI)F

    move-result v1

    return v1
.end method

.method private getHorizontal(IZZI)F
    .locals 28
    .parameter "offset"
    .parameter "trailing"
    .parameter "alt"
    .parameter "line"

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .local v5, start:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v7

    .local v7, end:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v8

    .local v8, dir:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v12

    .local v12, tab:Z
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v9

    .local v9, directions:Landroid/text/Layout$Directions;
    const/4 v13, 0x0

    .local v13, tabs:[Landroid/text/style/TabStopSpan;
    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v2, v0

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v2, v0

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-interface {v2, v5, v7, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    .end local v13           #tabs:[Landroid/text/style/TabStopSpan;
    check-cast v13, [Landroid/text/style/TabStopSpan;

    .restart local v13       #tabs:[Landroid/text/style/TabStopSpan;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v4, v0

    move/from16 v6, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-static/range {v2 .. v13}, Landroid/text/Layout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IIIILandroid/text/Layout$Directions;ZZZ[Ljava/lang/Object;)F

    move-result v27

    .local v27, wid:F
    move/from16 v0, p1

    move v1, v7

    if-le v0, v1, :cond_1

    const/4 v2, -0x1

    if-ne v8, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    const/16 v19, 0x0

    move/from16 v17, v7

    move/from16 v18, p1

    move/from16 v20, v12

    move-object/from16 v21, v13

    invoke-static/range {v14 .. v21}, Landroid/text/Layout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    move-result v2

    sub-float v27, v27, v2

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v22

    .local v22, align:Landroid/text/Layout$Alignment;
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v24

    .local v24, left:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v26

    .local v26, right:I
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v22

    move-object v1, v2

    if-ne v0, v1, :cond_4

    const/4 v2, -0x1

    if-ne v8, v2, :cond_3

    move/from16 v0, v26

    int-to-float v0, v0

    move v2, v0

    add-float v2, v2, v27

    :goto_1
    return v2

    .end local v22           #align:Landroid/text/Layout$Alignment;
    .end local v24           #left:I
    .end local v26           #right:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    const/16 v19, 0x0

    move/from16 v17, v7

    move/from16 v18, p1

    move/from16 v20, v12

    move-object/from16 v21, v13

    invoke-static/range {v14 .. v21}, Landroid/text/Layout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    move-result v2

    add-float v27, v27, v2

    goto :goto_0

    .restart local v22       #align:Landroid/text/Layout$Alignment;
    .restart local v24       #left:I
    .restart local v26       #right:I
    :cond_3
    move/from16 v0, v24

    int-to-float v0, v0

    move v2, v0

    add-float v2, v2, v27

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v25

    .local v25, max:F
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v22

    move-object v1, v2

    if-ne v0, v1, :cond_6

    const/4 v2, -0x1

    if-ne v8, v2, :cond_5

    move/from16 v0, v24

    int-to-float v0, v0

    move v2, v0

    add-float v2, v2, v25

    add-float v2, v2, v27

    goto :goto_1

    :cond_5
    move/from16 v0, v26

    int-to-float v0, v0

    move v2, v0

    sub-float v2, v2, v25

    add-float v2, v2, v27

    goto :goto_1

    :cond_6
    move/from16 v0, v25

    float-to-int v0, v0

    move v2, v0

    and-int/lit8 v23, v2, -0x2

    .local v23, imax:I
    const/4 v2, -0x1

    if-ne v8, v2, :cond_7

    sub-int v2, v26, v24

    sub-int v2, v2, v23

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v26, v2

    int-to-float v2, v2

    add-float v2, v2, v27

    goto :goto_1

    :cond_7
    sub-int v2, v26, v24

    sub-int v2, v2, v23

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v24

    int-to-float v2, v2

    add-float v2, v2, v27

    goto :goto_1
.end method

.method private getLineMax(I[Ljava/lang/Object;Z)F
    .locals 8
    .parameter "line"
    .parameter "tabs"
    .parameter "full"

    .prologue
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .local v3, start:I
    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .local v4, end:I
    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v6

    .local v6, tab:Z
    if-nez p2, :cond_0

    if-eqz v6, :cond_0

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    const-class v1, Landroid/text/style/TabStopSpan;

    invoke-interface {v0, v3, v4, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Landroid/text/Layout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    move-result v0

    return v0

    .end local v4           #end:I
    .end local v6           #tab:Z
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v4

    .restart local v4       #end:I
    goto :goto_0
.end method

.method private getLineVisibleEnd(III)I
    .locals 4
    .parameter "line"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x1

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .local v1, text:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ne p1, v2, :cond_1

    move v2, p3

    :goto_0
    return v2

    .local v0, ch:C
    :cond_0
    add-int/lit8 p3, p3, -0x1

    .end local v0           #ch:C
    :cond_1
    if-le p3, p2, :cond_3

    sub-int v2, p3, v3

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .restart local v0       #ch:C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    sub-int v2, p3, v3

    goto :goto_0

    :cond_2
    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    .end local v0           #ch:C
    :cond_3
    move v2, p3

    goto :goto_0
.end method

.method private getOffsetAtStartOf(I)I
    .locals 10
    .parameter "offset"

    .prologue
    if-nez p1, :cond_0

    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_0
    iget-object v7, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .local v7, text:Ljava/lang/CharSequence;
    invoke-interface {v7, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .local v1, c:C
    const v8, 0xdc00

    if-lt v1, v8, :cond_1

    const v8, 0xdfff

    if-gt v1, v8, :cond_1

    const/4 v8, 0x1

    sub-int v8, p1, v8

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .local v2, c1:C
    const v8, 0xd800

    if-lt v2, v8, :cond_1

    const v8, 0xdbff

    if-gt v2, v8, :cond_1

    add-int/lit8 p1, p1, -0x1

    .end local v2           #c1:C
    :cond_1
    iget-boolean v8, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v8, :cond_3

    move-object v0, v7

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    const-class v9, Landroid/text/style/ReplacementSpan;

    invoke-interface {v8, p1, p1, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ReplacementSpan;

    .local v5, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v8, v5

    if-ge v4, v8, :cond_3

    move-object v0, v7

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    aget-object v9, v5, v4

    invoke-interface {v8, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .local v6, start:I
    move-object v0, v7

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    aget-object v9, v5, v4

    invoke-interface {v8, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .local v3, end:I
    if-ge v6, p1, :cond_2

    if-le v3, p1, :cond_2

    move p1, v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v3           #end:I
    .end local v4           #i:I
    .end local v5           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v6           #start:I
    :cond_3
    move v8, p1

    goto :goto_0
.end method

.method private static measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IIIILandroid/text/Layout$Directions;ZZZ[Ljava/lang/Object;)F
    .locals 19
    .parameter "paint"
    .parameter "workPaint"
    .parameter "text"
    .parameter "start"
    .parameter "offset"
    .parameter "end"
    .parameter "dir"
    .parameter "directions"
    .parameter "trailing"
    .parameter "alt"
    .parameter "hasTabs"
    .parameter "tabs"

    .prologue
    const/4 v5, 0x0

    .local v5, buf:[C
    if-eqz p10, :cond_0

    sub-int v5, p5, p3

    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    .end local v5           #buf:[C
    move-result-object v5

    .restart local v5       #buf:[C
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p5

    move-object v3, v5

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    :cond_0
    move-object v11, v5

    .end local v5           #buf:[C
    .local v11, buf:[C
    const/4 v5, 0x0

    .local v5, h:F
    if-eqz p9, :cond_1

    const/4 v6, -0x1

    move/from16 v0, p6

    move v1, v6

    if-ne v0, v1, :cond_1

    if-nez p8, :cond_5

    const/16 p8, 0x1

    :cond_1
    :goto_0
    const/4 v6, 0x0

    .local v6, here:I
    const/4 v7, 0x0

    .local v7, i:I
    move v13, v7

    .end local v7           #i:I
    .local v13, i:I
    :goto_1
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static/range {p7 .. p7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v7

    array-length v7, v7

    if-ge v13, v7, :cond_12

    if-eqz p9, :cond_2

    if-nez p8, :cond_6

    const/16 p8, 0x1

    :cond_2
    :goto_2
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static/range {p7 .. p7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v7

    aget-short v7, v7, v13

    add-int/2addr v7, v6

    .local v7, there:I
    sub-int v8, p5, p3

    if-le v7, v8, :cond_18

    sub-int v7, p5, p3

    move/from16 v18, v7

    .end local v7           #there:I
    .local v18, there:I
    :goto_3
    move v7, v6

    .local v7, segstart:I
    if-eqz p10, :cond_7

    .local v6, j:I
    :goto_4
    move v15, v6

    .end local v6           #j:I
    .local v15, j:I
    move/from16 v16, v7

    .end local v7           #segstart:I
    .local v16, segstart:I
    move v12, v5

    .end local v5           #h:F
    .local v12, h:F
    :goto_5
    move v0, v15

    move/from16 v1, v18

    if-gt v0, v1, :cond_11

    const/4 v5, 0x0

    .local v5, isEmoji:Z
    if-eqz p10, :cond_17

    move v0, v15

    move/from16 v1, v18

    if-ge v0, v1, :cond_17

    aget-char v5, v11, v15

    .end local v5           #isEmoji:Z
    invoke-static {v5}, Lmiui/text/util/EmojiSmileys;->isEmoji(I)Z

    move-result v5

    .restart local v5       #isEmoji:Z
    move v14, v5

    .end local v5           #isEmoji:Z
    .local v14, isEmoji:Z
    :goto_6
    move v0, v15

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    aget-char v5, v11, v15

    const/16 v6, 0x9

    if-eq v5, v6, :cond_3

    if-eqz v14, :cond_16

    :cond_3
    add-int v5, p3, v15

    move/from16 v0, p4

    move v1, v5

    if-lt v0, v1, :cond_4

    if-eqz p8, :cond_9

    add-int v5, p3, v15

    move/from16 v0, p4

    move v1, v5

    if-gt v0, v1, :cond_9

    :cond_4
    const/4 v5, 0x1

    move/from16 v0, p6

    move v1, v5

    if-ne v0, v1, :cond_8

    and-int/lit8 v5, v13, 0x1

    if-nez v5, :cond_8

    add-int v8, p3, v16

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p4

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result p0

    .end local p0
    add-float p0, p0, v12

    .end local v12           #h:F
    .local p0, h:F
    move/from16 p1, p0

    .end local v14           #isEmoji:Z
    .end local v15           #j:I
    .end local v16           #segstart:I
    .end local v18           #there:I
    .end local p0           #h:F
    .local p1, h:F
    :goto_7
    return p1

    .end local v13           #i:I
    .local v5, h:F
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_5
    const/16 p8, 0x0

    goto :goto_0

    .local v6, here:I
    .restart local v13       #i:I
    :cond_6
    const/16 p8, 0x0

    goto :goto_2

    .restart local v7       #segstart:I
    .restart local v18       #there:I
    :cond_7
    move/from16 v6, v18

    goto :goto_4

    .end local v5           #h:F
    .end local v6           #here:I
    .end local v7           #segstart:I
    .restart local v12       #h:F
    .restart local v14       #isEmoji:Z
    .restart local v15       #j:I
    .restart local v16       #segstart:I
    :cond_8
    const/4 v5, -0x1

    move/from16 v0, p6

    move v1, v5

    if-ne v0, v1, :cond_9

    and-int/lit8 v5, v13, 0x1

    if-eqz v5, :cond_9

    add-int v8, p3, v16

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p4

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result p0

    .end local p0           #paint:Landroid/text/TextPaint;
    sub-float p0, v12, p0

    .end local v12           #h:F
    .local p0, h:F
    move/from16 p1, p0

    .end local p0           #h:F
    .local p1, h:F
    goto :goto_7

    .restart local v12       #h:F
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_9
    add-int v8, p3, v16

    add-int v9, p3, v15

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v17

    .local v17, segw:F
    add-int v5, p3, v15

    move/from16 v0, p4

    move v1, v5

    if-lt v0, v1, :cond_a

    if-eqz p8, :cond_c

    add-int v5, p3, v15

    move/from16 v0, p4

    move v1, v5

    if-gt v0, v1, :cond_c

    :cond_a
    const/4 v5, 0x1

    move/from16 v0, p6

    move v1, v5

    if-ne v0, v1, :cond_b

    add-int v8, p3, v16

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p4

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result p0

    .end local p0           #paint:Landroid/text/TextPaint;
    sub-float p0, v17, p0

    add-float p0, p0, v12

    .end local v12           #h:F
    .local p0, h:F
    move/from16 p1, p0

    .end local p0           #h:F
    .local p1, h:F
    goto :goto_7

    .restart local v12       #h:F
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_b
    const/4 v5, -0x1

    move/from16 v0, p6

    move v1, v5

    if-ne v0, v1, :cond_c

    add-int v8, p3, v16

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p4

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result p0

    .end local p0           #paint:Landroid/text/TextPaint;
    sub-float p0, v17, p0

    sub-float p0, v12, p0

    .end local v12           #h:F
    .local p0, h:F
    move/from16 p1, p0

    .end local p0           #h:F
    .local p1, h:F
    goto :goto_7

    .restart local v12       #h:F
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_c
    const/4 v5, -0x1

    move/from16 v0, p6

    move v1, v5

    if-ne v0, v1, :cond_d

    sub-float v5, v12, v17

    .end local v12           #h:F
    .restart local v5       #h:F
    :goto_8
    move v0, v15

    move/from16 v1, v18

    if-eq v0, v1, :cond_15

    aget-char v6, v11, v15

    const/16 v7, 0x9

    if-ne v6, v7, :cond_15

    add-int v6, p3, v15

    move/from16 v0, p4

    move v1, v6

    if-ne v0, v1, :cond_e

    move/from16 p0, v5

    .end local v5           #h:F
    .local p0, h:F
    move/from16 p1, v5

    .end local p0           #h:F
    .local p1, h:F
    goto/16 :goto_7

    .restart local v12       #h:F
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_d
    add-float v5, v12, v17

    .end local v12           #h:F
    .restart local v5       #h:F
    goto :goto_8

    :cond_e
    move/from16 v0, p6

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, p6

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v5, v7

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p5

    move v3, v5

    move-object/from16 v4, p11

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Layout;->nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F

    .end local v5           #h:F
    move-result v5

    mul-float/2addr v5, v6

    .restart local v5       #h:F
    move v12, v5

    .end local v5           #h:F
    .restart local v12       #h:F
    :goto_9
    if-eqz v14, :cond_14

    add-int v5, p3, v15

    move/from16 v0, p4

    move v1, v5

    if-ne v0, v1, :cond_f

    move/from16 p0, v12

    .end local v12           #h:F
    .local p0, h:F
    move/from16 p1, v12

    .end local p0           #h:F
    .local p1, h:F
    goto/16 :goto_7

    .restart local v12       #h:F
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_f
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    add-int/lit8 v9, v15, 0x1

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move v8, v15

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->descent()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    sget v6, Landroid/text/Layout;->EMOJI_PADDING_PX:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    .local v5, wid:F
    const/4 v6, -0x1

    move/from16 v0, p6

    move v1, v6

    if-ne v0, v1, :cond_10

    sub-float v5, v12, v5

    .end local v12           #h:F
    .local v5, h:F
    :goto_a
    add-int/lit8 v6, v15, 0x1

    .end local v16           #segstart:I
    .local v6, segstart:I
    move v7, v6

    .end local v6           #segstart:I
    .end local v17           #segw:F
    .restart local v7       #segstart:I
    :goto_b
    add-int/lit8 v6, v15, 0x1

    .end local v15           #j:I
    .local v6, j:I
    move v15, v6

    .end local v6           #j:I
    .restart local v15       #j:I
    move/from16 v16, v7

    .end local v7           #segstart:I
    .restart local v16       #segstart:I
    move v12, v5

    .end local v5           #h:F
    .restart local v12       #h:F
    goto/16 :goto_5

    .local v5, wid:F
    .restart local v17       #segw:F
    :cond_10
    add-float/2addr v5, v12

    .end local v12           #h:F
    .local v5, h:F
    goto :goto_a

    .end local v5           #h:F
    .end local v14           #isEmoji:Z
    .end local v17           #segw:F
    .restart local v12       #h:F
    :cond_11
    move/from16 v5, v18

    .local v5, here:I
    add-int/lit8 v6, v13, 0x1

    .end local v13           #i:I
    .local v6, i:I
    move v13, v6

    .end local v6           #i:I
    .restart local v13       #i:I
    move v6, v5

    .end local v5           #here:I
    .local v6, here:I
    move v5, v12

    .end local v12           #h:F
    .local v5, h:F
    goto/16 :goto_1

    .end local v15           #j:I
    .end local v16           #segstart:I
    .end local v18           #there:I
    :cond_12
    if-eqz p10, :cond_13

    invoke-static {v11}, Landroid/text/TextUtils;->recycle([C)V

    :cond_13
    move/from16 p0, v5

    .end local v5           #h:F
    .local p0, h:F
    move/from16 p1, v5

    .end local p0           #h:F
    .local p1, h:F
    goto/16 :goto_7

    .end local v6           #here:I
    .restart local v12       #h:F
    .restart local v14       #isEmoji:Z
    .restart local v15       #j:I
    .restart local v16       #segstart:I
    .restart local v17       #segw:F
    .restart local v18       #there:I
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_14
    move v5, v12

    .end local v12           #h:F
    .restart local v5       #h:F
    goto :goto_a

    :cond_15
    move v12, v5

    .end local v5           #h:F
    .restart local v12       #h:F
    goto :goto_9

    .end local v17           #segw:F
    :cond_16
    move/from16 v7, v16

    .end local v16           #segstart:I
    .restart local v7       #segstart:I
    move v5, v12

    .end local v12           #h:F
    .restart local v5       #h:F
    goto :goto_b

    .end local v7           #segstart:I
    .end local v14           #isEmoji:Z
    .local v5, isEmoji:Z
    .restart local v12       #h:F
    .restart local v16       #segstart:I
    :cond_17
    move v14, v5

    .end local v5           #isEmoji:Z
    .restart local v14       #isEmoji:Z
    goto/16 :goto_6

    .end local v12           #h:F
    .end local v14           #isEmoji:Z
    .end local v15           #j:I
    .end local v16           #segstart:I
    .end local v18           #there:I
    .local v5, h:F
    .restart local v6       #here:I
    .local v7, there:I
    :cond_18
    move/from16 v18, v7

    .end local v7           #there:I
    .restart local v18       #there:I
    goto/16 :goto_3
.end method

.method static measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F
    .locals 20
    .parameter "paint"
    .parameter "workPaint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "fm"
    .parameter "hasTabs"
    .parameter "tabs"

    .prologue
    const/4 v5, 0x0

    .local v5, buf:[C
    if-eqz p6, :cond_0

    sub-int v5, p4, p3

    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    .end local v5           #buf:[C
    move-result-object v5

    .restart local v5       #buf:[C
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move-object v3, v5

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    :cond_0
    move-object v13, v5

    .end local v5           #buf:[C
    .local v13, buf:[C
    sub-int v16, p4, p3

    .local v16, len:I
    const/4 v8, 0x0

    .local v8, lastPos:I
    const/4 v11, 0x0

    .local v11, width:F
    const/4 v5, 0x0

    .local v5, ascent:I
    const/4 v7, 0x0

    .local v7, descent:I
    const/4 v10, 0x0

    .local v10, top:I
    const/4 v6, 0x0

    .local v6, bottom:I
    if-eqz p5, :cond_1

    const/4 v9, 0x0

    move v0, v9

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    const/4 v9, 0x0

    move v0, v9

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    :cond_1
    if-eqz p6, :cond_4

    const/4 v9, 0x0

    .local v9, pos:I
    :goto_0
    move/from16 v17, v9

    .end local v9           #pos:I
    .local v17, pos:I
    move v12, v6

    .end local v6           #bottom:I
    .local v12, bottom:I
    move/from16 v18, v10

    .end local v10           #top:I
    .local v18, top:I
    move v14, v7

    .end local v7           #descent:I
    .local v14, descent:I
    move/from16 v19, v11

    .end local v11           #width:F
    .local v19, width:F
    move v11, v5

    .end local v5           #ascent:I
    .local v11, ascent:I
    move v6, v8

    .end local v8           #lastPos:I
    .local v6, lastPos:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v16

    if-gt v0, v1, :cond_7

    const/4 v5, 0x0

    .local v5, isEmoji:Z
    if-eqz p6, :cond_11

    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_11

    aget-char v5, v13, v17

    .end local v5           #isEmoji:Z
    invoke-static {v5}, Lmiui/text/util/EmojiSmileys;->isEmoji(I)Z

    move-result v5

    .restart local v5       #isEmoji:Z
    move v15, v5

    .end local v5           #isEmoji:Z
    .local v15, isEmoji:Z
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_2

    aget-char v5, v13, v17

    const/16 v7, 0x9

    if-eq v5, v7, :cond_2

    if-eqz v15, :cond_10

    :cond_2
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p1

    iput v0, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int v8, p3, v6

    add-int v9, p3, v17

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p5

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    .end local v6           #lastPos:I
    move-result v5

    add-float v19, v19, v5

    if-eqz p5, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move v5, v0

    if-gez v5, :cond_5

    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    :cond_3
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_f

    if-nez v15, :cond_6

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, v19

    move-object/from16 v4, p7

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Layout;->nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F

    move-result v5

    .end local v19           #width:F
    .local v5, width:F
    move v10, v5

    .end local v5           #width:F
    .local v10, width:F
    :goto_4
    if-eqz p5, :cond_e

    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v5, v0

    if-ge v5, v11, :cond_d

    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v5, v0

    .end local v11           #ascent:I
    .local v5, ascent:I
    :goto_5
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v6, v0

    if-le v6, v14, :cond_c

    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v6, v0

    .end local v14           #descent:I
    .local v6, descent:I
    move v7, v6

    .end local v6           #descent:I
    .restart local v7       #descent:I
    :goto_6
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v6, v0

    move v0, v6

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v6, v0

    .end local v18           #top:I
    .local v6, top:I
    move v8, v6

    .end local v6           #top:I
    .local v8, top:I
    :goto_7
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v6, v0

    if-le v6, v12, :cond_a

    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v6, v0

    .end local v12           #bottom:I
    .local v6, bottom:I
    move v9, v8

    .end local v8           #top:I
    .local v9, top:I
    :goto_8
    add-int/lit8 v8, v17, 0x1

    .local v8, lastPos:I
    move v11, v10

    .end local v10           #width:F
    .local v11, width:F
    move v10, v9

    .end local v9           #top:I
    .local v10, top:I
    :goto_9
    add-int/lit8 v9, v17, 0x1

    .end local v17           #pos:I
    .local v9, pos:I
    move/from16 v17, v9

    .end local v9           #pos:I
    .restart local v17       #pos:I
    move v12, v6

    .end local v6           #bottom:I
    .restart local v12       #bottom:I
    move/from16 v18, v10

    .end local v10           #top:I
    .restart local v18       #top:I
    move v14, v7

    .end local v7           #descent:I
    .restart local v14       #descent:I
    move/from16 v19, v11

    .end local v11           #width:F
    .restart local v19       #width:F
    move v11, v5

    .end local v5           #ascent:I
    .local v11, ascent:I
    move v6, v8

    .end local v8           #lastPos:I
    .local v6, lastPos:I
    goto/16 :goto_1

    .end local v12           #bottom:I
    .end local v14           #descent:I
    .end local v15           #isEmoji:Z
    .end local v17           #pos:I
    .end local v18           #top:I
    .end local v19           #width:F
    .restart local v5       #ascent:I
    .local v6, bottom:I
    .restart local v7       #descent:I
    .restart local v8       #lastPos:I
    .restart local v10       #top:I
    .local v11, width:F
    :cond_4
    move/from16 v9, v16

    goto/16 :goto_0

    .end local v5           #ascent:I
    .end local v6           #bottom:I
    .end local v7           #descent:I
    .end local v8           #lastPos:I
    .end local v10           #top:I
    .local v11, ascent:I
    .restart local v12       #bottom:I
    .restart local v14       #descent:I
    .restart local v15       #isEmoji:Z
    .restart local v17       #pos:I
    .restart local v18       #top:I
    .restart local v19       #width:F
    :cond_5
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    add-int v8, p3, v17

    add-int v5, p3, v17

    add-int/lit8 v9, v5, 0x1

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->descent()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    sget v6, Landroid/text/Layout;->EMOJI_PADDING_PX:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    .local v5, wid:F
    add-float v5, v5, v19

    .end local v19           #width:F
    .local v5, width:F
    move v10, v5

    .end local v5           #width:F
    .local v10, width:F
    goto/16 :goto_4

    .end local v10           #width:F
    .end local v15           #isEmoji:Z
    .local v6, lastPos:I
    .restart local v19       #width:F
    :cond_7
    if-eqz p5, :cond_8

    move v0, v11

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v0, v14

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v0, v18

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_8
    if-eqz p6, :cond_9

    invoke-static {v13}, Landroid/text/TextUtils;->recycle([C)V

    :cond_9
    return v19

    .end local v6           #lastPos:I
    .end local v11           #ascent:I
    .end local v14           #descent:I
    .end local v18           #top:I
    .end local v19           #width:F
    .local v5, ascent:I
    .restart local v7       #descent:I
    .local v8, top:I
    .restart local v10       #width:F
    .restart local v15       #isEmoji:Z
    :cond_a
    move v6, v12

    .end local v12           #bottom:I
    .local v6, bottom:I
    move v9, v8

    .end local v8           #top:I
    .local v9, top:I
    goto/16 :goto_8

    .end local v6           #bottom:I
    .end local v9           #top:I
    .restart local v12       #bottom:I
    .restart local v18       #top:I
    :cond_b
    move/from16 v8, v18

    .end local v18           #top:I
    .restart local v8       #top:I
    goto/16 :goto_7

    .end local v7           #descent:I
    .end local v8           #top:I
    .restart local v14       #descent:I
    .restart local v18       #top:I
    :cond_c
    move v7, v14

    .end local v14           #descent:I
    .restart local v7       #descent:I
    goto/16 :goto_6

    .end local v5           #ascent:I
    .end local v7           #descent:I
    .restart local v11       #ascent:I
    .restart local v14       #descent:I
    :cond_d
    move v5, v11

    .end local v11           #ascent:I
    .restart local v5       #ascent:I
    goto/16 :goto_5

    .end local v5           #ascent:I
    .restart local v11       #ascent:I
    :cond_e
    move v6, v12

    .end local v12           #bottom:I
    .restart local v6       #bottom:I
    move/from16 v9, v18

    .end local v18           #top:I
    .restart local v9       #top:I
    move v7, v14

    .end local v14           #descent:I
    .restart local v7       #descent:I
    move v5, v11

    .end local v11           #ascent:I
    .restart local v5       #ascent:I
    goto/16 :goto_8

    .end local v5           #ascent:I
    .end local v6           #bottom:I
    .end local v7           #descent:I
    .end local v9           #top:I
    .end local v10           #width:F
    .restart local v11       #ascent:I
    .restart local v12       #bottom:I
    .restart local v14       #descent:I
    .restart local v18       #top:I
    .restart local v19       #width:F
    :cond_f
    move/from16 v10, v19

    .end local v19           #width:F
    .restart local v10       #width:F
    goto/16 :goto_4

    .end local v10           #width:F
    .local v6, lastPos:I
    .restart local v19       #width:F
    :cond_10
    move/from16 v10, v18

    .end local v18           #top:I
    .local v10, top:I
    move v7, v14

    .end local v14           #descent:I
    .restart local v7       #descent:I
    move v5, v11

    .end local v11           #ascent:I
    .restart local v5       #ascent:I
    move v8, v6

    .end local v6           #lastPos:I
    .local v8, lastPos:I
    move/from16 v11, v19

    .end local v19           #width:F
    .local v11, width:F
    move v6, v12

    .end local v12           #bottom:I
    .local v6, bottom:I
    goto/16 :goto_9

    .end local v7           #descent:I
    .end local v8           #lastPos:I
    .end local v10           #top:I
    .end local v15           #isEmoji:Z
    .local v5, isEmoji:Z
    .local v6, lastPos:I
    .local v11, ascent:I
    .restart local v12       #bottom:I
    .restart local v14       #descent:I
    .restart local v18       #top:I
    .restart local v19       #width:F
    :cond_11
    move v15, v5

    .end local v5           #isEmoji:Z
    .restart local v15       #isEmoji:Z
    goto/16 :goto_2
.end method

.method static nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .locals 6
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "h"
    .parameter "tabs"

    .prologue
    const/high16 v5, 0x41a0

    const v2, 0x7f7fffff

    .local v2, nh:F
    const/4 v0, 0x0

    .local v0, alltabs:Z
    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_4

    if-nez p4, :cond_0

    check-cast p0, Landroid/text/Spanned;

    .end local p0
    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-interface {p0, p1, p2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    const/4 v0, 0x1

    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p4

    if-ge v1, v4, :cond_3

    if-nez v0, :cond_2

    aget-object v4, p4, v1

    instance-of v4, v4, Landroid/text/style/TabStopSpan;

    if-nez v4, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    aget-object p0, p4, v1

    check-cast p0, Landroid/text/style/TabStopSpan;

    invoke-interface {p0}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v3

    .local v3, where:I
    int-to-float v4, v3

    cmpg-float v4, v4, v2

    if-gez v4, :cond_1

    int-to-float v4, v3

    cmpl-float v4, v4, p3

    if-lez v4, :cond_1

    int-to-float v2, v3

    goto :goto_1

    .end local v3           #where:I
    :cond_3
    const v4, 0x7f7fffff

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_4

    move v4, v2

    .end local v1           #i:I
    :goto_2
    return v4

    :cond_4
    add-float v4, p3, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    goto :goto_2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 67
    .parameter "c"
    .parameter "highlight"
    .parameter "highlightPaint"
    .parameter "cursorOffsetVertical"

    .prologue
    sget-object v5, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v5

    :try_start_0
    sget-object v6, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_1

    monitor-exit v5

    .end local p2
    :cond_0
    return-void

    .restart local p2
    :cond_1
    sget-object v6, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    move-object v0, v6

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v51, v0

    .local v51, dtop:I
    sget-object v6, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    move-object v0, v6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v50, v0

    .local v50, dbottom:I
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v64, 0x0

    .local v64, top:I
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v48

    .local v48, bottom:I
    move/from16 v0, v51

    move/from16 v1, v64

    if-le v0, v1, :cond_2

    move/from16 v64, v51

    :cond_2
    move/from16 v0, v50

    move/from16 v1, v48

    if-ge v0, v1, :cond_3

    move/from16 v48, v50

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v52

    .local v52, first:I
    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v54

    .local v54, last:I
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v58

    .local v58, previousLineBottom:I
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v59

    .local v59, previousLineEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v6, v0

    .local v6, paint:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v12, v0

    .local v12, buf:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move v8, v0

    .local v8, width:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move/from16 v62, v0

    .local v62, spannedText:Z
    sget-object v46, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .local v46, spans:[Landroid/text/style/ParagraphStyle;
    const/16 v61, 0x0

    .local v61, spanend:I
    const/16 v63, 0x0

    .local v63, textLength:I
    if-eqz v62, :cond_7

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v63

    move/from16 v15, v52

    .local v15, i:I
    :goto_0
    move v0, v15

    move/from16 v1, v54

    if-gt v0, v1, :cond_6

    move/from16 v13, v59

    .local v13, start:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .local v14, end:I
    move/from16 v59, v14

    move/from16 v9, v58

    .local v9, ltop:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    .local v11, lbottom:I
    move/from16 v58, v11

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v5

    sub-int v10, v11, v5

    .local v10, lbaseline:I
    move v0, v13

    move/from16 v1, v61

    if-lt v0, v1, :cond_4

    move-object v0, v12

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v60, v0

    .local v60, sp:Landroid/text/Spanned;
    const-class v5, Landroid/text/style/LineBackgroundSpan;

    move-object/from16 v0, v60

    move v1, v13

    move/from16 v2, v63

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v61

    const-class v5, Landroid/text/style/LineBackgroundSpan;

    move-object/from16 v0, v60

    move v1, v13

    move/from16 v2, v61

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v46

    .end local v46           #spans:[Landroid/text/style/ParagraphStyle;
    check-cast v46, [Landroid/text/style/ParagraphStyle;

    .end local v60           #sp:Landroid/text/Spanned;
    .restart local v46       #spans:[Landroid/text/style/ParagraphStyle;
    :cond_4
    const/16 v57, 0x0

    .local v57, n:I
    :goto_1
    move-object/from16 v0, v46

    array-length v0, v0

    move v5, v0

    move/from16 v0, v57

    move v1, v5

    if-ge v0, v1, :cond_5

    aget-object v4, v46, v57

    check-cast v4, Landroid/text/style/LineBackgroundSpan;

    .local v4, back:Landroid/text/style/LineBackgroundSpan;
    const/4 v7, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v15}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    add-int/lit8 v57, v57, 0x1

    goto :goto_1

    .end local v4           #back:Landroid/text/style/LineBackgroundSpan;
    .end local v6           #paint:Landroid/text/TextPaint;
    .end local v8           #width:I
    .end local v9           #ltop:I
    .end local v10           #lbaseline:I
    .end local v11           #lbottom:I
    .end local v12           #buf:Ljava/lang/CharSequence;
    .end local v13           #start:I
    .end local v14           #end:I
    .end local v15           #i:I
    .end local v46           #spans:[Landroid/text/style/ParagraphStyle;
    .end local v48           #bottom:I
    .end local v50           #dbottom:I
    .end local v51           #dtop:I
    .end local v52           #first:I
    .end local v54           #last:I
    .end local v57           #n:I
    .end local v58           #previousLineBottom:I
    .end local v59           #previousLineEnd:I
    .end local v61           #spanend:I
    .end local v62           #spannedText:Z
    .end local v63           #textLength:I
    .end local v64           #top:I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .restart local v6       #paint:Landroid/text/TextPaint;
    .restart local v8       #width:I
    .restart local v9       #ltop:I
    .restart local v10       #lbaseline:I
    .restart local v11       #lbottom:I
    .restart local v12       #buf:Ljava/lang/CharSequence;
    .restart local v13       #start:I
    .restart local v14       #end:I
    .restart local v15       #i:I
    .restart local v46       #spans:[Landroid/text/style/ParagraphStyle;
    .restart local v48       #bottom:I
    .restart local v50       #dbottom:I
    .restart local v51       #dtop:I
    .restart local v52       #first:I
    .restart local v54       #last:I
    .restart local v57       #n:I
    .restart local v58       #previousLineBottom:I
    .restart local v59       #previousLineEnd:I
    .restart local v61       #spanend:I
    .restart local v62       #spannedText:Z
    .restart local v63       #textLength:I
    .restart local v64       #top:I
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .end local v9           #ltop:I
    .end local v10           #lbaseline:I
    .end local v11           #lbottom:I
    .end local v13           #start:I
    .end local v14           #end:I
    .end local v57           #n:I
    :cond_6
    const/16 v61, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v58

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v59

    sget-object v46, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .end local v15           #i:I
    :cond_7
    if-eqz p2, :cond_9

    if-eqz p4, :cond_8

    const/4 v5, 0x0

    move/from16 v0, p4

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_8
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz p4, :cond_9

    const/4 v5, 0x0

    move/from16 v0, p4

    neg-int v0, v0

    move v7, v0

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v47, v0

    .local v47, align:Landroid/text/Layout$Alignment;
    move/from16 v15, v52

    .end local p2
    .restart local v15       #i:I
    :goto_2
    move v0, v15

    move/from16 v1, v54

    if-gt v0, v1, :cond_0

    move/from16 v13, v59

    .restart local v13       #start:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v59

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v59

    invoke-direct {v0, v1, v2, v3}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v14

    .restart local v14       #end:I
    move/from16 v9, v58

    .restart local v9       #ltop:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    .restart local v11       #lbottom:I
    move/from16 v58, v11

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v5

    sub-int v10, v11, v5

    .restart local v10       #lbaseline:I
    const/16 v27, 0x0

    .local v27, isFirstParaLine:Z
    if-eqz v62, :cond_c

    if-eqz v13, :cond_a

    const/4 v5, 0x1

    sub-int v5, v13, v5

    invoke-interface {v12, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v7, 0xa

    if-ne v5, v7, :cond_b

    :cond_a
    const/16 v27, 0x1

    :cond_b
    move v0, v13

    move/from16 v1, v61

    if-lt v0, v1, :cond_c

    move-object v0, v12

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v60, v0

    .restart local v60       #sp:Landroid/text/Spanned;
    const-class v5, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v60

    move v1, v13

    move/from16 v2, v63

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v61

    const-class v5, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v60

    move v1, v13

    move/from16 v2, v61

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v46

    .end local v46           #spans:[Landroid/text/style/ParagraphStyle;
    check-cast v46, [Landroid/text/style/ParagraphStyle;

    .restart local v46       #spans:[Landroid/text/style/ParagraphStyle;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v47, v0

    move-object/from16 v0, v46

    array-length v0, v0

    move v5, v0

    const/4 v7, 0x1

    sub-int v57, v5, v7

    .restart local v57       #n:I
    :goto_3
    if-ltz v57, :cond_c

    aget-object v5, v46, v57

    instance-of v5, v5, Landroid/text/style/AlignmentSpan;

    if-eqz v5, :cond_e

    aget-object p2, v46, v57

    check-cast p2, Landroid/text/style/AlignmentSpan;

    invoke-interface/range {p2 .. p2}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v47

    .end local v57           #n:I
    .end local v60           #sp:Landroid/text/Spanned;
    :cond_c
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v20

    .local v20, dir:I
    const/16 v31, 0x0

    .local v31, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move/from16 v19, v0

    .local v19, right:I
    if-eqz v62, :cond_12

    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v55, v0

    .local v55, length:I
    const/16 v57, 0x0

    .restart local v57       #n:I
    :goto_4
    move/from16 v0, v57

    move/from16 v1, v55

    if-ge v0, v1, :cond_12

    aget-object v5, v46, v57

    instance-of v5, v5, Landroid/text/style/LeadingMarginSpan;

    if-eqz v5, :cond_d

    aget-object v16, v46, v57

    check-cast v16, Landroid/text/style/LeadingMarginSpan;

    .local v16, margin:Landroid/text/style/LeadingMarginSpan;
    const/4 v5, -0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_f

    move-object/from16 v17, p1

    move-object/from16 v18, v6

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v28, p0

    invoke-interface/range {v16 .. v28}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v19, v19, v5

    .end local v16           #margin:Landroid/text/style/LeadingMarginSpan;
    :cond_d
    :goto_5
    add-int/lit8 v57, v57, 0x1

    goto :goto_4

    .end local v19           #right:I
    .end local v20           #dir:I
    .end local v31           #left:I
    .end local v55           #length:I
    .restart local v60       #sp:Landroid/text/Spanned;
    :cond_e
    add-int/lit8 v57, v57, -0x1

    goto :goto_3

    .end local v60           #sp:Landroid/text/Spanned;
    .restart local v16       #margin:Landroid/text/style/LeadingMarginSpan;
    .restart local v19       #right:I
    .restart local v20       #dir:I
    .restart local v31       #left:I
    .restart local v55       #length:I
    :cond_f
    move-object/from16 v28, v16

    move-object/from16 v29, p1

    move-object/from16 v30, v6

    move/from16 v32, v20

    move/from16 v33, v9

    move/from16 v34, v10

    move/from16 v35, v11

    move-object/from16 v36, v12

    move/from16 v37, v13

    move/from16 v38, v14

    move/from16 v39, v27

    move-object/from16 v40, p0

    invoke-interface/range {v28 .. v40}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    move/from16 v65, v27

    .local v65, useMargin:Z
    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move v5, v0

    if-eqz v5, :cond_10

    move-object/from16 v0, v16

    check-cast v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v49

    .local v49, count:I
    move/from16 v0, v49

    move v1, v15

    if-le v0, v1, :cond_11

    const/4 v5, 0x1

    move/from16 v65, v5

    .end local v49           #count:I
    :cond_10
    :goto_6
    move-object/from16 v0, v16

    move/from16 v1, v65

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    add-int v31, v31, v5

    goto :goto_5

    .restart local v49       #count:I
    :cond_11
    const/4 v5, 0x0

    move/from16 v65, v5

    goto :goto_6

    .end local v16           #margin:Landroid/text/style/LeadingMarginSpan;
    .end local v49           #count:I
    .end local v55           #length:I
    .end local v57           #n:I
    .end local v65           #useMargin:Z
    :cond_12
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v47

    move-object v1, v5

    if-ne v0, v1, :cond_14

    const/4 v5, 0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_13

    move/from16 v66, v31

    .local v66, x:I
    :goto_7
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v38

    .local v38, directions:Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v45

    .local v45, hasTab:Z
    sget-object v5, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, v38

    move-object v1, v5

    if-ne v0, v1, :cond_18

    if-nez v62, :cond_18

    if-nez v45, :cond_18

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v36, v0

    move v0, v10

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v32, p1

    move-object/from16 v33, v12

    move/from16 v34, v13

    move/from16 v35, v14

    move-object/from16 v38, v6

    invoke-virtual/range {v32 .. v38}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .end local v38           #directions:Landroid/text/Layout$Directions;
    :goto_8
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .end local v45           #hasTab:Z
    .end local v66           #x:I
    :cond_13
    move/from16 v66, v19

    .restart local v66       #x:I
    goto :goto_7

    .end local v66           #x:I
    :cond_14
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v46

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/text/Layout;->getLineMax(I[Ljava/lang/Object;Z)F

    move-result v5

    move v0, v5

    float-to-int v0, v0

    move/from16 v56, v0

    .local v56, max:I
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v47

    move-object v1, v5

    if-ne v0, v1, :cond_16

    const/4 v5, -0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_15

    add-int v66, v31, v56

    .restart local v66       #x:I
    goto :goto_7

    .end local v66           #x:I
    :cond_15
    sub-int v66, v19, v56

    .restart local v66       #x:I
    goto :goto_7

    .end local v66           #x:I
    :cond_16
    and-int/lit8 v56, v56, -0x2

    sub-int v5, v19, v31

    sub-int v5, v5, v56

    shr-int/lit8 v53, v5, 0x1

    .local v53, half:I
    const/4 v5, -0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_17

    sub-int v66, v19, v53

    .restart local v66       #x:I
    goto :goto_7

    .end local v66           #x:I
    :cond_17
    add-int v66, v31, v53

    .restart local v66       #x:I
    goto :goto_7

    .end local v53           #half:I
    .end local v56           #max:I
    .restart local v38       #directions:Landroid/text/Layout$Directions;
    .restart local v45       #hasTab:Z
    :cond_18
    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v44, v0

    move-object/from16 v32, p0

    move-object/from16 v33, p1

    move-object/from16 v34, v12

    move/from16 v35, v13

    move/from16 v36, v14

    move/from16 v37, v20

    move/from16 v40, v9

    move/from16 v41, v10

    move/from16 v42, v11

    move-object/from16 v43, v6

    invoke-direct/range {v32 .. v46}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;FIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z[Ljava/lang/Object;)V

    goto :goto_8
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract getBottomPadding()I
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 11
    .parameter "point"
    .parameter "dest"
    .parameter "editingBuffer"

    .prologue
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .local v6, line:I
    invoke-virtual {p0, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    .local v7, top:I
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p0, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .local v0, bottom:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    const/high16 v9, 0x3f00

    sub-float v4, v8, v9

    .local v4, h1:F
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v8

    const/high16 v9, 0x3f00

    sub-float v5, v8, v9

    .local v5, h2:F
    const/4 v8, 0x1

    invoke-static {p3, v8}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v8

    const/high16 v9, 0x1

    invoke-static {p3, v9}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v9

    or-int v1, v8, v9

    .local v1, caps:I
    const/4 v8, 0x2

    invoke-static {p3, v8}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    .local v3, fn:I
    const/4 v2, 0x0

    .local v2, dist:I
    if-nez v1, :cond_0

    if-eqz v3, :cond_2

    :cond_0
    sub-int v8, v0, v7

    shr-int/lit8 v2, v8, 0x2

    if-eqz v3, :cond_1

    add-int/2addr v7, v2

    :cond_1
    if-eqz v1, :cond_2

    sub-int/2addr v0, v2

    :cond_2
    const/high16 v8, 0x3f00

    cmpg-float v8, v4, v8

    if-gez v8, :cond_3

    const/high16 v4, 0x3f00

    :cond_3
    const/high16 v8, 0x3f00

    cmpg-float v8, v5, v8

    if-gez v8, :cond_4

    const/high16 v5, 0x3f00

    :cond_4
    cmpl-float v8, v4, v5

    if-nez v8, :cond_7

    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v8, v0

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    const/4 v8, 0x2

    if-ne v1, v8, :cond_8

    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_5
    :goto_1
    const/4 v8, 0x2

    if-ne v3, v8, :cond_9

    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    add-int v8, v7, v0

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    add-int v8, v7, v0

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_8
    const/4 v8, 0x1

    if-ne v1, v8, :cond_5

    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    sub-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    sub-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_9
    const/4 v8, 0x1

    if-ne v3, v8, :cond_6

    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_2
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method public abstract getEllipsisStart(I)I
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public final getLineAscent(I)I
    .locals 3
    .parameter "line"

    .prologue
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBaseline(I)I
    .locals 2
    .parameter "line"

    .prologue
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBottom(I)I
    .locals 1
    .parameter "line"

    .prologue
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 1
    .parameter "line"
    .parameter "bounds"

    .prologue
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public abstract getLineContainsTab(I)Z
.end method

.method public abstract getLineCount()I
.end method

.method public abstract getLineDescent(I)I
.end method

.method public abstract getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final getLineEnd(I)I
    .locals 1
    .parameter "line"

    .prologue
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public getLineForOffset(I)I
    .locals 5
    .parameter "offset"

    .prologue
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, high:I
    const/4 v2, -0x1

    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .local v0, guess:I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_0

    .end local v0           #guess:I
    :cond_1
    if-gez v2, :cond_2

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_2
    move v3, v2

    goto :goto_1
.end method

.method public getLineForVertical(I)I
    .locals 5
    .parameter "vertical"

    .prologue
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, high:I
    const/4 v2, -0x1

    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .local v0, guess:I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_0

    .end local v0           #guess:I
    :cond_1
    if-gez v2, :cond_2

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_2
    move v3, v2

    goto :goto_1
.end method

.method public getLineLeft(I)F
    .locals 8
    .parameter "line"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_1

    if-ne v1, v7, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0

    :cond_1
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    if-ne v1, v7, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    goto :goto_0
.end method

.method public getLineMax(I)F
    .locals 2
    .parameter "line"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineMax(I[Ljava/lang/Object;Z)F

    move-result v0

    return v0
.end method

.method public getLineRight(I)F
    .locals 7
    .parameter "line"

    .prologue
    const/4 v6, -0x1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_1

    if-ne v1, v6, :cond_0

    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    :goto_0
    return v5

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_0

    :cond_1
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    if-ne v1, v6, :cond_2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    goto :goto_0

    :cond_2
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    int-to-float v5, v5

    goto :goto_0
.end method

.method public abstract getLineStart(I)I
.end method

.method public abstract getLineTop(I)I
.end method

.method public getLineVisibleEnd(I)I
    .locals 2
    .parameter "line"

    .prologue
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v0

    return v0
.end method

.method public getLineWidth(I)F
    .locals 2
    .parameter "line"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineMax(I[Ljava/lang/Object;Z)F

    move-result v0

    return v0
.end method

.method public getOffsetForHorizontal(IF)I
    .locals 20
    .parameter "line"
    .parameter "horiz"

    .prologue
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v18

    const/16 v19, 0x1

    sub-int v13, v18, v19

    .local v13, max:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .local v14, min:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .local v6, dirs:Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v18

    const/16 v19, 0x1

    sub-int v18, v18, v19

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    add-int/lit8 v13, v13, 0x1

    :cond_0
    move v4, v14

    .local v4, best:I
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .local v5, bestdist:F
    move v9, v14

    .local v9, here:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static {v6}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move v0, v11

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static {v6}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v18

    aget-short v18, v18, v11

    add-int v17, v9, v18

    .local v17, there:I
    and-int/lit8 v18, v11, 0x1

    if-nez v18, :cond_2

    const/16 v18, 0x1

    move/from16 v16, v18

    .local v16, swap:I
    :goto_1
    move/from16 v0, v17

    move v1, v13

    if-le v0, v1, :cond_1

    move/from16 v17, v13

    :cond_1
    const/16 v18, 0x1

    sub-int v18, v17, v18

    add-int/lit8 v10, v18, 0x1

    .local v10, high:I
    add-int/lit8 v18, v9, 0x1

    const/16 v19, 0x1

    sub-int v12, v18, v19

    .local v12, low:I
    :goto_2
    sub-int v18, v10, v12

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    add-int v18, v10, v12

    div-int/lit8 v8, v18, 0x2

    .local v8, guess:I
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v2

    .local v2, adguess:I
    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p2

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_3

    move v10, v8

    goto :goto_2

    .end local v2           #adguess:I
    .end local v8           #guess:I
    .end local v10           #high:I
    .end local v12           #low:I
    .end local v16           #swap:I
    :cond_2
    const/16 v18, -0x1

    move/from16 v16, v18

    goto :goto_1

    .restart local v2       #adguess:I
    .restart local v8       #guess:I
    .restart local v10       #high:I
    .restart local v12       #low:I
    .restart local v16       #swap:I
    :cond_3
    move v12, v8

    goto :goto_2

    .end local v2           #adguess:I
    .end local v8           #guess:I
    :cond_4
    add-int/lit8 v18, v9, 0x1

    move v0, v12

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    add-int/lit8 v12, v9, 0x1

    :cond_5
    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v12

    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .local v7, dist:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v12

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    .local v3, aft:I
    move v0, v3

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .local v15, other:F
    cmpg-float v18, v15, v7

    if-gez v18, :cond_6

    move v7, v15

    move v12, v3

    .end local v15           #other:F
    :cond_6
    cmpg-float v18, v7, v5

    if-gez v18, :cond_7

    move v5, v7

    move v4, v12

    .end local v3           #aft:I
    .end local v7           #dist:F
    :cond_7
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .restart local v7       #dist:F
    cmpg-float v18, v7, v5

    if-gez v18, :cond_8

    move v5, v7

    move v4, v9

    :cond_8
    move/from16 v9, v17

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .end local v7           #dist:F
    .end local v10           #high:I
    .end local v12           #low:I
    .end local v16           #swap:I
    .end local v17           #there:I
    :cond_9
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .restart local v7       #dist:F
    cmpg-float v18, v7, v5

    if-gez v18, :cond_a

    move v5, v7

    move v4, v13

    :cond_a
    return v4
.end method

.method public getOffsetToLeftOf(I)I
    .locals 18
    .parameter "offset"

    .prologue
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v13

    .local v13, line:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .local v14, start:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    .local v8, end:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .local v7, dirs:Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    add-int/lit8 v8, v8, -0x1

    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v11

    .local v11, horiz:F
    move/from16 v3, p1

    .local v3, best:I
    const/high16 v4, -0x3100

    .local v4, besth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    .local v5, candidate:I
    if-lt v5, v14, :cond_1

    if-gt v5, v8, :cond_1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .local v9, h:F
    cmpg-float v16, v9, v11

    if-gez v16, :cond_1

    cmpl-float v16, v9, v4

    if-lez v16, :cond_1

    move v3, v5

    move v4, v9

    .end local v9           #h:F
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v5

    if-lt v5, v14, :cond_2

    if-gt v5, v8, :cond_2

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .restart local v9       #h:F
    cmpg-float v16, v9, v11

    if-gez v16, :cond_2

    cmpl-float v16, v9, v4

    if-lez v16, :cond_2

    move v3, v5

    move v4, v9

    .end local v9           #h:F
    :cond_2
    move v10, v14

    .local v10, here:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static {v7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_7

    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static {v7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v16

    aget-short v16, v16, v12

    add-int v15, v10, v16

    .local v15, there:I
    if-le v15, v8, :cond_3

    move v15, v8

    :cond_3
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .restart local v9       #h:F
    cmpg-float v16, v9, v11

    if-gez v16, :cond_4

    cmpl-float v16, v9, v4

    if-lez v16, :cond_4

    move v3, v10

    move v4, v9

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v10

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v5

    if-lt v5, v14, :cond_5

    if-gt v5, v8, :cond_5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    cmpg-float v16, v9, v11

    if-gez v16, :cond_5

    cmpl-float v16, v9, v4

    if-lez v16, :cond_5

    move v3, v5

    move v4, v9

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v15

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    if-lt v5, v14, :cond_6

    if-gt v5, v8, :cond_6

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    cmpg-float v16, v9, v11

    if-gez v16, :cond_6

    cmpl-float v16, v9, v4

    if-lez v16, :cond_6

    move v3, v5

    move v4, v9

    :cond_6
    move v10, v15

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .end local v9           #h:F
    .end local v15           #there:I
    :cond_7
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .restart local v9       #h:F
    cmpg-float v16, v9, v11

    if-gez v16, :cond_8

    cmpl-float v16, v9, v4

    if-lez v16, :cond_8

    move v3, v8

    move v4, v9

    :cond_8
    move v0, v3

    move/from16 v1, p1

    if-eq v0, v1, :cond_9

    move/from16 v16, v3

    :goto_1
    return v16

    :cond_9
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .local v6, dir:I
    if-lez v6, :cond_b

    if-nez v13, :cond_a

    move/from16 v16, v3

    goto :goto_1

    :cond_a
    const/16 v16, 0x1

    sub-int v16, v13, v16

    const v17, 0x461c4000

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v16

    goto :goto_1

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_c

    move/from16 v16, v3

    goto :goto_1

    :cond_c
    add-int/lit8 v16, v13, 0x1

    const v17, 0x461c4000

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v16

    goto :goto_1
.end method

.method public getOffsetToRightOf(I)I
    .locals 18
    .parameter "offset"

    .prologue
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v13

    .local v13, line:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .local v14, start:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    .local v8, end:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .local v7, dirs:Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    add-int/lit8 v8, v8, -0x1

    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v11

    .local v11, horiz:F
    move/from16 v3, p1

    .local v3, best:I
    const/high16 v4, 0x4f00

    .local v4, besth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    .local v5, candidate:I
    if-lt v5, v14, :cond_1

    if-gt v5, v8, :cond_1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .local v9, h:F
    cmpl-float v16, v9, v11

    if-lez v16, :cond_1

    cmpg-float v16, v9, v4

    if-gez v16, :cond_1

    move v3, v5

    move v4, v9

    .end local v9           #h:F
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v5

    if-lt v5, v14, :cond_2

    if-gt v5, v8, :cond_2

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .restart local v9       #h:F
    cmpl-float v16, v9, v11

    if-lez v16, :cond_2

    cmpg-float v16, v9, v4

    if-gez v16, :cond_2

    move v3, v5

    move v4, v9

    .end local v9           #h:F
    :cond_2
    move v10, v14

    .local v10, here:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static {v7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_7

    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static {v7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v16

    aget-short v16, v16, v12

    add-int v15, v10, v16

    .local v15, there:I
    if-le v15, v8, :cond_3

    move v15, v8

    :cond_3
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .restart local v9       #h:F
    cmpl-float v16, v9, v11

    if-lez v16, :cond_4

    cmpg-float v16, v9, v4

    if-gez v16, :cond_4

    move v3, v10

    move v4, v9

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v10

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v5

    if-lt v5, v14, :cond_5

    if-gt v5, v8, :cond_5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    cmpl-float v16, v9, v11

    if-lez v16, :cond_5

    cmpg-float v16, v9, v4

    if-gez v16, :cond_5

    move v3, v5

    move v4, v9

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v15

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    if-lt v5, v14, :cond_6

    if-gt v5, v8, :cond_6

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    cmpl-float v16, v9, v11

    if-lez v16, :cond_6

    cmpg-float v16, v9, v4

    if-gez v16, :cond_6

    move v3, v5

    move v4, v9

    :cond_6
    move v10, v15

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .end local v9           #h:F
    .end local v15           #there:I
    :cond_7
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .restart local v9       #h:F
    cmpl-float v16, v9, v11

    if-lez v16, :cond_8

    cmpg-float v16, v9, v4

    if-gez v16, :cond_8

    move v3, v8

    move v4, v9

    :cond_8
    move v0, v3

    move/from16 v1, p1

    if-eq v0, v1, :cond_9

    move/from16 v16, v3

    :goto_1
    return v16

    :cond_9
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .local v6, dir:I
    if-lez v6, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_a

    move/from16 v16, v3

    goto :goto_1

    :cond_a
    add-int/lit8 v16, v13, 0x1

    const v17, -0x39e3c000

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v16

    goto :goto_1

    :cond_b
    if-nez v13, :cond_c

    move/from16 v16, v3

    goto :goto_1

    :cond_c
    const/16 v16, 0x1

    sub-int v16, v13, v16

    const v17, -0x39e3c000

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v16

    goto :goto_1
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .locals 7
    .parameter "line"

    .prologue
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .local v0, align:Landroid/text/Layout$Alignment;
    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_0

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    .local v1, sp:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    const-class v6, Landroid/text/style/AlignmentSpan;

    invoke-interface {v1, v4, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/AlignmentSpan;

    .local v3, spans:[Landroid/text/style/AlignmentSpan;
    array-length v2, v3

    .local v2, spanLength:I
    if-lez v2, :cond_0

    const/4 v4, 0x1

    sub-int v4, v2, v4

    aget-object v4, v3, v4

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .end local v1           #sp:Landroid/text/Spanned;
    .end local v2           #spanLength:I
    .end local v3           #spans:[Landroid/text/style/AlignmentSpan;
    :cond_0
    return-object v0
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .locals 16
    .parameter "line"

    .prologue
    const/4 v15, 0x1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v3

    .local v3, dir:I
    const/4 v5, 0x0

    .local v5, left:I
    const/4 v8, 0x0

    .local v8, par:Z
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    .local v7, off:I
    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v12, v0

    sub-int v13, v7, v15

    invoke-interface {v12, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    const/16 v13, 0xa

    if-ne v12, v13, :cond_1

    :cond_0
    const/4 v8, 0x1

    :cond_1
    if-ne v3, v15, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move v12, v0

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v9, v0

    check-cast v9, Landroid/text/Spanned;

    .local v9, sp:Landroid/text/Spanned;
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v13

    const-class v14, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v9, v12, v13, v14}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/LeadingMarginSpan;

    .local v11, spans:[Landroid/text/style/LeadingMarginSpan;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v12, v11

    if-ge v4, v12, :cond_4

    move v6, v8

    .local v6, margin:Z
    aget-object v10, v11, v4

    .local v10, span:Landroid/text/style/LeadingMarginSpan;
    instance-of v12, v10, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v12, :cond_2

    move-object v0, v10

    check-cast v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move-object v12, v0

    invoke-interface {v12}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v2

    .local v2, count:I
    move v0, v2

    move/from16 v1, p1

    if-lt v0, v1, :cond_3

    move v6, v15

    .end local v2           #count:I
    :cond_2
    :goto_1
    invoke-interface {v10, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v12

    add-int/2addr v5, v12

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .restart local v2       #count:I
    :cond_3
    const/4 v12, 0x0

    move v6, v12

    goto :goto_1

    .end local v2           #count:I
    .end local v4           #i:I
    .end local v6           #margin:Z
    .end local v9           #sp:Landroid/text/Spanned;
    .end local v10           #span:Landroid/text/style/LeadingMarginSpan;
    .end local v11           #spans:[Landroid/text/style/LeadingMarginSpan;
    :cond_4
    return v5
.end method

.method public final getParagraphRight(I)I
    .locals 10
    .parameter "line"

    .prologue
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .local v0, dir:I
    iget v4, p0, Landroid/text/Layout;->mWidth:I

    .local v4, right:I
    const/4 v3, 0x0

    .local v3, par:Z
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .local v2, off:I
    if-eqz v2, :cond_0

    iget-object v7, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/4 v8, 0x1

    sub-int v8, v2, v8

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    const/4 v7, -0x1

    if-ne v0, v7, :cond_2

    iget-boolean v7, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v7, :cond_2

    iget-object v5, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spanned;

    .local v5, sp:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    const-class v9, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v5, v7, v8, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/LeadingMarginSpan;

    .local v6, spans:[Landroid/text/style/LeadingMarginSpan;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v6

    if-ge v1, v7, :cond_2

    aget-object v7, v6, v1

    invoke-interface {v7, v3}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v7

    sub-int/2addr v4, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1           #i:I
    .end local v5           #sp:Landroid/text/Spanned;
    .end local v6           #spans:[Landroid/text/style/LeadingMarginSpan;
    :cond_2
    return v4
.end method

.method public getPrimaryHorizontal(I)F
    .locals 2
    .parameter "offset"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v0

    return v0
.end method

.method public getSecondaryHorizontal(I)F
    .locals 1
    .parameter "offset"

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v0

    return v0
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .locals 19
    .parameter "start"
    .parameter "end"
    .parameter "dest"

    .prologue
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    move/from16 v17, p2

    .local v17, temp:I
    move/from16 p2, p1

    move/from16 p1, v17

    .end local v17           #temp:I
    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .local v3, startline:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    .local v15, endline:I
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .local v6, top:I
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .local v7, bottom:I
    if-ne v3, v15, :cond_2

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v8}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move v2, v0

    move v0, v2

    int-to-float v0, v0

    move/from16 v18, v0

    .local v18, width:F
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    move/from16 v10, p1

    move v12, v6

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    int-to-float v10, v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    :goto_1
    add-int/lit8 v16, v3, 0x1

    .local v16, i:I
    :goto_2
    move/from16 v0, v16

    move v1, v15

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    const/4 v9, 0x0

    int-to-float v10, v6

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .end local v16           #i:I
    :cond_3
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    int-to-float v10, v6

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .restart local v16       #i:I
    :cond_4
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    move-object/from16 v8, p0

    move v9, v15

    move/from16 v11, p2

    move v12, v6

    move v13, v7

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .end local v3           #startline:I
    int-to-float v10, v6

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v9, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0

    :cond_5
    const/4 v9, 0x0

    int-to-float v10, v6

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0
.end method

.method public final getSpacingAdd()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final getSpacingMultiplier()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public abstract getTopPadding()I
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final increaseWidthTo(I)V
    .locals 2
    .parameter "wid"

    .prologue
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    return-void
.end method

.method protected final isSpanned()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 3
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"

    .prologue
    if-gez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iput p3, p0, Landroid/text/Layout;->mWidth:I

    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return-void
.end method
