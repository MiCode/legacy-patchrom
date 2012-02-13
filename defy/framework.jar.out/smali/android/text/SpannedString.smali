.class public final Landroid/text/SpannedString;
.super Landroid/text/SpannableStringInternal;
.source "SpannedString.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/Spanned;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/SpannableStringInternal;-><init>(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0
    .parameter "source"
    .parameter "start"
    .parameter "end"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/text/SpannableStringInternal;-><init>(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;
    .locals 1
    .parameter "source"

    .prologue
    instance-of v0, p0, Landroid/text/SpannedString;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/text/SpannedString;

    .end local p0
    move-object v0, p0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getSpanEnd(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-super {p0, p1}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSpanFlags(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-super {p0, p1}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSpanStart(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-super {p0, p1}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nextSpanTransition(IILjava/lang/Class;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/text/SpannableStringInternal;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method
