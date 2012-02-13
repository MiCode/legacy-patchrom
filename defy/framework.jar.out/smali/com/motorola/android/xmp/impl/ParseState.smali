.class Lcom/motorola/android/xmp/impl/ParseState;
.super Ljava/lang/Object;
.source "ISO8601Converter.java"


# instance fields
.field private pos:I

.field private str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/xmp/impl/ParseState;->pos:I

    iput-object p1, p0, Lcom/motorola/android/xmp/impl/ParseState;->str:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public ch()C
    .locals 2

    .prologue
    iget v0, p0, Lcom/motorola/android/xmp/impl/ParseState;->pos:I

    iget-object v1, p0, Lcom/motorola/android/xmp/impl/ParseState;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/android/xmp/impl/ParseState;->str:Ljava/lang/String;

    iget v1, p0, Lcom/motorola/android/xmp/impl/ParseState;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ch(I)C
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/xmp/impl/ParseState;->str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/xmp/impl/ParseState;->str:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public gatherInt(Ljava/lang/String;I)I
    .locals 6
    .parameter "errorMsg"
    .parameter "maxValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x30

    const/4 v2, 0x0

    .local v2, value:I
    const/4 v1, 0x0

    .local v1, success:Z
    iget v3, p0, Lcom/motorola/android/xmp/impl/ParseState;->pos:I

    invoke-virtual {p0, v3}, Lcom/motorola/android/xmp/impl/ParseState;->ch(I)C

    move-result v0

    .local v0, ch:C
    :goto_0
    if-gt v5, v0, :cond_0

    const/16 v3, 0x39

    if-gt v0, v3, :cond_0

    mul-int/lit8 v3, v2, 0xa

    sub-int v4, v0, v5

    add-int v2, v3, v4

    const/4 v1, 0x1

    iget v3, p0, Lcom/motorola/android/xmp/impl/ParseState;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/motorola/android/xmp/impl/ParseState;->pos:I

    iget v3, p0, Lcom/motorola/android/xmp/impl/ParseState;->pos:I

    invoke-virtual {p0, v3}, Lcom/motorola/android/xmp/impl/ParseState;->ch(I)C

    move-result v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_3

    if-le v2, p2, :cond_1

    move v3, p2

    :goto_1
    return v3

    :cond_1
    if-gez v2, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/motorola/android/xmp/XMPException;

    const/4 v4, 0x5

    invoke-direct {v3, p1, v4}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/motorola/android/xmp/impl/ParseState;->pos:I

    iget-object v1, p0, Lcom/motorola/android/xmp/impl/ParseState;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/xmp/impl/ParseState;->str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public pos()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/motorola/android/xmp/impl/ParseState;->pos:I

    return v0
.end method

.method public skip()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/motorola/android/xmp/impl/ParseState;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/android/xmp/impl/ParseState;->pos:I

    return-void
.end method
