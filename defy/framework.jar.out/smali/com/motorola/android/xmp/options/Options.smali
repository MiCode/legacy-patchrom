.class public abstract Lcom/motorola/android/xmp/options/Options;
.super Ljava/lang/Object;
.source "Options.java"


# instance fields
.field private optionNames:Ljava/util/Map;

.field private options:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/xmp/options/Options;->options:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/xmp/options/Options;->optionNames:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/xmp/options/Options;->options:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/xmp/options/Options;->optionNames:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/motorola/android/xmp/options/Options;->assertOptionsValid(I)V

    invoke-virtual {p0, p1}, Lcom/motorola/android/xmp/options/Options;->setOptions(I)V

    return-void
.end method

.method private assertOptionsValid(I)V
    .locals 4
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/motorola/android/xmp/options/Options;->getValidOptions()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int v0, p1, v1

    .local v0, invalidOptions:I
    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/android/xmp/options/Options;->assertConsistency(I)V

    return-void

    :cond_0
    new-instance v1, Lcom/motorola/android/xmp/XMPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The option bit(s) 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " are invalid!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x67

    invoke-direct {v1, v2, v3}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private getOptionName(I)Ljava/lang/String;
    .locals 3
    .parameter "option"

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/xmp/options/Options;->procureOptionNames()Ljava/util/Map;

    move-result-object v1

    .local v1, optionsNames:Ljava/util/Map;
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .local v0, key:Ljava/lang/Integer;
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, result:Ljava/lang/String;
    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/android/xmp/options/Options;->defineOptionName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const-string v2, "<option name not defined>"

    goto :goto_0
.end method

.method private procureOptionNames()Ljava/util/Map;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/xmp/options/Options;->optionNames:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/xmp/options/Options;->optionNames:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/xmp/options/Options;->optionNames:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected assertConsistency(I)V
    .locals 0
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/xmp/options/Options;->options:I

    return-void
.end method

.method public containsAllOptions(I)Z
    .locals 1
    .parameter "optionBits"

    .prologue
    invoke-virtual {p0}, Lcom/motorola/android/xmp/options/Options;->getOptions()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsOneOf(I)Z
    .locals 1
    .parameter "optionBits"

    .prologue
    invoke-virtual {p0}, Lcom/motorola/android/xmp/options/Options;->getOptions()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract defineOptionName(I)Ljava/lang/String;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    invoke-virtual {p0}, Lcom/motorola/android/xmp/options/Options;->getOptions()I

    move-result v0

    check-cast p1, Lcom/motorola/android/xmp/options/Options;

    .end local p1
    invoke-virtual {p1}, Lcom/motorola/android/xmp/options/Options;->getOptions()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getOption(I)Z
    .locals 1
    .parameter "optionBit"

    .prologue
    iget v0, p0, Lcom/motorola/android/xmp/options/Options;->options:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOptions()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/motorola/android/xmp/options/Options;->options:I

    return v0
.end method

.method public getOptionsString()Ljava/lang/String;
    .locals 6

    .prologue
    iget v5, p0, Lcom/motorola/android/xmp/options/Options;->options:I

    if-eqz v5, :cond_2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .local v2, sb:Ljava/lang/StringBuffer;
    iget v4, p0, Lcom/motorola/android/xmp/options/Options;->options:I

    .local v4, theBits:I
    :goto_0
    if-eqz v4, :cond_1

    const/4 v5, 0x1

    sub-int v5, v4, v5

    and-int v1, v4, v5

    .local v1, oneLessBit:I
    xor-int v3, v4, v1

    .local v3, singleBit:I
    invoke-direct {p0, v3}, Lcom/motorola/android/xmp/options/Options;->getOptionName(I)Ljava/lang/String;

    move-result-object v0

    .local v0, bitName:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_0

    const-string v5, " | "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    move v4, v1

    goto :goto_0

    .end local v0           #bitName:Ljava/lang/String;
    .end local v1           #oneLessBit:I
    .end local v3           #singleBit:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v2           #sb:Ljava/lang/StringBuffer;
    .end local v4           #theBits:I
    :goto_1
    return-object v5

    :cond_2
    const-string v5, "<none>"

    goto :goto_1
.end method

.method protected abstract getValidOptions()I
.end method

.method public hashCode()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/motorola/android/xmp/options/Options;->getOptions()I

    move-result v0

    return v0
.end method

.method public isExactly(I)Z
    .locals 1
    .parameter "optionBits"

    .prologue
    invoke-virtual {p0}, Lcom/motorola/android/xmp/options/Options;->getOptions()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOption(IZ)V
    .locals 2
    .parameter "optionBits"
    .parameter "value"

    .prologue
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/motorola/android/xmp/options/Options;->options:I

    or-int/2addr v0, p1

    :goto_0
    iput v0, p0, Lcom/motorola/android/xmp/options/Options;->options:I

    return-void

    :cond_0
    iget v0, p0, Lcom/motorola/android/xmp/options/Options;->options:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public setOptions(I)V
    .locals 0
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/xmp/options/Options;->assertOptionsValid(I)V

    iput p1, p0, Lcom/motorola/android/xmp/options/Options;->options:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/android/xmp/options/Options;->options:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
