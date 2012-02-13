.class public Lcom/google/android/util/AbstractMessageParser$Html;
.super Lcom/google/android/util/AbstractMessageParser$Token;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Html"
.end annotation


# instance fields
.field private html:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .parameter "html"

    .prologue
    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->HTML:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-direct {p0, v0, p1}, Lcom/google/android/util/AbstractMessageParser$Token;-><init>(Lcom/google/android/util/AbstractMessageParser$Token$Type;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/util/AbstractMessageParser$Html;->html:Ljava/lang/String;

    return-void
.end method

.method private static trimLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static trimTrailingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, index:I
    :goto_0
    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isHtml()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public toHtml(Z)Ljava/lang/String;
    .locals 1
    .parameter "caps"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->html:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->html:Ljava/lang/String;

    goto :goto_0
.end method

.method public trimLeadingWhitespace()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Token;->text:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser$Html;->trimLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Token;->text:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->html:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser$Html;->trimLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->html:Ljava/lang/String;

    return-void
.end method

.method public trimTrailingWhitespace()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Token;->text:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser$Html;->trimTrailingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Token;->text:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->html:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser$Html;->trimTrailingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->html:Ljava/lang/String;

    return-void
.end method
