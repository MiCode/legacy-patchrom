.class abstract Landroid/text/SpannableStringInternal;
.super Ljava/lang/Object;
.source "SpannableStringInternal.java"


# static fields
.field private static final COLUMNS:I = 0x3

.field static final EMPTY:[Ljava/lang/Object; = null

.field private static final END:I = 0x1

.field private static final FLAGS:I = 0x2

.field private static final START:I


# instance fields
.field private mSpanCount:I

.field private mSpanData:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/SpannableStringInternal;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 11
    .parameter "source"
    .parameter "start"
    .parameter "end"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ne p3, v8, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    :goto_0
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v4

    .local v4, initial:I
    new-array v8, v4, [Ljava/lang/Object;

    iput-object v8, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    mul-int/lit8 v8, v4, 0x3

    new-array v8, v8, [I

    iput-object v8, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    instance-of v8, p1, Landroid/text/Spanned;

    if-eqz v8, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v5, v0

    .local v5, sp:Landroid/text/Spanned;
    const/4 v6, 0x0

    .local v6, spans:[Ljava/lang/Object;
    const-class v8, Ljava/lang/Object;

    invoke-static {v5, p2, p3, v8}, Lcom/motorola/spellchecker/SpellingCheckManager;->getSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v8, v6

    if-ge v3, v8, :cond_3

    aget-object v8, v6, v3

    invoke-interface {v5, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .local v7, st:I
    aget-object v8, v6, v3

    invoke-interface {v5, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .local v1, en:I
    aget-object v8, v6, v3

    invoke-interface {v5, v8}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    .local v2, fl:I
    if-ge v7, p2, :cond_0

    move v7, p2

    :cond_0
    if-le v1, p3, :cond_1

    move v1, p3

    :cond_1
    aget-object v8, v6, v3

    sub-int v9, v7, p2

    sub-int v10, v1, p2

    invoke-virtual {p0, v8, v9, v10, v2}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1           #en:I
    .end local v2           #fl:I
    .end local v3           #i:I
    .end local v4           #initial:I
    .end local v5           #sp:Landroid/text/Spanned;
    .end local v6           #spans:[Ljava/lang/Object;
    .end local v7           #st:I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    goto :goto_0

    .restart local v4       #initial:I
    :cond_3
    return-void
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

    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

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
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

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

    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

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

    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

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

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .locals 6
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    const-class v4, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v4}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/SpanWatcher;

    .local v3, recip:[Landroid/text/SpanWatcher;
    array-length v2, v3

    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v3, v1

    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    move-object v4, v0

    invoke-interface {v5, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .locals 12
    .parameter "what"
    .parameter "s"
    .parameter "e"
    .parameter "st"
    .parameter "en"

    .prologue
    move v0, p2

    move/from16 v1, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v0, p3

    move/from16 v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    const-class v4, Landroid/text/SpanWatcher;

    invoke-virtual {p0, v2, v3, v4}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/SpanWatcher;

    .local v11, recip:[Landroid/text/SpanWatcher;
    array-length v10, v11

    .local v10, n:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v2, v11, v9

    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    move-object v3, v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-interface/range {v2 .. v8}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .locals 6
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    const-class v4, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v4}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/SpanWatcher;

    .local v3, recip:[Landroid/text/SpanWatcher;
    array-length v2, v3

    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v3, v1

    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    move-object v4, v0

    invoke-interface {v5, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .locals 1
    .parameter "i"

    .prologue
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final getChars(II[CI)V
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "off"

    .prologue
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 5
    .parameter "what"

    .prologue
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .local v0, count:I
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .local v3, spans:[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .local v1, data:[I
    const/4 v4, 0x1

    sub-int v2, v0, v4

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    aget-object v4, v3, v2

    if-ne v4, p1, :cond_0

    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x1

    aget v4, v1, v4

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 5
    .parameter "what"

    .prologue
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .local v0, count:I
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .local v3, spans:[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .local v1, data:[I
    const/4 v4, 0x1

    sub-int v2, v0, v4

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    aget-object v4, v3, v2

    if-ne v4, p1, :cond_0

    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x2

    aget v4, v1, v4

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 5
    .parameter "what"

    .prologue
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .local v0, count:I
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .local v3, spans:[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .local v1, data:[I
    const/4 v4, 0x1

    sub-int v2, v0, v4

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    aget-object v4, v3, v2

    if-ne v4, p1, :cond_0

    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x0

    aget v4, v1, v4

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 22
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
    const/4 v5, 0x0

    .local v5, count:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v15, v0

    .local v15, spanCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object/from16 v18, v0

    .local v18, spans:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object v7, v0

    .local v7, data:[I
    const/4 v13, 0x0

    .local v13, ret:[Ljava/lang/Object;
    const/4 v14, 0x0

    .local v14, ret1:Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, i:I
    move-object/from16 v19, v14

    move v6, v5

    .end local v5           #count:I
    .end local v14           #ret1:Ljava/lang/Object;
    .local v6, count:I
    :goto_0
    if-ge v8, v15, :cond_c

    mul-int/lit8 v20, v8, 0x3

    add-int/lit8 v20, v20, 0x0

    aget v17, v7, v20

    .local v17, spanStart:I
    mul-int/lit8 v20, v8, 0x3

    add-int/lit8 v20, v20, 0x1

    aget v16, v7, v20

    .local v16, spanEnd:I
    move/from16 v0, v17

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    move v5, v6

    .end local v6           #count:I
    .restart local v5       #count:I
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move v6, v5

    .end local v5           #count:I
    .restart local v6       #count:I
    goto :goto_0

    :cond_0
    move/from16 v0, v16

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    move v5, v6

    .end local v6           #count:I
    .restart local v5       #count:I
    goto :goto_1

    .end local v5           #count:I
    .restart local v6       #count:I
    :cond_1
    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_3

    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    move v5, v6

    .end local v6           #count:I
    .restart local v5       #count:I
    goto :goto_1

    .end local v5           #count:I
    .restart local v6       #count:I
    :cond_2
    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_3

    move v5, v6

    .end local v6           #count:I
    .restart local v5       #count:I
    goto :goto_1

    .end local v5           #count:I
    .restart local v6       #count:I
    :cond_3
    if-eqz p3, :cond_4

    aget-object v20, v18, v8

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    move v5, v6

    .end local v6           #count:I
    .restart local v5       #count:I
    goto :goto_1

    .end local v5           #count:I
    .restart local v6       #count:I
    :cond_4
    const-class v20, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_5

    const-class v20, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;

    aget-object v21, v18, v8

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_10

    :cond_5
    const-class v20, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_6

    const-class v20, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;

    aget-object v21, v18, v8

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    move v5, v6

    .end local v6           #count:I
    .restart local v5       #count:I
    goto :goto_1

    .end local v5           #count:I
    .restart local v6       #count:I
    :cond_6
    if-nez v6, :cond_7

    aget-object v14, v18, v8

    .restart local v14       #ret1:Ljava/lang/Object;
    add-int/lit8 v5, v6, 0x1

    .end local v6           #count:I
    .restart local v5       #count:I
    move-object/from16 v19, v14

    goto :goto_1

    .end local v5           #count:I
    .end local v14           #ret1:Ljava/lang/Object;
    .restart local v6       #count:I
    :cond_7
    const/16 v20, 0x1

    move v0, v6

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    sub-int v20, v15, v8

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object v13, v0

    const/16 v20, 0x0

    aput-object v19, v13, v20

    :cond_8
    mul-int/lit8 v20, v8, 0x3

    add-int/lit8 v20, v20, 0x2

    aget v20, v7, v20

    const/high16 v21, 0xff

    and-int v12, v20, v21

    .local v12, prio:I
    if-eqz v12, :cond_b

    const/4 v9, 0x0

    .local v9, j:I
    :goto_2
    if-ge v9, v6, :cond_9

    aget-object v20, v13, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v20

    const/high16 v21, 0xff

    and-int v11, v20, v21

    .local v11, p:I
    if-le v12, v11, :cond_a

    .end local v11           #p:I
    :cond_9
    add-int/lit8 v20, v9, 0x1

    sub-int v21, v6, v9

    move-object v0, v13

    move v1, v9

    move-object v2, v13

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v20, v18, v8

    aput-object v20, v13, v9

    add-int/lit8 v5, v6, 0x1

    .end local v6           #count:I
    .restart local v5       #count:I
    goto/16 :goto_1

    .end local v5           #count:I
    .restart local v6       #count:I
    .restart local v11       #p:I
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .end local v9           #j:I
    .end local v11           #p:I
    :cond_b
    add-int/lit8 v5, v6, 0x1

    .end local v6           #count:I
    .restart local v5       #count:I
    aget-object v20, v18, v8

    aput-object v20, v13, v6

    goto/16 :goto_1

    .end local v5           #count:I
    .end local v12           #prio:I
    .end local v16           #spanEnd:I
    .end local v17           #spanStart:I
    .restart local v6       #count:I
    :cond_c
    if-nez v6, :cond_d

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object/from16 v19, p0

    :goto_3
    return-object v19

    .restart local p0
    :cond_d
    const/16 v20, 0x1

    move v0, v6

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    const/16 v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object/from16 v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v13, v0

    const/16 v20, 0x0

    aput-object v19, v13, v20

    move-object v0, v13

    check-cast v0, [Ljava/lang/Object;

    move-object v14, v0

    move-object/from16 v19, v14

    goto :goto_3

    .restart local p0
    :cond_e
    move-object v0, v13

    array-length v0, v0

    move/from16 v19, v0

    move v0, v6

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    move-object v0, v13

    check-cast v0, [Ljava/lang/Object;

    move-object v14, v0

    move-object/from16 v19, v14

    goto :goto_3

    :cond_f
    move-object/from16 v0, p3

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object/from16 v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v10, v0

    .local v10, nret:[Ljava/lang/Object;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v13

    move/from16 v1, v19

    move-object v2, v10

    move/from16 v3, v20

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    check-cast v10, [Ljava/lang/Object;

    .end local v10           #nret:[Ljava/lang/Object;
    move-object/from16 v19, v10

    goto :goto_3

    .restart local v16       #spanEnd:I
    .restart local v17       #spanStart:I
    .restart local p0
    :cond_10
    move v5, v6

    .end local v6           #count:I
    .restart local v5       #count:I
    goto/16 :goto_1
.end method

.method public final length()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 10
    .parameter "start"
    .parameter "limit"
    .parameter "kind"

    .prologue
    const-class v9, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;

    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .local v0, count:I
    iget-object v5, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .local v5, spans:[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .local v1, data:[I
    const/4 v4, 0x0

    .local v4, includeSpellCheckerMarkupSpans:Z
    if-nez p3, :cond_3

    const-class p3, Ljava/lang/Object;

    :cond_0
    :goto_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_6

    if-nez v4, :cond_1

    const-class v7, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;

    aget-object v7, v5, v3

    invoke-virtual {v9, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    const-class v7, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;

    aget-object v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3           #i:I
    :cond_3
    const-class v7, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;

    if-ne p3, v9, :cond_0

    const-class p3, Landroid/text/style/CharacterStyle;

    const/4 v4, 0x1

    goto :goto_0

    .restart local v3       #i:I
    :cond_4
    mul-int/lit8 v7, v3, 0x3

    add-int/lit8 v7, v7, 0x0

    aget v6, v1, v7

    .local v6, st:I
    mul-int/lit8 v7, v3, 0x3

    add-int/lit8 v7, v7, 0x1

    aget v2, v1, v7

    .local v2, en:I
    if-le v6, p1, :cond_5

    if-ge v6, p2, :cond_5

    aget-object v7, v5, v3

    invoke-virtual {p3, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move p2, v6

    :cond_5
    if-le v2, p1, :cond_2

    if-ge v2, p2, :cond_2

    aget-object v7, v5, v3

    invoke-virtual {p3, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move p2, v2

    goto :goto_2

    .end local v2           #en:I
    .end local v6           #st:I
    :cond_6
    return p2
.end method

.method removeSpan(Ljava/lang/Object;)V
    .locals 11
    .parameter "what"

    .prologue
    const/4 v10, 0x1

    iget v1, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .local v1, count:I
    iget-object v6, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .local v6, spans:[Ljava/lang/Object;
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .local v2, data:[I
    sub-int v3, v1, v10

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_0

    aget-object v7, v6, v3

    if-ne v7, p1, :cond_1

    mul-int/lit8 v7, v3, 0x3

    add-int/lit8 v7, v7, 0x0

    aget v5, v2, v7

    .local v5, ostart:I
    mul-int/lit8 v7, v3, 0x3

    add-int/lit8 v7, v7, 0x1

    aget v4, v2, v7

    .local v4, oend:I
    add-int/lit8 v7, v3, 0x1

    sub-int v0, v1, v7

    .local v0, c:I
    add-int/lit8 v7, v3, 0x1

    invoke-static {v6, v7, v6, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v3, 0x1

    mul-int/lit8 v7, v7, 0x3

    mul-int/lit8 v8, v3, 0x3

    mul-int/lit8 v9, v0, 0x3

    invoke-static {v2, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    sub-int/2addr v7, v10

    iput v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    invoke-direct {p0, p1, v5, v4}, Landroid/text/SpannableStringInternal;->sendSpanRemoved(Ljava/lang/Object;II)V

    .end local v0           #c:I
    .end local v4           #oend:I
    .end local v5           #ostart:I
    :cond_0
    return-void

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method setSpan(Ljava/lang/Object;III)V
    .locals 19
    .parameter "what"
    .parameter "start"
    .parameter "end"
    .parameter "flags"

    .prologue
    move/from16 v9, p2

    .local v9, nstart:I
    move/from16 v10, p3

    .local v10, nend:I
    const-string v5, "setSpan"

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/SpannableStringInternal;->checkRange(Ljava/lang/String;II)V

    and-int/lit8 v5, p4, 0x33

    const/16 v6, 0x33

    if-ne v5, v6, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v5

    move/from16 v0, p2

    move v1, v5

    if-eq v0, v1, :cond_0

    const/4 v5, 0x1

    sub-int v5, p2, v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v11

    .local v11, c:C
    const/16 v5, 0xa

    if-eq v11, v5, :cond_0

    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PARAGRAPH span must start at paragraph boundary ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " follows "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v11           #c:C
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v5

    move/from16 v0, p3

    move v1, v5

    if-eq v0, v1, :cond_1

    const/4 v5, 0x1

    sub-int v5, p3, v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v11

    .restart local v11       #c:C
    const/16 v5, 0xa

    if-eq v11, v5, :cond_1

    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PARAGRAPH span must end at paragraph boundary ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " follows "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v11           #c:C
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v12, v0

    .local v12, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object/from16 v18, v0

    .local v18, spans:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object v13, v0

    .local v13, data:[I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-ge v14, v12, :cond_4

    aget-object v5, v18, v14

    move-object v0, v5

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_3

    mul-int/lit8 v5, v14, 0x3

    add-int/lit8 v5, v5, 0x0

    aget v7, v13, v5

    .local v7, ostart:I
    mul-int/lit8 v5, v14, 0x3

    add-int/lit8 v5, v5, 0x1

    aget v8, v13, v5

    .local v8, oend:I
    mul-int/lit8 v5, v14, 0x3

    add-int/lit8 v5, v5, 0x0

    aput p2, v13, v5

    mul-int/lit8 v5, v14, 0x3

    add-int/lit8 v5, v5, 0x1

    aput p3, v13, v5

    mul-int/lit8 v5, v14, 0x3

    add-int/lit8 v5, v5, 0x2

    aput p4, v13, v5

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringInternal;->sendSpanChanged(Ljava/lang/Object;IIII)V

    .end local v7           #ostart:I
    .end local v8           #oend:I
    :cond_2
    :goto_1
    return-void

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object v6, v0

    array-length v6, v6

    if-lt v5, v6, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v16

    .local v16, newsize:I
    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .local v17, newtags:[Ljava/lang/Object;
    mul-int/lit8 v5, v16, 0x3

    new-array v15, v5, [I

    .local v15, newdata:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v8, v0

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v17

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v8, v0

    mul-int/lit8 v8, v8, 0x3

    invoke-static {v5, v6, v15, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .end local v15           #newdata:[I
    .end local v16           #newsize:I
    .end local v17           #newtags:[Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v6, v0

    aput-object p1, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v6, v0

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x0

    aput p2, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v6, v0

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x1

    aput p3, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v6, v0

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x2

    aput p4, v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/text/Spannable;

    move v5, v0

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move v3, v10

    invoke-direct {v0, v1, v2, v3}, Landroid/text/SpannableStringInternal;->sendSpanAdded(Ljava/lang/Object;II)V

    goto/16 :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    return-object v0
.end method
