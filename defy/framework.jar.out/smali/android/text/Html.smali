.class public Landroid/text/Html;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Html$HtmlParser;,
        Landroid/text/Html$TagHandler;,
        Landroid/text/Html$ImageGetter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .locals 5
    .parameter "source"
    .parameter "imageGetter"
    .parameter "tagHandler"

    .prologue
    new-instance v2, Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v2}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    .local v2, parser:Lorg/ccil/cowan/tagsoup/Parser;
    :try_start_0
    const-string v3, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-static {}, Landroid/text/Html$HtmlParser;->access$000()Lorg/ccil/cowan/tagsoup/HTMLSchema;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/ccil/cowan/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v0, Landroid/text/HtmlToSpannedConverter;

    invoke-direct {v0, p0, p1, p2, v2}, Landroid/text/HtmlToSpannedConverter;-><init>(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;Lorg/ccil/cowan/tagsoup/Parser;)V

    .local v0, converter:Landroid/text/HtmlToSpannedConverter;
    invoke-virtual {v0}, Landroid/text/HtmlToSpannedConverter;->convert()Landroid/text/Spanned;

    move-result-object v3

    return-object v3

    .end local v0           #converter:Landroid/text/HtmlToSpannedConverter;
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .end local v1           #e:Lorg/xml/sax/SAXNotRecognizedException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .local v1, e:Lorg/xml/sax/SAXNotSupportedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, out:Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Landroid/text/Html;->withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 8
    .parameter "out"
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v7, 0xa

    const-string v0, "<p>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p2

    .local v2, i:I
    :goto_0
    if-ge v2, p3, :cond_3

    invoke-static {p1, v7, v2, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v6

    .local v6, next:I
    if-gez v6, :cond_0

    move v6, p3

    :cond_0
    const/4 v4, 0x0

    .local v4, nl:I
    :goto_1
    if-ge v6, p3, :cond_1

    invoke-interface {p1, v6}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    sub-int v3, v6, v4

    if-ne v6, p3, :cond_2

    const/4 v0, 0x1

    move v5, v0

    :goto_2
    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Landroid/text/Html;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;IIIZ)V

    move v2, v6

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move v5, v0

    goto :goto_2

    .end local v4           #nl:I
    .end local v6           #next:I
    :cond_3
    const-string v0, "</p>\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 9
    .parameter "out"
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const-class v8, Landroid/text/style/QuoteSpan;

    move v1, p2

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_2

    const-class v7, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v1, p3, v8}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    .local v4, next:I
    const-class v7, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v1, v4, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/QuoteSpan;

    .local v6, quotes:[Landroid/text/style/QuoteSpan;
    move-object v0, v6

    .local v0, arr$:[Landroid/text/style/QuoteSpan;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .local v5, quote:Landroid/text/style/QuoteSpan;
    const-string v7, "<blockquote>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v5           #quote:Landroid/text/style/QuoteSpan;
    :cond_0
    invoke-static {p0, p1, v1, v4}, Landroid/text/Html;->withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .restart local v5       #quote:Landroid/text/style/QuoteSpan;
    const-string v7, "</blockquote>\n"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v5           #quote:Landroid/text/style/QuoteSpan;
    :cond_1
    move v1, v4

    goto :goto_0

    .end local v0           #arr$:[Landroid/text/style/QuoteSpan;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #next:I
    .end local v6           #quotes:[Landroid/text/style/QuoteSpan;
    :cond_2
    return-void
.end method

.method private static withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V
    .locals 11
    .parameter "out"
    .parameter "text"

    .prologue
    const-class v10, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v4

    .local v4, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v8

    if-ge v2, v8, :cond_6

    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v4, v10}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    .local v6, next:I
    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v6, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ParagraphStyle;

    .local v7, style:[Landroid/text/style/ParagraphStyle;
    const-string v1, " "

    .local v1, elements:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, needDiv:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    array-length v8, v7

    if-ge v3, v8, :cond_3

    aget-object v8, v7, v3

    instance-of v8, v8, Landroid/text/style/AlignmentSpan;

    if-eqz v8, :cond_0

    aget-object v8, v7, v3

    check-cast v8, Landroid/text/style/AlignmentSpan;

    invoke-interface {v8}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .local v0, align:Landroid/text/Layout$Alignment;
    const/4 v5, 0x1

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"center\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v0           #align:Landroid/text/Layout$Alignment;
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .restart local v0       #align:Landroid/text/Layout$Alignment;
    :cond_1
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"right\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"left\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .end local v0           #align:Landroid/text/Layout$Alignment;
    :cond_3
    if-eqz v5, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<div "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-static {p0, p1, v2, v6}, Landroid/text/Html;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    if-eqz v5, :cond_5

    const-string v8, "</div>"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    move v2, v6

    goto/16 :goto_0

    .end local v1           #elements:Ljava/lang/String;
    .end local v3           #j:I
    .end local v5           #needDiv:Z
    .end local v6           #next:I
    .end local v7           #style:[Landroid/text/style/ParagraphStyle;
    :cond_6
    return-void
.end method

.method private static withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;IIIZ)V
    .locals 6
    .parameter "out"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "nl"
    .parameter "last"

    .prologue
    move p2, p2

    .local p2, i:I
    :goto_0
    if-ge p2, p3, :cond_17

    const-class v0, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .local v2, next:I
    const-class v0, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, p2, v2, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/CharacterStyle;

    .local v3, style:[Landroid/text/style/CharacterStyle;
    const/4 v0, 0x0

    .local v0, j:I
    move v1, v0

    .end local v0           #j:I
    .local v1, j:I
    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_b

    aget-object v0, v3, v1

    instance-of v0, v0, Landroid/text/style/StyleSpan;

    if-eqz v0, :cond_1

    aget-object v0, v3, v1

    check-cast v0, Landroid/text/style/StyleSpan;

    invoke-virtual {v0}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v0

    .local v0, s:I
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    const-string v4, "<b>"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .end local v0           #s:I
    const-string v0, "<i>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    aget-object v0, v3, v1

    instance-of v0, v0, Landroid/text/style/TypefaceSpan;

    if-eqz v0, :cond_2

    aget-object v0, v3, v1

    check-cast v0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v0}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v0

    .local v0, s:Ljava/lang/String;
    const-string v4, "monospace"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .end local v0           #s:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v0, "<tt>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    aget-object v0, v3, v1

    instance-of v0, v0, Landroid/text/style/SuperscriptSpan;

    if-eqz v0, :cond_3

    const-string v0, "<sup>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    aget-object v0, v3, v1

    instance-of v0, v0, Landroid/text/style/SubscriptSpan;

    if-eqz v0, :cond_4

    const-string v0, "<sub>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    aget-object v0, v3, v1

    instance-of v0, v0, Landroid/text/style/UnderlineSpan;

    if-eqz v0, :cond_5

    const-string v0, "<u>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    aget-object v0, v3, v1

    instance-of v0, v0, Landroid/text/style/StrikethroughSpan;

    if-eqz v0, :cond_6

    const-string v0, "<strike>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    aget-object v0, v3, v1

    instance-of v0, v0, Landroid/text/style/URLSpan;

    if-eqz v0, :cond_7

    const-string v0, "<a href=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v3, v1

    check-cast v0, Landroid/text/style/URLSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\">"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    aget-object v0, v3, v1

    instance-of v0, v0, Landroid/text/style/ImageSpan;

    if-eqz v0, :cond_1c

    const-string p2, "<img src=\""

    .end local p2           #i:I
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, v3, v1

    check-cast p2, Landroid/text/style/ImageSpan;

    invoke-virtual {p2}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\">"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p2, v2

    .restart local p2       #i:I
    move v0, p2

    .end local p2           #i:I
    .local v0, i:I
    :goto_2
    aget-object p2, v3, v1

    instance-of p2, p2, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz p2, :cond_8

    const-string p2, "<font size =\""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, v3, v1

    check-cast p2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p2}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result p2

    div-int/lit8 p2, p2, 0x6

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\">"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    aget-object p2, v3, v1

    instance-of p2, p2, Landroid/text/style/ForegroundColorSpan;

    if-eqz p2, :cond_a

    const-string p2, "<font color =\"#"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, v3, v1

    check-cast p2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p2}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result p2

    const/high16 v4, 0x100

    add-int/2addr p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    .local p2, color:Ljava/lang/String;
    :goto_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-ge v4, v5, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2           #color:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .restart local p2       #color:Ljava/lang/String;
    goto :goto_3

    :cond_9
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\">"

    .end local p2           #color:Ljava/lang/String;
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 p2, v1, 0x1

    .end local v1           #j:I
    .local p2, j:I
    move v1, p2

    .end local p2           #j:I
    .restart local v1       #j:I
    move p2, v0

    .end local v0           #i:I
    .local p2, i:I
    goto/16 :goto_1

    :cond_b
    invoke-static {p0, p1, p2, v2}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    array-length p2, v3

    .end local p2           #i:I
    const/4 v0, 0x1

    sub-int/2addr p2, v0

    .end local v1           #j:I
    .local p2, j:I
    :goto_4
    if-ltz p2, :cond_16

    aget-object v0, v3, p2

    instance-of v0, v0, Landroid/text/style/ForegroundColorSpan;

    if-eqz v0, :cond_c

    const-string v0, "</font>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    aget-object v0, v3, p2

    instance-of v0, v0, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v0, :cond_d

    const-string v0, "</font>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    aget-object v0, v3, p2

    instance-of v0, v0, Landroid/text/style/URLSpan;

    if-eqz v0, :cond_e

    const-string v0, "</a>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    aget-object v0, v3, p2

    instance-of v0, v0, Landroid/text/style/StrikethroughSpan;

    if-eqz v0, :cond_f

    const-string v0, "</strike>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    aget-object v0, v3, p2

    instance-of v0, v0, Landroid/text/style/UnderlineSpan;

    if-eqz v0, :cond_10

    const-string v0, "</u>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    aget-object v0, v3, p2

    instance-of v0, v0, Landroid/text/style/SubscriptSpan;

    if-eqz v0, :cond_11

    const-string v0, "</sub>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    aget-object v0, v3, p2

    instance-of v0, v0, Landroid/text/style/SuperscriptSpan;

    if-eqz v0, :cond_12

    const-string v0, "</sup>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    aget-object v0, v3, p2

    instance-of v0, v0, Landroid/text/style/TypefaceSpan;

    if-eqz v0, :cond_13

    aget-object v0, v3, p2

    check-cast v0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v0}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v0

    .local v0, s:Ljava/lang/String;
    const-string v1, "monospace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .end local v0           #s:Ljava/lang/String;
    if-eqz v0, :cond_13

    const-string v0, "</tt>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    aget-object v0, v3, p2

    instance-of v0, v0, Landroid/text/style/StyleSpan;

    if-eqz v0, :cond_15

    aget-object v0, v3, p2

    check-cast v0, Landroid/text/style/StyleSpan;

    invoke-virtual {v0}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v0

    .local v0, s:I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_14

    const-string v1, "</b>"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_15

    .end local v0           #s:I
    const-string v0, "</i>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_4

    :cond_16
    move p2, v2

    .local p2, i:I
    goto/16 :goto_0

    .end local v2           #next:I
    .end local v3           #style:[Landroid/text/style/CharacterStyle;
    :cond_17
    if-eqz p5, :cond_18

    const-string p1, ""

    .end local p1
    move-object p2, p1

    .local p2, p:Ljava/lang/String;
    :goto_5
    const/4 p1, 0x1

    if-ne p4, p1, :cond_19

    const-string p1, "<br>\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local p3
    :goto_6
    return-void

    .restart local p1
    .local p2, i:I
    .restart local p3
    :cond_18
    const-string p1, "</p>\n<p>"

    move-object p2, p1

    goto :goto_5

    .end local p1
    .local p2, p:Ljava/lang/String;
    :cond_19
    const/4 p1, 0x2

    if-ne p4, p1, :cond_1a

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_1a
    const/4 p1, 0x2

    .end local p3
    .local p1, i:I
    :goto_7
    if-ge p1, p4, :cond_1b

    const-string p3, "<br>"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_1b
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .restart local v1       #j:I
    .restart local v2       #next:I
    .restart local v3       #style:[Landroid/text/style/CharacterStyle;
    .local p1, text:Landroid/text/Spanned;
    .local p2, i:I
    .restart local p3
    :cond_1c
    move v0, p2

    .end local p2           #i:I
    .local v0, i:I
    goto/16 :goto_2
.end method

.method private static withinStyle(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 5
    .parameter "out"
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v4, 0x20

    move v1, p2

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_7

    invoke-interface {p1, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .local v0, c:C
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_0

    const-string v2, "&lt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_1

    const-string v2, "&gt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v2, 0x26

    if-ne v0, v2, :cond_2

    const-string v2, "&amp;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v2, 0x7e

    if-gt v0, v2, :cond_3

    if-ge v0, v4, :cond_4

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    if-ne v0, v4, :cond_6

    :goto_2
    add-int/lit8 v2, v1, 0x1

    if-ge v2, p3, :cond_5

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_5

    const-string v2, "&nbsp;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v0           #c:C
    :cond_7
    return-void
.end method
