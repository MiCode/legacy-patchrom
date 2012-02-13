.class Landroid/pim/vcard/VCardParserImpl_V30;
.super Landroid/pim/vcard/VCardParserImpl_V21;
.source "VCardParserImpl_V30.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VCardParserImpl_V30"


# instance fields
.field private mEmittedAgentWarning:Z

.field private mPreviousLine:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/pim/vcard/VCardParserImpl_V21;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/pim/vcard/VCardParserImpl_V30;->mEmittedAgentWarning:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "vcardType"

    .prologue
    invoke-direct {p0, p1}, Landroid/pim/vcard/VCardParserImpl_V21;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/pim/vcard/VCardParserImpl_V30;->mEmittedAgentWarning:Z

    return-void
.end method

.method private splitAndPutParamValue(Ljava/lang/String;)V
    .locals 8
    .parameter "paramValue"

    .prologue
    const-string v7, "VCardParserImpl_V30"

    const/4 v0, 0x0

    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, insideDquote:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_7

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, ch:C
    const/16 v5, 0x22

    if-ne v1, v5, :cond_3

    if-eqz v3, :cond_0

    iget-object v5, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    const-string v5, "VCardParserImpl_V30"

    const-string v5, "Unexpected Dquote inside property."

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/16 v5, 0x2c

    if-ne v1, v5, :cond_5

    if-nez v3, :cond_5

    if-nez v0, :cond_4

    const-string v5, "VCardParserImpl_V30"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Comma is used before actual string comes. ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v5, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v0       #builder:Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v1           #ch:C
    :cond_7
    if-eqz v3, :cond_8

    const-string v5, "VCardParserImpl_V30"

    const-string v5, "Dangling Dquote."

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "VCardParserImpl_V30"

    const-string v5, "Unintended behavior. We must not see empty StringBuilder at the end of parameter value parsing."

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    return-void

    :cond_a
    iget-object v5, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static unescapeCharacter(C)Ljava/lang/String;
    .locals 1
    .parameter "ch"

    .prologue
    const/16 v0, 0x6e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_1

    :cond_0
    const-string v0, "\n"

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static unescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "text"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, ch:C
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_2

    const/4 v5, 0x1

    sub-int v5, v3, v5

    if-ge v2, v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .local v4, next_ch:C
    const/16 v5, 0x6e

    if-eq v4, v5, :cond_0

    const/16 v5, 0x4e

    if-ne v4, v5, :cond_1

    :cond_0
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v4           #next_ch:C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v4       #next_ch:C
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v4           #next_ch:C
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v1           #ch:C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method protected getBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "firstString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V30;->getLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_0

    new-instance v2, Landroid/pim/vcard/exception/VCardException;

    const-string v3, "File ended during parsing BASE64 binary"

    invoke-direct {v2, v3}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-object v1, p0, Landroid/pim/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected getKnownPropertyNameSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Landroid/pim/vcard/VCardParser_V30;->sKnownPropertyNameSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getLine()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/pim/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    .local v0, ret:Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/pim/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    move-object v1, v0

    .end local v0           #ret:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mReader:Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v1}, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected getNonEmptyLine()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    .local v0, builder:Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mReader:Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v3}, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_1
    iget-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v2, p0, Landroid/pim/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    .local v2, ret:Ljava/lang/String;
    iput-object v5, p0, Landroid/pim/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    move-object v3, v2

    goto :goto_1

    .end local v2           #ret:Ljava/lang/String;
    :cond_2
    new-instance v3, Landroid/pim/vcard/exception/VCardException;

    const-string v4, "Reached end of buffer."

    invoke-direct {v3, v4}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    iget-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroid/pim/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    .restart local v2       #ret:Ljava/lang/String;
    iput-object v5, p0, Landroid/pim/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    move-object v3, v2

    goto :goto_1

    .end local v2           #ret:Ljava/lang/String;
    :cond_5
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_6

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_9

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    iget-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    if-eqz v3, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v0       #builder:Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v5, p0, Landroid/pim/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_8
    new-instance v3, Landroid/pim/vcard/exception/VCardException;

    const-string v4, "Space exists at the beginning of the line"

    invoke-direct {v3, v4}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_9
    iget-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    if-nez v3, :cond_a

    iput-object v1, p0, Landroid/pim/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_a
    iget-object v2, p0, Landroid/pim/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    .restart local v2       #ret:Ljava/lang/String;
    iput-object v1, p0, Landroid/pim/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    move-object v3, v2

    goto :goto_1
.end method

.method protected getVersion()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected getVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "3.0"

    return-object v0
.end method

.method protected handleAgent(Ljava/lang/String;)V
    .locals 2
    .parameter "propertyValue"

    .prologue
    iget-boolean v0, p0, Landroid/pim/vcard/VCardParserImpl_V30;->mEmittedAgentWarning:Z

    if-nez v0, :cond_0

    const-string v0, "VCardParserImpl_V30"

    const-string v1, "AGENT in vCard 3.0 is not supported yet. Ignore it"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/pim/vcard/VCardParserImpl_V30;->mEmittedAgentWarning:Z

    :cond_0
    return-void
.end method

.method protected handleAnyParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "paramName"
    .parameter "paramValue"

    .prologue
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Landroid/pim/vcard/VCardParserImpl_V30;->splitAndPutParamValue(Ljava/lang/String;)V

    return-void
.end method

.method protected handleParamWithoutName(Ljava/lang/String;)V
    .locals 0
    .parameter "paramValue"

    .prologue
    invoke-virtual {p0, p1}, Landroid/pim/vcard/VCardParserImpl_V30;->handleType(Ljava/lang/String;)V

    return-void
.end method

.method protected handleParams(Ljava/lang/String;)V
    .locals 5
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    :try_start_0
    invoke-super {p0, p1}, Landroid/pim/vcard/VCardParserImpl_V21;->handleParams(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/pim/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/pim/vcard/exception/VCardException;
    const-string v2, "="

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .local v1, strArray:[Ljava/lang/String;
    array-length v2, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {p0, v2, v3}, Landroid/pim/vcard/VCardParserImpl_V30;->handleAnyParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/pim/vcard/exception/VCardException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown params value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected handleType(Ljava/lang/String;)V
    .locals 2
    .parameter "paramValue"

    .prologue
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    const-string v1, "TYPE"

    invoke-interface {v0, v1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/pim/vcard/VCardParserImpl_V30;->splitAndPutParamValue(Ljava/lang/String;)V

    return-void
.end method

.method protected maybeUnescapeCharacter(C)Ljava/lang/String;
    .locals 1
    .parameter "ch"

    .prologue
    invoke-static {p1}, Landroid/pim/vcard/VCardParserImpl_V30;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "text"

    .prologue
    invoke-static {p1}, Landroid/pim/vcard/VCardParserImpl_V30;->unescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readBeginVCard(Z)Z
    .locals 1
    .parameter "allowGarbage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    invoke-super {p0, p1}, Landroid/pim/vcard/VCardParserImpl_V21;->readBeginVCard(Z)Z

    move-result v0

    return v0
.end method

.method protected readEndVCard(ZZ)V
    .locals 0
    .parameter "useCache"
    .parameter "allowGarbage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    invoke-super {p0, p1, p2}, Landroid/pim/vcard/VCardParserImpl_V21;->readEndVCard(ZZ)V

    return-void
.end method
