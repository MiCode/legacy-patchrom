.class public Lcom/google/android/util/SmileyParser;
.super Lcom/google/android/util/AbstractMessageParser;
.source "SmileyParser.java"


# instance fields
.field private mRes:Lcom/google/android/util/SmileyResources;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/util/SmileyResources;)V
    .locals 8
    .parameter "text"
    .parameter "res"

    .prologue
    const/4 v3, 0x0

    .line 34
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/util/AbstractMessageParser;-><init>(Ljava/lang/String;ZZZZZZ)V

    .line 42
    iput-object p2, p0, Lcom/google/android/util/SmileyParser;->mRes:Lcom/google/android/util/SmileyResources;

    .line 43
    return-void
.end method


# virtual methods
.method protected getResources()Lcom/google/android/util/AbstractMessageParser$Resources;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/util/SmileyParser;->mRes:Lcom/google/android/util/SmileyResources;

    return-object v0
.end method

.method public getSpannableString(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 11
    .parameter "context"

    .prologue
    .line 56
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 58
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Lcom/google/android/util/SmileyParser;->getPartCount()I

    move-result v8

    if-nez v8, :cond_0

    .line 59
    const-string v8, ""

    .line 80
    :goto_0
    return-object v8

    .line 63
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/google/android/util/SmileyParser;->getPart(I)Lcom/google/android/util/AbstractMessageParser$Part;

    move-result-object v3

    .line 64
    .local v3, part:Lcom/google/android/util/AbstractMessageParser$Part;
    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Part;->getTokens()Ljava/util/ArrayList;

    move-result-object v7

    .line 65
    .local v7, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/util/AbstractMessageParser$Token;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 66
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 67
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/util/AbstractMessageParser$Token;

    .line 68
    .local v6, token:Lcom/google/android/util/AbstractMessageParser$Token;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 69
    .local v5, start:I
    invoke-virtual {v6}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 70
    invoke-virtual {v6}, Lcom/google/android/util/AbstractMessageParser$Token;->getType()Lcom/google/android/util/AbstractMessageParser$Token$Type;

    move-result-object v8

    sget-object v9, Lcom/google/android/util/AbstractMessageParser$Token$Type;->SMILEY:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    if-ne v8, v9, :cond_1

    .line 71
    iget-object v8, p0, Lcom/google/android/util/SmileyParser;->mRes:Lcom/google/android/util/SmileyResources;

    invoke-virtual {v6}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/util/SmileyResources;->getSmileyRes(Ljava/lang/String;)I

    move-result v4

    .line 72
    .local v4, resid:I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_1

    .line 73
    new-instance v8, Landroid/text/style/ImageSpan;

    invoke-direct {v8, p1, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/16 v10, 0x21

    invoke-virtual {v0, v8, v5, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 66
    .end local v4           #resid:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v5           #start:I
    .end local v6           #token:Lcom/google/android/util/AbstractMessageParser$Token;
    :cond_2
    move-object v8, v0

    .line 80
    goto :goto_0
.end method
