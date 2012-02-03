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
    .line 378
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
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p2, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ne p3, v8, :cond_2

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    .line 32
    :goto_0
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v4

    .line 33
    .local v4, initial:I
    new-array v8, v4, [Ljava/lang/Object;

    iput-object v8, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 34
    mul-int/lit8 v8, v4, 0x3

    new-array v8, v8, [I

    iput-object v8, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 36
    instance-of v8, p1, Landroid/text/Spanned;

    if-eqz v8, :cond_3

    .line 37
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v5, v0

    .line 38
    .local v5, sp:Landroid/text/Spanned;
    const-class v8, Ljava/lang/Object;

    invoke-interface {v5, p2, p3, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .line 40
    .local v6, spans:[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v8, v6

    if-ge v3, v8, :cond_3

    .line 41
    aget-object v8, v6, v3

    invoke-interface {v5, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 42
    .local v7, st:I
    aget-object v8, v6, v3

    invoke-interface {v5, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 43
    .local v1, en:I
    aget-object v8, v6, v3

    invoke-interface {v5, v8}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    .line 45
    .local v2, fl:I
    if-ge v7, p2, :cond_0

    .line 46
    move v7, p2

    .line 47
    :cond_0
    if-le v1, p3, :cond_1

    .line 48
    move v1, p3

    .line 50
    :cond_1
    aget-object v8, v6, v3

    sub-int v9, v7, p2

    sub-int v10, v1, p2

    invoke-virtual {p0, v8, v9, v10, v2}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;III)V

    .line 40
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 30
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

    .line 53
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

    .line 340
    if-ge p3, p2, :cond_0

    .line 341
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

    .line 346
    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v0

    .line 348
    .local v0, len:I
    if-gt p2, v0, :cond_1

    if-le p3, v0, :cond_2

    .line 349
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

    .line 354
    :cond_2
    if-ltz p2, :cond_3

    if-gez p3, :cond_4

    .line 355
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

    .line 359
    :cond_4
    return-void
.end method

.method private static region(II)Ljava/lang/String;
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 336
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
    .line 308
    const-class v4, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v4}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/SpanWatcher;

    .line 309
    .local v3, recip:[Landroid/text/SpanWatcher;
    array-length v2, v3

    .line 311
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 312
    aget-object v5, v3, v1

    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    move-object v4, v0

    invoke-interface {v5, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
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
    .line 326
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

    .line 328
    .local v11, recip:[Landroid/text/SpanWatcher;
    array-length v10, v11

    .line 330
    .local v10, n:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 331
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

    .line 330
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 333
    :cond_0
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .locals 6
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 317
    const-class v4, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v4}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/SpanWatcher;

    .line 318
    .local v3, recip:[Landroid/text/SpanWatcher;
    array-length v2, v3

    .line 320
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 321
    aget-object v5, v3, v1

    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    move-object v4, v0

    invoke-interface {v5, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    :cond_0
    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .locals 1
    .parameter "i"

    .prologue
    .line 60
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
    .line 70
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    .line 71
    return-void
.end method

.method getSpanCount()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    return v0
.end method

.method getSpanData()[I
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    return-object v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 5
    .parameter "what"

    .prologue
    .line 178
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 179
    .local v0, count:I
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 180
    .local v3, spans:[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 182
    .local v1, data:[I
    const/4 v4, 0x1

    sub-int v2, v0, v4

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 183
    aget-object v4, v3, v2

    if-ne v4, p1, :cond_0

    .line 184
    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x1

    aget v4, v1, v4

    .line 188
    :goto_1
    return v4

    .line 182
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 188
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 5
    .parameter "what"

    .prologue
    .line 192
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 193
    .local v0, count:I
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 194
    .local v3, spans:[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 196
    .local v1, data:[I
    const/4 v4, 0x1

    sub-int v2, v0, v4

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 197
    aget-object v4, v3, v2

    if-ne v4, p1, :cond_0

    .line 198
    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x2

    aget v4, v1, v4

    .line 202
    :goto_1
    return v4

    .line 196
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 202
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 5
    .parameter "what"

    .prologue
    .line 164
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 165
    .local v0, count:I
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 166
    .local v3, spans:[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 168
    .local v1, data:[I
    const/4 v4, 0x1

    sub-int v2, v0, v4

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 169
    aget-object v4, v3, v2

    if-ne v4, p1, :cond_0

    .line 170
    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x0

    aget v4, v1, v4

    .line 174
    :goto_1
    return v4

    .line 168
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 174
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
    .line 206
    .local p3, kind:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    .line 208
    .local v5, count:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v15, v0

    .line 209
    .local v15, spanCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 210
    .local v18, spans:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object v7, v0

    .line 211
    .local v7, data:[I
    const/4 v13, 0x0

    .line 212
    .local v13, ret:[Ljava/lang/Object;
    const/4 v14, 0x0

    .line 214
    .local v14, ret1:Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, i:I
    move-object/from16 v19, v14

    move v6, v5

    .end local v5           #count:I
    .end local v14           #ret1:Ljava/lang/Object;
    .local v6, count:I
    :goto_0
    if-ge v8, v15, :cond_a

    .line 215
    mul-int/lit8 v20, v8, 0x3

    add-int/lit8 v20, v20, 0x0

    aget v17, v7, v20

    .line 216
    .local v17, spanStart:I
    mul-int/lit8 v20, v8, 0x3

    add-int/lit8 v20, v20, 0x1

    aget v16, v7, v20

    .line 218
    .local v16, spanEnd:I
    move/from16 v0, v17

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    move v5, v6

    .line 214
    .end local v6           #count:I
    .restart local v5       #count:I
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move v6, v5

    .end local v5           #count:I
    .restart local v6       #count:I
    goto :goto_0

    .line 221
    :cond_0
    move/from16 v0, v16

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    move v5, v6

    .line 222
    .end local v6           #count:I
    .restart local v5       #count:I
    goto :goto_1

    .line 225
    .end local v5           #count:I
    .restart local v6       #count:I
    :cond_1
    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_3

    .line 226
    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    move v5, v6

    .line 227
    .end local v6           #count:I
    .restart local v5       #count:I
    goto :goto_1

    .line 229
    .end local v5           #count:I
    .restart local v6       #count:I
    :cond_2
    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_3

    move v5, v6

    .line 230
    .end local v6           #count:I
    .restart local v5       #count:I
    goto :goto_1

    .line 234
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

    .line 235
    .end local v6           #count:I
    .restart local v5       #count:I
    goto :goto_1

    .line 238
    .end local v5           #count:I
    .restart local v6       #count:I
    :cond_4
    if-nez v6, :cond_5

    .line 239
    aget-object v14, v18, v8

    .line 240
    .restart local v14       #ret1:Ljava/lang/Object;
    add-int/lit8 v5, v6, 0x1

    .end local v6           #count:I
    .restart local v5       #count:I
    move-object/from16 v19, v14

    goto :goto_1

    .line 242
    .end local v5           #count:I
    .end local v14           #ret1:Ljava/lang/Object;
    .restart local v6       #count:I
    :cond_5
    const/16 v20, 0x1

    move v0, v6

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 243
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

    .line 244
    const/16 v20, 0x0

    aput-object v19, v13, v20

    .line 247
    :cond_6
    mul-int/lit8 v20, v8, 0x3

    add-int/lit8 v20, v20, 0x2

    aget v20, v7, v20

    const/high16 v21, 0xff

    and-int v12, v20, v21

    .line 248
    .local v12, prio:I
    if-eqz v12, :cond_9

    .line 251
    const/4 v9, 0x0

    .local v9, j:I
    :goto_2
    if-ge v9, v6, :cond_7

    .line 252
    aget-object v20, v13, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v20

    const/high16 v21, 0xff

    and-int v11, v20, v21

    .line 254
    .local v11, p:I
    if-le v12, v11, :cond_8

    .line 259
    .end local v11           #p:I
    :cond_7
    add-int/lit8 v20, v9, 0x1

    sub-int v21, v6, v9

    move-object v0, v13

    move v1, v9

    move-object v2, v13

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    aget-object v20, v18, v8

    aput-object v20, v13, v9

    .line 261
    add-int/lit8 v5, v6, 0x1

    .line 262
    .end local v6           #count:I
    .restart local v5       #count:I
    goto/16 :goto_1

    .line 251
    .end local v5           #count:I
    .restart local v6       #count:I
    .restart local v11       #p:I
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 263
    .end local v9           #j:I
    .end local v11           #p:I
    :cond_9
    add-int/lit8 v5, v6, 0x1

    .end local v6           #count:I
    .restart local v5       #count:I
    aget-object v20, v18, v8

    aput-object v20, v13, v6

    goto/16 :goto_1

    .line 268
    .end local v5           #count:I
    .end local v12           #prio:I
    .end local v16           #spanEnd:I
    .end local v17           #spanStart:I
    .restart local v6       #count:I
    :cond_a
    if-nez v6, :cond_b

    .line 269
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object/from16 v19, p0

    .line 282
    :goto_3
    return-object v19

    .line 271
    .restart local p0
    :cond_b
    const/16 v20, 0x1

    move v0, v6

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 272
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

    .line 273
    const/16 v20, 0x0

    aput-object v19, v13, v20

    .line 274
    move-object v0, v13

    check-cast v0, [Ljava/lang/Object;

    move-object v14, v0

    move-object/from16 v19, v14

    goto :goto_3

    .line 276
    .restart local p0
    :cond_c
    move-object v0, v13

    array-length v0, v0

    move/from16 v19, v0

    move v0, v6

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 277
    move-object v0, v13

    check-cast v0, [Ljava/lang/Object;

    move-object v14, v0

    move-object/from16 v19, v14

    goto :goto_3

    .line 280
    :cond_d
    move-object/from16 v0, p3

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object/from16 v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v10, v0

    .line 281
    .local v10, nret:[Ljava/lang/Object;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v13

    move/from16 v1, v19

    move-object v2, v10

    move/from16 v3, v20

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    check-cast v10, [Ljava/lang/Object;

    .end local v10           #nret:[Ljava/lang/Object;
    move-object/from16 v19, v10

    goto :goto_3
.end method

.method public final length()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 7
    .parameter "start"
    .parameter "limit"
    .parameter "kind"

    .prologue
    .line 286
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 287
    .local v0, count:I
    iget-object v4, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 288
    .local v4, spans:[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 290
    .local v1, data:[I
    if-nez p3, :cond_0

    .line 291
    const-class p3, Ljava/lang/Object;

    .line 294
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 295
    mul-int/lit8 v6, v3, 0x3

    add-int/lit8 v6, v6, 0x0

    aget v5, v1, v6

    .line 296
    .local v5, st:I
    mul-int/lit8 v6, v3, 0x3

    add-int/lit8 v6, v6, 0x1

    aget v2, v1, v6

    .line 298
    .local v2, en:I
    if-le v5, p1, :cond_1

    if-ge v5, p2, :cond_1

    aget-object v6, v4, v3

    invoke-virtual {p3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 299
    move p2, v5

    .line 300
    :cond_1
    if-le v2, p1, :cond_2

    if-ge v2, p2, :cond_2

    aget-object v6, v4, v3

    invoke-virtual {p3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 301
    move p2, v2

    .line 294
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 304
    .end local v2           #en:I
    .end local v5           #st:I
    :cond_3
    return p2
.end method

.method removeSpan(Ljava/lang/Object;)V
    .locals 11
    .parameter "what"

    .prologue
    const/4 v10, 0x1

    .line 140
    iget v1, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 141
    .local v1, count:I
    iget-object v6, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 142
    .local v6, spans:[Ljava/lang/Object;
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 144
    .local v2, data:[I
    sub-int v3, v1, v10

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_0

    .line 145
    aget-object v7, v6, v3

    if-ne v7, p1, :cond_1

    .line 146
    mul-int/lit8 v7, v3, 0x3

    add-int/lit8 v7, v7, 0x0

    aget v5, v2, v7

    .line 147
    .local v5, ostart:I
    mul-int/lit8 v7, v3, 0x3

    add-int/lit8 v7, v7, 0x1

    aget v4, v2, v7

    .line 149
    .local v4, oend:I
    add-int/lit8 v7, v3, 0x1

    sub-int v0, v1, v7

    .line 151
    .local v0, c:I
    add-int/lit8 v7, v3, 0x1

    invoke-static {v6, v7, v6, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    add-int/lit8 v7, v3, 0x1

    mul-int/lit8 v7, v7, 0x3

    mul-int/lit8 v8, v3, 0x3

    mul-int/lit8 v9, v0, 0x3

    invoke-static {v2, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    sub-int/2addr v7, v10

    iput v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 157
    invoke-direct {p0, p1, v5, v4}, Landroid/text/SpannableStringInternal;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 161
    .end local v0           #c:I
    .end local v4           #oend:I
    .end local v5           #ostart:I
    :cond_0
    return-void

    .line 144
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
    .line 74
    move/from16 v9, p2

    .line 75
    .local v9, nstart:I
    move/from16 v10, p3

    .line 77
    .local v10, nend:I
    const-string/jumbo v5, "setSpan"

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/SpannableStringInternal;->checkRange(Ljava/lang/String;II)V

    .line 79
    and-int/lit8 v5, p4, 0x33

    const/16 v6, 0x33

    if-ne v5, v6, :cond_1

    .line 80
    if-eqz p2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v5

    move/from16 v0, p2

    move v1, v5

    if-eq v0, v1, :cond_0

    .line 81
    const/4 v5, 0x1

    sub-int v5, p2, v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v11

    .line 83
    .local v11, c:C
    const/16 v5, 0xa

    if-eq v11, v5, :cond_0

    .line 84
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

    .line 89
    .end local v11           #c:C
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v5

    move/from16 v0, p3

    move v1, v5

    if-eq v0, v1, :cond_1

    .line 90
    const/4 v5, 0x1

    sub-int v5, p3, v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v11

    .line 92
    .restart local v11       #c:C
    const/16 v5, 0xa

    if-eq v11, v5, :cond_1

    .line 93
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

    .line 99
    .end local v11           #c:C
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v12, v0

    .line 100
    .local v12, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 101
    .local v18, spans:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object v13, v0

    .line 103
    .local v13, data:[I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-ge v14, v12, :cond_4

    .line 104
    aget-object v5, v18, v14

    move-object v0, v5

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_3

    .line 105
    mul-int/lit8 v5, v14, 0x3

    add-int/lit8 v5, v5, 0x0

    aget v7, v13, v5

    .line 106
    .local v7, ostart:I
    mul-int/lit8 v5, v14, 0x3

    add-int/lit8 v5, v5, 0x1

    aget v8, v13, v5

    .line 108
    .local v8, oend:I
    mul-int/lit8 v5, v14, 0x3

    add-int/lit8 v5, v5, 0x0

    aput p2, v13, v5

    .line 109
    mul-int/lit8 v5, v14, 0x3

    add-int/lit8 v5, v5, 0x1

    aput p3, v13, v5

    .line 110
    mul-int/lit8 v5, v14, 0x3

    add-int/lit8 v5, v5, 0x2

    aput p4, v13, v5

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 112
    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringInternal;->sendSpanChanged(Ljava/lang/Object;IIII)V

    .line 137
    .end local v7           #ostart:I
    .end local v8           #oend:I
    :cond_2
    :goto_1
    return-void

    .line 103
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 117
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

    .line 118
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v16

    .line 119
    .local v16, newsize:I
    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 120
    .local v17, newtags:[Ljava/lang/Object;
    mul-int/lit8 v5, v16, 0x3

    new-array v15, v5, [I

    .line 122
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

    .line 123
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

    .line 125
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 126
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 129
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

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v6, v0

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x0

    aput p2, v5, v6

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v6, v0

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x1

    aput p3, v5, v6

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v6, v0

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x2

    aput p4, v5, v6

    .line 133
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 135
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/text/Spannable;

    move v5, v0

    if-eqz v5, :cond_2

    .line 136
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
    .line 64
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    return-object v0
.end method
