.class public Landroid/text/SpannableStringBuilder;
.super Ljava/lang/Object;
.source "SpannableStringBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/Spannable;
.implements Landroid/text/Editable;
.implements Ljava/lang/Appendable;
.implements Landroid/text/GraphicsOperations;


# static fields
.field private static final END_MASK:I = 0xf

.field private static final MARK:I = 0x1

.field private static final NO_FILTERS:[Landroid/text/InputFilter; = null

.field private static final PARAGRAPH:I = 0x3

.field private static final POINT:I = 0x2

.field private static final START_MASK:I = 0xf0

.field private static final START_SHIFT:I = 0x4


# instance fields
.field private mFilters:[Landroid/text/InputFilter;

.field private mGapLength:I

.field private mGapStart:I

.field private mSpanCount:I

.field private mSpanEnds:[I

.field private mSpanFlags:[I

.field private mSpanStarts:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/text/InputFilter;

    sput-object v0, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 12
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v11, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v10, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    iput-object v10, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    sub-int v8, p3, p2

    .local v8, srclen:I
    add-int/lit8 v10, v8, 0x1

    invoke-static {v10}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v5

    .local v5, len:I
    new-array v10, v5, [C

    iput-object v10, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iput v8, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v10, v5, v8

    iput v10, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    iget-object v10, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    invoke-static {p1, p2, p3, v10, v11}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    iput v11, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    .local v1, alloc:I
    new-array v10, v1, [Ljava/lang/Object;

    iput-object v10, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    new-array v10, v1, [I

    iput-object v10, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    new-array v10, v1, [I

    iput-object v10, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    new-array v10, v1, [I

    iput-object v10, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    instance-of v10, p1, Landroid/text/Spanned;

    if-eqz v10, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v6, v0

    .local v6, sp:Landroid/text/Spanned;
    const/4 v7, 0x0

    .local v7, spans:[Ljava/lang/Object;
    const-class v10, Ljava/lang/Object;

    invoke-static {v6, p2, p3, v10}, Lcom/motorola/spellchecker/SpellingCheckManager;->getSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v10, v7

    if-ge v4, v10, :cond_5

    aget-object v10, v7, v4

    instance-of v10, v10, Landroid/text/NoCopySpan;

    if-eqz v10, :cond_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    aget-object v10, v7, v4

    invoke-interface {v6, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    sub-int v9, v10, p2

    .local v9, st:I
    aget-object v10, v7, v4

    invoke-interface {v6, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    sub-int v2, v10, p2

    .local v2, en:I
    aget-object v10, v7, v4

    invoke-interface {v6, v10}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    .local v3, fl:I
    if-gez v9, :cond_1

    const/4 v9, 0x0

    :cond_1
    sub-int v10, p3, p2

    if-le v9, v10, :cond_2

    sub-int v9, p3, p2

    :cond_2
    if-gez v2, :cond_3

    const/4 v2, 0x0

    :cond_3
    sub-int v10, p3, p2

    if-le v2, v10, :cond_4

    sub-int v2, p3, p2

    :cond_4
    aget-object v10, v7, v4

    invoke-virtual {p0, v10, v9, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .end local v2           #en:I
    .end local v3           #fl:I
    .end local v4           #i:I
    .end local v6           #sp:Landroid/text/Spanned;
    .end local v7           #spans:[Ljava/lang/Object;
    .end local v9           #st:I
    :cond_5
    return-void
.end method

.method private change(IILjava/lang/CharSequence;II)I
    .locals 7
    .parameter "start"
    .parameter "end"
    .parameter "tb"
    .parameter "tbstart"
    .parameter "tbend"

    .prologue
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->change(ZIILjava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method private change(ZIILjava/lang/CharSequence;II)I
    .locals 23
    .parameter "notify"
    .parameter "start"
    .parameter "end"
    .parameter "tb"
    .parameter "tbstart"
    .parameter "tbend"

    .prologue
    const-string v5, "replace"

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    sub-int v19, p6, p5

    .local v19, ret:I
    const/16 v18, 0x0

    .local v18, recipients:[Landroid/text/TextWatcher;
    if-eqz p1, :cond_0

    sub-int v5, p3, p2

    sub-int v6, p6, p5

    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->sendTextWillChange(III)[Landroid/text/TextWatcher;

    move-result-object v18

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v15, v5, v6

    .local v15, i:I
    :goto_0
    if-ltz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    move-object v5, v0

    aget v5, v5, v15

    and-int/lit8 v5, v5, 0x33

    const/16 v6, 0x33

    if-ne v5, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v5, v0

    aget v22, v5, v15

    .local v22, st:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v5, v0

    move/from16 v0, v22

    move v1, v5

    if-le v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v5, v0

    sub-int v22, v22, v5

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v5, v0

    aget v13, v5, v15

    .local v13, en:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v5, v0

    if-le v13, v5, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v5, v0

    sub-int/2addr v13, v5

    :cond_2
    move/from16 v17, v22

    .local v17, ost:I
    move/from16 v16, v13

    .local v16, oen:I
    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    .local v12, clen:I
    move/from16 v0, v22

    move/from16 v1, p2

    if-le v0, v1, :cond_3

    move/from16 v0, v22

    move/from16 v1, p3

    if-gt v0, v1, :cond_3

    move/from16 v22, p3

    :goto_1
    move/from16 v0, v22

    move v1, v12

    if-ge v0, v1, :cond_3

    move/from16 v0, v22

    move/from16 v1, p3

    if-le v0, v1, :cond_7

    const/4 v5, 0x1

    sub-int v5, v22, v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_7

    :cond_3
    move v0, v13

    move/from16 v1, p2

    if-le v0, v1, :cond_4

    move v0, v13

    move/from16 v1, p3

    if-gt v0, v1, :cond_4

    move/from16 v13, p3

    :goto_2
    if-ge v13, v12, :cond_4

    move v0, v13

    move/from16 v1, p3

    if-le v0, v1, :cond_8

    const/4 v5, 0x1

    sub-int v5, v13, v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_8

    :cond_4
    move/from16 v0, v22

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object v5, v0

    aget-object v5, v5, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    move-object v6, v0

    aget v6, v6, v15

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, v22

    move v3, v13

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .end local v12           #clen:I
    .end local v13           #en:I
    .end local v16           #oen:I
    .end local v17           #ost:I
    .end local v22           #st:I
    :cond_6
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_0

    .restart local v12       #clen:I
    .restart local v13       #en:I
    .restart local v16       #oen:I
    .restart local v17       #ost:I
    .restart local v22       #st:I
    :cond_7
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .end local v12           #clen:I
    .end local v13           #en:I
    .end local v16           #oen:I
    .end local v17           #ost:I
    .end local v22           #st:I
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->moveGapTo(I)V

    sub-int v5, p6, p5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v6, v0

    sub-int v7, p3, p2

    add-int/2addr v6, v7

    if-lt v5, v6, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object v5, v0

    array-length v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v6, v0

    sub-int/2addr v5, v6

    add-int v5, v5, p6

    sub-int v5, v5, p5

    sub-int v6, p3, p2

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v5, v0

    sub-int v6, p6, p5

    sub-int v7, p3, p2

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v5, v0

    sub-int v6, p6, p5

    sub-int v7, p3, p2

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v5, v0

    const/4 v6, 0x1

    if-ge v5, v6, :cond_b

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "mGapLength < 1"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object v5, v0

    move-object/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    move-object v3, v5

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    move-object/from16 v0, p4

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-eqz v5, :cond_f

    move-object/from16 v0, p4

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v20, v0

    .local v20, sp:Landroid/text/Spanned;
    const-class v5, Ljava/lang/Object;

    move-object/from16 v0, v20

    move/from16 v1, p5

    move/from16 v2, p6

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    .local v21, spans:[Ljava/lang/Object;
    const/4 v15, 0x0

    :goto_3
    move-object/from16 v0, v21

    array-length v0, v0

    move v5, v0

    if-ge v15, v5, :cond_f

    aget-object v5, v21, v15

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v22

    .restart local v22       #st:I
    aget-object v5, v21, v15

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    .restart local v13       #en:I
    move/from16 v0, v22

    move/from16 v1, p5

    if-ge v0, v1, :cond_c

    move/from16 v22, p5

    :cond_c
    move v0, v13

    move/from16 v1, p6

    if-le v0, v1, :cond_d

    move/from16 v13, p6

    :cond_d
    aget-object v5, v21, v15

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_e

    const/4 v6, 0x0

    aget-object v7, v21, v15

    sub-int v5, v22, p5

    add-int v8, v5, p2

    sub-int v5, v13, p5

    add-int v9, v5, p2

    aget-object v5, v21, v15

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v10

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .end local v13           #en:I
    .end local v20           #sp:Landroid/text/Spanned;
    .end local v21           #spans:[Ljava/lang/Object;
    .end local v22           #st:I
    :cond_f
    move/from16 v0, p6

    move/from16 v1, p5

    if-le v0, v1, :cond_11

    sub-int v5, p3, p2

    if-nez v5, :cond_11

    if-eqz p1, :cond_10

    sub-int v5, p3, p2

    sub-int v6, p6, p5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p2

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->sendTextChange([Landroid/text/TextWatcher;III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->sendTextHasChanged([Landroid/text/TextWatcher;)V

    :cond_10
    :goto_4
    return v19

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object v6, v0

    array-length v6, v6

    if-ne v5, v6, :cond_17

    const/4 v5, 0x1

    move v11, v5

    .local v11, atend:Z
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v15, v5, v6

    :goto_6
    if-ltz v15, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v5, v0

    aget v5, v5, v15

    move v0, v5

    move/from16 v1, p2

    if-lt v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v5, v0

    aget v5, v5, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v7, v0

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    move-object v5, v0

    aget v5, v5, v15

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v14, v5, 0x4

    .local v14, flag:I
    const/4 v5, 0x2

    if-eq v14, v5, :cond_12

    const/4 v5, 0x3

    if-ne v14, v5, :cond_18

    if-eqz v11, :cond_18

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v7, v0

    add-int/2addr v6, v7

    aput v6, v5, v15

    .end local v14           #flag:I
    :cond_13
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v5, v0

    aget v5, v5, v15

    move v0, v5

    move/from16 v1, p2

    if-lt v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v5, v0

    aget v5, v5, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v7, v0

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    move-object v5, v0

    aget v5, v5, v15

    and-int/lit8 v14, v5, 0xf

    .restart local v14       #flag:I
    const/4 v5, 0x2

    if-eq v14, v5, :cond_14

    const/4 v5, 0x3

    if-ne v14, v5, :cond_19

    if-eqz v11, :cond_19

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v7, v0

    add-int/2addr v6, v7

    aput v6, v5, v15

    .end local v14           #flag:I
    :cond_15
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v5, v0

    aget v5, v5, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v6, v0

    aget v6, v6, v15

    if-ge v5, v6, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object v5, v0

    add-int/lit8 v6, v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v8, v0

    add-int/lit8 v9, v15, 0x1

    sub-int/2addr v8, v9

    invoke-static {v5, v6, v7, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v5, v0

    add-int/lit8 v6, v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v8, v0

    add-int/lit8 v9, v15, 0x1

    sub-int/2addr v8, v9

    invoke-static {v5, v6, v7, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v5, v0

    add-int/lit8 v6, v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v8, v0

    add-int/lit8 v9, v15, 0x1

    sub-int/2addr v8, v9

    invoke-static {v5, v6, v7, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    move-object v5, v0

    add-int/lit8 v6, v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v8, v0

    add-int/lit8 v9, v15, 0x1

    sub-int/2addr v8, v9

    invoke-static {v5, v6, v7, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    :cond_16
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_6

    .end local v11           #atend:Z
    :cond_17
    const/4 v5, 0x0

    move v11, v5

    goto/16 :goto_5

    .restart local v11       #atend:Z
    .restart local v14       #flag:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v5, v0

    aput p2, v5, v15

    goto/16 :goto_7

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v5, v0

    aput p2, v5, v15

    goto/16 :goto_8

    .end local v14           #flag:I
    :cond_1a
    if-eqz p1, :cond_10

    sub-int v5, p3, p2

    sub-int v6, p6, p5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p2

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->sendTextChange([Landroid/text/TextWatcher;III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->sendTextHasChanged([Landroid/text/TextWatcher;)V

    goto/16 :goto_4
.end method

.method private checkRange(Ljava/lang/String;II)V
    .locals 5
    .parameter "operation"
    .parameter "start"
    .parameter "end"

    .prologue
    const-string v4, " "

    if-ge p3, p2, :cond_0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has end before start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .local v0, len:I
    if-gt p2, v0, :cond_1

    if-le p3, v0, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ends beyond length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-ltz p2, :cond_3

    if-gez p3, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " starts before 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    return-void
.end method

.method private isprint(C)Z
    .locals 1
    .parameter "c"

    .prologue
    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveGapTo(I)V
    .locals 12
    .parameter "where"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne p1, v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-ne p1, v6, :cond_5

    const/4 v6, 0x1

    move v0, v6

    .local v0, atend:Z
    :goto_1
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ge p1, v6, :cond_6

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v4, v6, p1

    .local v4, overlap:I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v8, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v9, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v8, v9

    sub-int/2addr v8, v4

    invoke-static {v6, p1, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v3, v6, :cond_b

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v5, v6, v3

    .local v5, start:I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v6, v3

    .local v1, end:I
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v6, :cond_1

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v6

    :cond_1
    if-le v5, p1, :cond_7

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    :cond_2
    :goto_4
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v6, :cond_3

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v6

    :cond_3
    if-le v1, p1, :cond_9

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v6

    :cond_4
    :goto_5
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v5, v6, v3

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v1, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v0           #atend:Z
    .end local v1           #end:I
    .end local v3           #i:I
    .end local v4           #overlap:I
    .end local v5           #start:I
    :cond_5
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1

    .restart local v0       #atend:Z
    :cond_6
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v4, p1, v6

    .restart local v4       #overlap:I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v7, p1

    sub-int/2addr v7, v4

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v9, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    invoke-static {v6, v7, v8, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .restart local v1       #end:I
    .restart local v3       #i:I
    .restart local v5       #start:I
    :cond_7
    if-ne v5, p1, :cond_2

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v3

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v2, v6, 0x4

    .local v2, flag:I
    if-eq v2, v10, :cond_8

    if-eqz v0, :cond_2

    if-ne v2, v11, :cond_2

    :cond_8
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    goto :goto_4

    .end local v2           #flag:I
    :cond_9
    if-ne v1, p1, :cond_4

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v3

    and-int/lit8 v2, v6, 0xf

    .restart local v2       #flag:I
    if-eq v2, v10, :cond_a

    if-eqz v0, :cond_4

    if-ne v2, v11, :cond_4

    :cond_a
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v6

    goto :goto_5

    .end local v1           #end:I
    .end local v2           #flag:I
    .end local v5           #start:I
    :cond_b
    iput p1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    goto/16 :goto_0
.end method

.method private static region(II)Ljava/lang/String;
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private resizeFor(I)V
    .locals 9
    .parameter "size"

    .prologue
    const/4 v8, 0x0

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v2

    .local v2, newlen:I
    new-array v3, v2, [C

    .local v3, newtext:[C
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v5, v5

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v6, v7

    sub-int v0, v5, v6

    .local v0, after:I
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    invoke-static {v5, v8, v3, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v6, v6

    sub-int/2addr v6, v0

    sub-int v7, v2, v0

    invoke-static {v5, v6, v3, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v5, v5, v1

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v6, :cond_0

    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v6, v5, v1

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v7, v7

    sub-int v7, v2, v7

    add-int/2addr v6, v7

    aput v6, v5, v1

    :cond_0
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v5, v5, v1

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v6, :cond_1

    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v6, v5, v1

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v7, v7

    sub-int v7, v2, v7

    add-int/2addr v6, v7

    aput v6, v5, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v4, v5

    .local v4, oldlen:I
    iput-object v3, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v6, v6

    sub-int/2addr v6, v4

    add-int/2addr v5, v6

    iput v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_3

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "mGapLength < 1"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .locals 4
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    const-class v3, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpanWatcher;

    .local v2, recip:[Landroid/text/SpanWatcher;
    array-length v1, v2

    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, v2, v0

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .locals 10
    .parameter "what"
    .parameter "s"
    .parameter "e"
    .parameter "st"
    .parameter "en"

    .prologue
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-class v2, Landroid/text/SpanWatcher;

    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/SpanWatcher;

    .local v9, recip:[Landroid/text/SpanWatcher;
    array-length v8, v9

    .local v8, n:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v0, v9, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .locals 4
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    const-class v3, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpanWatcher;

    .local v2, recip:[Landroid/text/SpanWatcher;
    array-length v1, v2

    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, v2, v0

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendTextChange([Landroid/text/TextWatcher;III)V
    .locals 3
    .parameter "recip"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    array-length v1, p1

    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendTextHasChanged([Landroid/text/TextWatcher;)V
    .locals 3
    .parameter "recip"

    .prologue
    array-length v1, p1

    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-interface {v2, p0}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendTextWillChange(III)[Landroid/text/TextWatcher;
    .locals 5
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    add-int v3, p1, p2

    const-class v4, Landroid/text/TextWatcher;

    invoke-virtual {p0, p1, v3, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/TextWatcher;

    .local v2, recip:[Landroid/text/TextWatcher;
    array-length v1, v2

    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, v2, v0

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private setSpan(ZLjava/lang/Object;III)V
    .locals 21
    .parameter "send"
    .parameter "what"
    .parameter "start"
    .parameter "end"
    .parameter "flags"

    .prologue
    move/from16 v9, p3

    .local v9, nstart:I
    move/from16 v10, p4

    .local v10, nend:I
    const-string v5, "setSpan"

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    move/from16 v0, p5

    and-int/lit16 v0, v0, 0xf0

    move v5, v0

    const/16 v6, 0x30

    if-ne v5, v6, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    move/from16 v0, p3

    move v1, v5

    if-eq v0, v1, :cond_0

    const/4 v5, 0x1

    sub-int v5, p3, v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v11

    .local v11, c:C
    const/16 v5, 0xa

    if-eq v11, v5, :cond_0

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "PARAGRAPH span must start at paragraph boundary"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v11           #c:C
    :cond_0
    and-int/lit8 v5, p5, 0xf

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    move/from16 v0, p4

    move v1, v5

    if-eq v0, v1, :cond_1

    const/4 v5, 0x1

    sub-int v5, p4, v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v11

    .restart local v11       #c:C
    const/16 v5, 0xa

    if-eq v11, v5, :cond_1

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "PARAGRAPH span must end at paragraph boundary"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v11           #c:C
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v5, v0

    move/from16 v0, p3

    move v1, v5

    if-le v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v5, v0

    add-int p3, p3, v5

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v5, v0

    move/from16 v0, p4

    move v1, v5

    if-le v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v5, v0

    add-int p4, p4, v5

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v12, v0

    .local v12, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object/from16 v20, v0

    .local v20, spans:[Ljava/lang/Object;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    if-ge v14, v12, :cond_c

    aget-object v5, v20, v14

    move-object v0, v5

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v5, v0

    aget v7, v5, v14

    .local v7, ostart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v5, v0

    aget v8, v5, v14

    .local v8, oend:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v5, v0

    if-le v7, v5, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v5, v0

    sub-int/2addr v7, v5

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v5, v0

    if-le v8, v5, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v5, v0

    sub-int/2addr v8, v5

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v5, v0

    aput p3, v5, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v5, v0

    aput p4, v5, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    move-object v5, v0

    aput p5, v5, v14

    if-eqz p1, :cond_6

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    .end local v7           #ostart:I
    .end local v8           #oend:I
    :cond_6
    :goto_3
    return-void

    .end local v12           #count:I
    .end local v14           #i:I
    .end local v20           #spans:[Ljava/lang/Object;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v5, v0

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_2

    move/from16 v0, p5

    and-int/lit16 v0, v0, 0xf0

    move v5, v0

    shr-int/lit8 v13, v5, 0x4

    .local v13, flag:I
    const/4 v5, 0x2

    if-eq v13, v5, :cond_8

    const/4 v5, 0x3

    if-ne v13, v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_2

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v5, v0

    add-int p3, p3, v5

    goto/16 :goto_0

    .end local v13           #flag:I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v5, v0

    move/from16 v0, p4

    move v1, v5

    if-ne v0, v1, :cond_3

    and-int/lit8 v13, p5, 0xf

    .restart local v13       #flag:I
    const/4 v5, 0x2

    if-eq v13, v5, :cond_a

    const/4 v5, 0x3

    if-ne v13, v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    move/from16 v0, p4

    move v1, v5

    if-ne v0, v1, :cond_3

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v5, v0

    add-int p4, p4, v5

    goto/16 :goto_1

    .end local v13           #flag:I
    .restart local v12       #count:I
    .restart local v14       #i:I
    .restart local v20       #spans:[Ljava/lang/Object;
    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object v6, v0

    array-length v6, v6

    if-lt v5, v6, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v15

    .local v15, newsize:I
    move v0, v15

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .local v18, newspans:[Ljava/lang/Object;
    move v0, v15

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .local v19, newspanstarts:[I
    move v0, v15

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .local v16, newspanends:[I
    move v0, v15

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .local v17, newspanflags:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v8, v0

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v18

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v8, v0

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v19

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v8, v0

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v16

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v8, v0

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v17

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .end local v15           #newsize:I
    .end local v16           #newspanends:[I
    .end local v17           #newspanflags:[I
    .end local v18           #newspans:[Ljava/lang/Object;
    .end local v19           #newspanstarts:[I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v6, v0

    aput-object p2, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v6, v0

    aput p3, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v6, v0

    aput p4, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v6, v0

    aput p5, v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-eqz p1, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v9

    move v3, v10

    invoke-direct {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    goto/16 :goto_3
.end method

.method public static valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .parameter "source"

    .prologue
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/text/SpannableStringBuilder;

    .end local p0
    move-object v0, p0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic append(C)Landroid/text/Editable;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Landroid/text/SpannableStringBuilder;
    .locals 1
    .parameter "text"

    .prologue
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6
    .parameter "text"

    .prologue
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .local v1, length:I
    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 6
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .local v1, length:I
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public charAt(I)C
    .locals 5
    .parameter "where"

    .prologue
    const-string v4, "charAt: "

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .local v0, len:I
    if-gez p1, :cond_0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charAt: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-lt p1, v0, :cond_1

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charAt: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v1, :cond_2

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, p1

    aget-char v1, v1, v2

    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    aget-char v1, v1, p1

    goto :goto_0
.end method

.method public clear()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string v3, ""

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public clearSpans()V
    .locals 6

    .prologue
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v5, 0x1

    sub-int v0, v4, v5

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v4, v0

    .local v3, what:Ljava/lang/Object;
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v4, v0

    .local v2, ostart:I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v4, v0

    .local v1, oend:I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_0

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v4

    :cond_0
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v4, :cond_1

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v4

    :cond_1
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v0

    invoke-direct {p0, v3, v2, v1}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1           #oend:I
    .end local v2           #ostart:I
    .end local v3           #what:Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public bridge synthetic delete(II)Landroid/text/Editable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public delete(II)Landroid/text/SpannableStringBuilder;
    .locals 7
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    const-string v3, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .local v6, ret:Landroid/text/SpannableStringBuilder;
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    :cond_0
    return-object v6
.end method

.method public drawText(Landroid/graphics/Canvas;IIFFLandroid/graphics/Paint;)V
    .locals 7
    .parameter "c"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "y"
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    const-string v0, "drawText"

    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p3, v0, :cond_0

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v3, p3, p2

    move-object v0, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p2, v0, :cond_1

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p2, v0

    sub-int v3, p3, p2

    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .local v1, buf:[C
    invoke-virtual {p0, p2, p3, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    sub-int v3, p3, p2

    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public getChars(II[CI)V
    .locals 4
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "destoff"

    .prologue
    const-string v0, "getChars"

    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v1, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v2, p1

    add-int/2addr v2, p4

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v3, p2, v3

    invoke-static {v0, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 5
    .parameter "what"

    .prologue
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .local v0, count:I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .local v2, spans:[Ljava/lang/Object;
    const/4 v4, 0x1

    sub-int v1, v0, v4

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    aget-object v4, v2, v1

    if-ne v4, p1, :cond_1

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v4, v1

    .local v3, where:I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_0

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    :cond_0
    move v4, v3

    .end local v3           #where:I
    :goto_1
    return v4

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 4
    .parameter "what"

    .prologue
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .local v0, count:I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .local v2, spans:[Ljava/lang/Object;
    const/4 v3, 0x1

    sub-int v1, v0, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    aget-object v3, v2, v1

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v3, v3, v1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 5
    .parameter "what"

    .prologue
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .local v0, count:I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .local v2, spans:[Ljava/lang/Object;
    const/4 v4, 0x1

    sub-int v1, v0, v4

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    aget-object v4, v2, v1

    if-ne v4, p1, :cond_1

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v3, v4, v1

    .local v3, where:I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_0

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    :cond_0
    move v4, v3

    .end local v3           #where:I
    :goto_1
    return v4

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 26
    .parameter "queryStart"
    .parameter "queryEnd"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p3, kind:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v18, v0

    .local v18, spanCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object/from16 v21, v0

    .local v21, spans:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object/from16 v22, v0

    .local v22, starts:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v7, v0

    .local v7, ends:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    move-object v8, v0

    .local v8, flags:[I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v10, v0

    .local v10, gapstart:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v9, v0

    .local v9, gaplen:I
    const/4 v5, 0x0

    .local v5, count:I
    const/16 v16, 0x0

    .local v16, ret:[Ljava/lang/Object;
    const/16 v17, 0x0

    .local v17, ret1:Ljava/lang/Object;
    const/4 v11, 0x0

    .local v11, i:I
    move-object/from16 v23, v17

    move v6, v5

    .end local v5           #count:I
    .end local v17           #ret1:Ljava/lang/Object;
    .local v6, count:I
    :goto_0
    move v0, v11

    move/from16 v1, v18

    if-ge v0, v1, :cond_e

    aget v20, v22, v11

    .local v20, spanStart:I
    aget v19, v7, v11

    .local v19, spanEnd:I
    move/from16 v0, v20

    move v1, v10

    if-le v0, v1, :cond_0

    sub-int v20, v20, v9

    :cond_0
    move/from16 v0, v19

    move v1, v10

    if-le v0, v1, :cond_1

    sub-int v19, v19, v9

    :cond_1
    move/from16 v0, v20

    move/from16 v1, p2

    if-le v0, v1, :cond_2

    move v5, v6

    .end local v6           #count:I
    .restart local v5       #count:I
    :goto_1
    add-int/lit8 v11, v11, 0x1

    move v6, v5

    .end local v5           #count:I
    .restart local v6       #count:I
    goto :goto_0

    :cond_2
    move/from16 v0, v19

    move/from16 v1, p1

    if-ge v0, v1, :cond_3

    move v5, v6

    .end local v6           #count:I
    .restart local v5       #count:I
    goto :goto_1

    .end local v5           #count:I
    .restart local v6       #count:I
    :cond_3
    move/from16 v0, v20

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_5

    move/from16 v0, v20

    move/from16 v1, p2

    if-ne v0, v1, :cond_4

    move v5, v6

    .end local v6           #count:I
    .restart local v5       #count:I
    goto :goto_1

    .end local v5           #count:I
    .restart local v6       #count:I
    :cond_4
    move/from16 v0, v19

    move/from16 v1, p1

    if-ne v0, v1, :cond_5

    move v5, v6

    .end local v6           #count:I
    .restart local v5       #count:I
    goto :goto_1

    .end local v5           #count:I
    .restart local v6       #count:I
    :cond_5
    if-eqz p3, :cond_6

    aget-object v24, v21, v11

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_6

    move v5, v6

    .end local v6           #count:I
    .restart local v5       #count:I
    goto :goto_1

    .end local v5           #count:I
    .restart local v6       #count:I
    :cond_6
    const-class v24, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_7

    const-class v24, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;

    aget-object v25, v21, v11

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_12

    :cond_7
    const-class v24, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_8

    const-class v24, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;

    aget-object v25, v21, v11

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    move v5, v6

    .end local v6           #count:I
    .restart local v5       #count:I
    goto :goto_1

    .end local v5           #count:I
    .restart local v6       #count:I
    :cond_8
    if-nez v6, :cond_9

    aget-object v17, v21, v11

    .restart local v17       #ret1:Ljava/lang/Object;
    add-int/lit8 v5, v6, 0x1

    .end local v6           #count:I
    .restart local v5       #count:I
    move-object/from16 v23, v17

    goto :goto_1

    .end local v5           #count:I
    .end local v17           #ret1:Ljava/lang/Object;
    .restart local v6       #count:I
    :cond_9
    const/16 v24, 0x1

    move v0, v6

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    sub-int v24, v18, v11

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v24, 0x0

    aput-object v23, v16, v24

    :cond_a
    aget v24, v8, v11

    const/high16 v25, 0xff

    and-int v15, v24, v25

    .local v15, prio:I
    if-eqz v15, :cond_d

    const/4 v12, 0x0

    .local v12, j:I
    :goto_2
    if-ge v12, v6, :cond_b

    aget-object v24, v16, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v24

    const/high16 v25, 0xff

    and-int v14, v24, v25

    .local v14, p:I
    if-le v15, v14, :cond_c

    .end local v14           #p:I
    :cond_b
    add-int/lit8 v24, v12, 0x1

    sub-int v25, v6, v12

    move-object/from16 v0, v16

    move v1, v12

    move-object/from16 v2, v16

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v24, v21, v11

    aput-object v24, v16, v12

    add-int/lit8 v5, v6, 0x1

    .end local v6           #count:I
    .restart local v5       #count:I
    goto/16 :goto_1

    .end local v5           #count:I
    .restart local v6       #count:I
    .restart local v14       #p:I
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .end local v12           #j:I
    .end local v14           #p:I
    :cond_d
    add-int/lit8 v5, v6, 0x1

    .end local v6           #count:I
    .restart local v5       #count:I
    aget-object v24, v21, v11

    aput-object v24, v16, v6

    goto/16 :goto_1

    .end local v5           #count:I
    .end local v15           #prio:I
    .end local v19           #spanEnd:I
    .end local v20           #spanStart:I
    .restart local v6       #count:I
    :cond_e
    if-nez v6, :cond_f

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object/from16 v23, p0

    :goto_3
    return-object v23

    .restart local p0
    :cond_f
    const/16 v24, 0x1

    move v0, v6

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    const/16 v24, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object/from16 v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v24, 0x0

    aput-object v23, v16, v24

    move-object/from16 v0, v16

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v23, v17

    goto :goto_3

    .restart local p0
    :cond_10
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    move v0, v6

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    move-object/from16 v0, v16

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v23, v17

    goto :goto_3

    :cond_11
    move-object/from16 v0, p3

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object/from16 v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v13, v0

    .local v13, nret:[Ljava/lang/Object;
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    move-object v2, v13

    move/from16 v3, v24

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    check-cast v13, [Ljava/lang/Object;

    .end local v13           #nret:[Ljava/lang/Object;
    move-object/from16 v23, v13

    goto :goto_3

    .restart local v19       #spanEnd:I
    .restart local v20       #spanStart:I
    .restart local p0
    :cond_12
    move v5, v6

    .end local v6           #count:I
    .restart local v5       #count:I
    goto/16 :goto_1
.end method

.method public getTextWidths(II[FLandroid/graphics/Paint;)I
    .locals 5
    .parameter "start"
    .parameter "end"
    .parameter "widths"
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    const-string v2, "getTextWidths"

    invoke-direct {p0, v2, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v2, :cond_0

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v3, p2, p1

    invoke-virtual {p4, v2, p1, v3, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .local v1, ret:I
    :goto_0
    return v1

    .end local v1           #ret:I
    :cond_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v2, :cond_1

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, p1

    sub-int v4, p2, p1

    invoke-virtual {p4, v2, v3, v4, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .restart local v1       #ret:I
    goto :goto_0

    .end local v1           #ret:I
    :cond_1
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .local v0, buf:[C
    invoke-virtual {p0, p1, p2, v0, v3}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    sub-int v2, p2, p1

    invoke-virtual {p4, v0, v3, v2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .restart local v1       #ret:I
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6
    .parameter "where"
    .parameter "tb"

    .prologue
    const/4 v4, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 6
    .parameter "where"
    .parameter "tb"
    .parameter "start"
    .parameter "end"

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public measureText(IILandroid/graphics/Paint;)F
    .locals 5
    .parameter "start"
    .parameter "end"
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    const-string v2, "measureText"

    invoke-direct {p0, v2, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v2, :cond_0

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v3, p2, p1

    invoke-virtual {p3, v2, p1, v3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .local v1, ret:F
    :goto_0
    return v1

    .end local v1           #ret:F
    :cond_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v2, :cond_1

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, p1

    sub-int v4, p2, p1

    invoke-virtual {p3, v2, v3, v4}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .restart local v1       #ret:F
    goto :goto_0

    .end local v1           #ret:F
    :cond_1
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .local v0, buf:[C
    invoke-virtual {p0, p1, p2, v0, v3}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    sub-int v2, p2, p1

    invoke-virtual {p3, v0, v3, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .restart local v1       #ret:F
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 12
    .parameter "start"
    .parameter "limit"
    .parameter "kind"

    .prologue
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .local v0, count:I
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .local v7, spans:[Ljava/lang/Object;
    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .local v9, starts:[I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .local v2, ends:[I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .local v4, gapstart:I
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .local v3, gaplen:I
    const/4 v6, 0x0

    .local v6, includeSpellCheckerMarkupSpans:Z
    if-nez p3, :cond_3

    const-class p3, Ljava/lang/Object;

    :cond_0
    :goto_0
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v0, :cond_8

    if-nez v6, :cond_1

    const-class v10, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;

    aget-object v11, v7, v5

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    :cond_1
    const-class v10, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;

    aget-object v11, v7, v5

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v5           #i:I
    :cond_3
    const-class v10, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;

    if-ne p3, v10, :cond_0

    const-class p3, Landroid/text/style/CharacterStyle;

    const/4 v6, 0x1

    goto :goto_0

    .restart local v5       #i:I
    :cond_4
    aget v8, v9, v5

    .local v8, st:I
    aget v1, v2, v5

    .local v1, en:I
    if-le v8, v4, :cond_5

    sub-int/2addr v8, v3

    :cond_5
    if-le v1, v4, :cond_6

    sub-int/2addr v1, v3

    :cond_6
    if-le v8, p1, :cond_7

    if-ge v8, p2, :cond_7

    aget-object v10, v7, v5

    invoke-virtual {p3, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    move p2, v8

    :cond_7
    if-le v1, p1, :cond_2

    if-ge v1, p2, :cond_2

    aget-object v10, v7, v5

    invoke-virtual {p3, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move p2, v1

    goto :goto_2

    .end local v1           #en:I
    .end local v8           #st:I
    :cond_8
    return p2
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .locals 8
    .parameter "what"

    .prologue
    const/4 v7, 0x1

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    sub-int v1, v4, v7

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v4, v4, v1

    if-ne v4, p1, :cond_3

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v3, v4, v1

    .local v3, ostart:I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v4, v1

    .local v2, oend:I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_0

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    :cond_0
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_1

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v4

    :cond_1
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v5, v1, 0x1

    sub-int v0, v4, v5

    .local v0, count:I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    invoke-static {v4, v5, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    invoke-static {v4, v5, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    invoke-static {v4, v5, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    invoke-static {v4, v5, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    sub-int/2addr v4, v7

    iput v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-direct {p0, p1, v3, v2}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    .end local v0           #count:I
    .end local v2           #oend:I
    .end local v3           #ostart:I
    :cond_2
    return-void

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    invoke-virtual/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6
    .parameter "start"
    .parameter "end"
    .parameter "tb"

    .prologue
    const/4 v4, 0x0

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 25
    .parameter "start"
    .parameter "end"
    .parameter "tb"
    .parameter "tbstart"
    .parameter "tbend"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    move-object v5, v0

    array-length v15, v5

    .local v15, filtercount:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    move v1, v15

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    move-object v5, v0

    aget-object v5, v5, v16

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    invoke-interface/range {v5 .. v11}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v23

    .local v23, repl:Ljava/lang/CharSequence;
    if-eqz v23, :cond_0

    move-object/from16 p3, v23

    const/16 p4, 0x0

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->length()I

    move-result p5

    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .end local v23           #repl:Ljava/lang/CharSequence;
    :cond_1
    move/from16 v0, p2

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_2

    :goto_1
    return-object p0

    :cond_2
    move/from16 v0, p2

    move/from16 v1, p1

    if-eq v0, v1, :cond_3

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-direct/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->change(IILjava/lang/CharSequence;II)I

    goto :goto_1

    :cond_4
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v24

    .local v24, selstart:I
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v12

    .local v12, selend:I
    const-string v5, "replace"

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->moveGapTo(I)V

    sub-int v5, p2, p1

    sub-int v6, p5, p4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->sendTextWillChange(III)[Landroid/text/TextWatcher;

    move-result-object v22

    .local v22, recipients:[Landroid/text/TextWatcher;
    sub-int v21, p2, p1

    .local v21, origlen:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v5, v0

    const/4 v6, 0x2

    if-ge v5, v6, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v16, v5, v6

    :goto_2
    if-ltz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v5, v0

    aget v5, v5, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v6, v0

    if-ne v5, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object v5, v0

    aget v6, v5, v16

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v16

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v5, v0

    aget v5, v5, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v6, v0

    if-ne v5, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object v5, v0

    aget v6, v5, v16

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v16

    :cond_7
    add-int/lit8 v16, v16, -0x1

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v6, v0

    const/16 v7, 0x20

    aput-char v7, v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move v5, v0

    const/4 v6, 0x1

    if-ge v5, v6, :cond_9

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "mGapLength < 1"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    add-int/lit8 v5, p2, 0x1

    sub-int v20, v5, p1

    .local v20, oldlen:I
    const/4 v6, 0x0

    add-int/lit8 v7, p1, 0x1

    add-int/lit8 v8, p1, 0x1

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v5 .. v11}, Landroid/text/SpannableStringBuilder;->change(ZIILjava/lang/CharSequence;II)I

    move-result v17

    .local v17, inserted:I
    const/4 v6, 0x0

    add-int/lit8 v8, p1, 0x1

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move/from16 v7, p1

    invoke-direct/range {v5 .. v11}, Landroid/text/SpannableStringBuilder;->change(ZIILjava/lang/CharSequence;II)I

    const/4 v6, 0x0

    add-int v7, p1, v17

    add-int v5, p1, v17

    add-int v5, v5, v20

    const/4 v8, 0x1

    sub-int v8, v5, v8

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Landroid/text/SpannableStringBuilder;->change(ZIILjava/lang/CharSequence;II)I

    move/from16 v0, v24

    move/from16 v1, p1

    if-le v0, v1, :cond_b

    move/from16 v0, v24

    move/from16 v1, p2

    if-ge v0, v1, :cond_b

    sub-int v5, v24, p1

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .local v18, off:J
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide v5, v0

    mul-long v5, v5, v18

    sub-int v7, p2, p1

    int-to-long v7, v7

    div-long v18, v5, v7

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move v5, v0

    add-int v8, v5, p1

    .end local v24           #selstart:I
    .local v8, selstart:I
    const/4 v6, 0x0

    sget-object v7, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v10, 0x22

    move-object/from16 v5, p0

    move v9, v8

    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .end local v18           #off:J
    :goto_3
    move v0, v12

    move/from16 v1, p1

    if-le v0, v1, :cond_a

    move v0, v12

    move/from16 v1, p2

    if-ge v0, v1, :cond_a

    sub-int v5, v12, p1

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .restart local v18       #off:J
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide v5, v0

    mul-long v5, v5, v18

    sub-int v7, p2, p1

    int-to-long v7, v7

    div-long v18, v5, v7

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move v5, v0

    add-int v12, v5, p1

    const/4 v10, 0x0

    sget-object v11, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v14, 0x22

    move-object/from16 v9, p0

    move v13, v12

    invoke-direct/range {v9 .. v14}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .end local v18           #off:J
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p1

    move/from16 v3, v21

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->sendTextChange([Landroid/text/TextWatcher;III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->sendTextHasChanged([Landroid/text/TextWatcher;)V

    goto/16 :goto_1

    .end local v8           #selstart:I
    .restart local v24       #selstart:I
    :cond_b
    move/from16 v8, v24

    .end local v24           #selstart:I
    .restart local v8       #selstart:I
    goto :goto_3
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1
    .parameter "filters"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 6
    .parameter "what"
    .parameter "start"
    .parameter "end"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .local v1, len:I
    new-array v0, v1, [C

    .local v0, buf:[C
    invoke-virtual {p0, v2, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method
