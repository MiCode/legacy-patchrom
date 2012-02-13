.class Landroid/pim/vcard/VCardParserImpl_V40;
.super Landroid/pim/vcard/VCardParserImpl_V30;
.source "VCardParserImpl_V40.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/pim/vcard/VCardParserImpl_V30;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "vcardType"

    .prologue
    invoke-direct {p0, p1}, Landroid/pim/vcard/VCardParserImpl_V30;-><init>(I)V

    return-void
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
    sget-object v0, Landroid/pim/vcard/VCardParser_V40;->sKnownPropertyNameSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getVersion()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    return v0
.end method

.method protected getVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "4.0"

    return-object v0
.end method

.method protected maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "text"

    .prologue
    invoke-static {p1}, Landroid/pim/vcard/VCardParserImpl_V40;->unescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
