.class public abstract Lcom/google/android/util/AbstractMessageParser;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/util/AbstractMessageParser$1;,
        Lcom/google/android/util/AbstractMessageParser$Part;,
        Lcom/google/android/util/AbstractMessageParser$TrieNode;,
        Lcom/google/android/util/AbstractMessageParser$Format;,
        Lcom/google/android/util/AbstractMessageParser$Acronym;,
        Lcom/google/android/util/AbstractMessageParser$Smiley;,
        Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;,
        Lcom/google/android/util/AbstractMessageParser$Photo;,
        Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;,
        Lcom/google/android/util/AbstractMessageParser$Video;,
        Lcom/google/android/util/AbstractMessageParser$Link;,
        Lcom/google/android/util/AbstractMessageParser$MusicTrack;,
        Lcom/google/android/util/AbstractMessageParser$Html;,
        Lcom/google/android/util/AbstractMessageParser$Token;,
        Lcom/google/android/util/AbstractMessageParser$Resources;
    }
.end annotation


# static fields
.field public static final musicNote:Ljava/lang/String; = "\u266b "


# instance fields
.field private formatStart:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Lcom/google/android/util/AbstractMessageParser$Format;",
            ">;"
        }
    .end annotation
.end field

.field private nextChar:I

.field private nextClass:I

.field private parseAcronyms:Z

.field private parseFormatting:Z

.field private parseMeText:Z

.field private parseMusic:Z

.field private parseSmilies:Z

.field private parseUrls:Z

.field private parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/util/AbstractMessageParser$Part;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/String;

.field private tokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/util/AbstractMessageParser$Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .parameter "text"

    .prologue
    const/4 v2, 0x1

    .line 89
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/util/AbstractMessageParser;-><init>(Ljava/lang/String;ZZZZZZ)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZZZZ)V
    .locals 1
    .parameter "text"
    .parameter "parseSmilies"
    .parameter "parseAcronyms"
    .parameter "parseFormatting"
    .parameter "parseUrls"
    .parameter "parseMusic"
    .parameter "parseMeText"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 103
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextClass:I

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    .line 107
    iput-boolean p2, p0, Lcom/google/android/util/AbstractMessageParser;->parseSmilies:Z

    .line 108
    iput-boolean p3, p0, Lcom/google/android/util/AbstractMessageParser;->parseAcronyms:Z

    .line 109
    iput-boolean p4, p0, Lcom/google/android/util/AbstractMessageParser;->parseFormatting:Z

    .line 110
    iput-boolean p5, p0, Lcom/google/android/util/AbstractMessageParser;->parseUrls:Z

    .line 111
    iput-boolean p6, p0, Lcom/google/android/util/AbstractMessageParser;->parseMusic:Z

    .line 112
    iput-boolean p7, p0, Lcom/google/android/util/AbstractMessageParser;->parseMeText:Z

    .line 113
    return-void
.end method

.method private addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V
    .locals 1
    .parameter "token"

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    return-void
.end method

.method private addURLToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "text"

    .prologue
    .line 465
    invoke-static {p1, p2}, Lcom/google/android/util/AbstractMessageParser;->tokenForUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Token;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 466
    return-void
.end method

.method private buildParts(Ljava/lang/String;)V
    .locals 4
    .parameter "meText"

    .prologue
    .line 234
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 235
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/util/AbstractMessageParser$Token;

    .line 236
    .local v1, token:Lcom/google/android/util/AbstractMessageParser$Token;
    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token;->isMedia()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->lastPart()Lcom/google/android/util/AbstractMessageParser$Part;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/util/AbstractMessageParser$Part;->isMedia()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    :cond_0
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/util/AbstractMessageParser$Part;

    invoke-direct {v3}, Lcom/google/android/util/AbstractMessageParser$Part;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_1
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->lastPart()Lcom/google/android/util/AbstractMessageParser$Part;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/util/AbstractMessageParser$Part;->add(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    .end local v1           #token:Lcom/google/android/util/AbstractMessageParser$Token;
    :cond_2
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 244
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/util/AbstractMessageParser$Part;

    invoke-virtual {p0, p1}, Lcom/google/android/util/AbstractMessageParser$Part;->setMeText(Ljava/lang/String;)V

    .line 246
    :cond_3
    return-void
.end method

.method private getCharClass(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 576
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p1, :cond_1

    .line 577
    :cond_0
    const/4 v1, 0x0

    .line 593
    :goto_0
    return v1

    .line 580
    :cond_1
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 581
    .local v0, ch:C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 582
    const/4 v1, 0x1

    goto :goto_0

    .line 583
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 584
    const/4 v1, 0x2

    goto :goto_0

    .line 585
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 586
    const/4 v1, 0x3

    goto :goto_0

    .line 587
    :cond_4
    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser;->isPunctuation(C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 591
    iget v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextClass:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextClass:I

    goto :goto_0

    .line 593
    :cond_5
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private isDomainChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 328
    const/16 v0, 0x2d

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFormatChar(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 644
    sparse-switch p0, :sswitch_data_0

    .line 649
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 646
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 644
    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x5e -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method private static isPunctuation(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 629
    sparse-switch p0, :sswitch_data_0

    .line 635
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 632
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 629
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2e -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3f -> :sswitch_0
    .end sparse-switch
.end method

.method private static isSmileyBreak(CC)Z
    .locals 1
    .parameter "c1"
    .parameter "c2"

    .prologue
    .line 604
    sparse-switch p0, :sswitch_data_0

    .line 624
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 612
    :sswitch_0
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    .line 620
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_1

    .line 604
    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2f -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x5e -> :sswitch_0
        0x7c -> :sswitch_0
        0x7d -> :sswitch_0
        0x7e -> :sswitch_0
    .end sparse-switch

    .line 612
    :sswitch_data_1
    .sparse-switch
        0x23 -> :sswitch_1
        0x24 -> :sswitch_1
        0x25 -> :sswitch_1
        0x2a -> :sswitch_1
        0x2f -> :sswitch_1
        0x3c -> :sswitch_1
        0x3d -> :sswitch_1
        0x3e -> :sswitch_1
        0x40 -> :sswitch_1
        0x5b -> :sswitch_1
        0x5c -> :sswitch_1
        0x5e -> :sswitch_1
        0x7e -> :sswitch_1
    .end sparse-switch
.end method

.method private isSmileyBreak(I)Z
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 547
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    sub-int v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/util/AbstractMessageParser;->isSmileyBreak(CC)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 553
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isURLBreak(I)Z
    .locals 2
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 561
    sub-int v0, p1, v1

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 570
    :goto_0
    return v0

    .line 565
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 561
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidDomain(Ljava/lang/String;)Z
    .locals 2
    .parameter "domain"

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/util/AbstractMessageParser$Resources;->getDomainSuffixes()Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/util/AbstractMessageParser;->reverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/util/AbstractMessageParser;->matches(Lcom/google/android/util/AbstractMessageParser$TrieNode;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    const/4 v0, 0x1

    .line 337
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWordBreak(I)Z
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 542
    sub-int v0, p1, v2

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lastPart()Lcom/google/android/util/AbstractMessageParser$Part;
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/util/AbstractMessageParser$Part;

    return-object p0
.end method

.method private static longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;I)Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .locals 1
    .parameter "root"
    .parameter "p"
    .parameter "start"

    .prologue
    .line 1400
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/util/AbstractMessageParser;->longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;IZ)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v0

    return-object v0
.end method

.method private static longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;IZ)Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .locals 4
    .parameter "root"
    .parameter "p"
    .parameter "start"
    .parameter "smiley"

    .prologue
    .line 1410
    move v1, p2

    .line 1411
    .local v1, index:I
    const/4 v0, 0x0

    .line 1412
    .local v0, bestMatch:Lcom/google/android/util/AbstractMessageParser$TrieNode;
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/util/AbstractMessageParser;->getRawText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1413
    invoke-virtual {p1}, Lcom/google/android/util/AbstractMessageParser;->getRawText()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getChild(C)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object p0

    .line 1414
    if-nez p0, :cond_1

    move v1, v2

    .line 1424
    .end local v2           #index:I
    .restart local v1       #index:I
    :cond_0
    return-object v0

    .line 1416
    .end local v1           #index:I
    .restart local v2       #index:I
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1417
    invoke-direct {p1, v2}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1418
    move-object v0, p0

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_0

    .line 1419
    .end local v1           #index:I
    .restart local v2       #index:I
    :cond_2
    if-eqz p3, :cond_3

    invoke-direct {p1, v2}, Lcom/google/android/util/AbstractMessageParser;->isSmileyBreak(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1420
    move-object v0, p0

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_0

    .end local v1           #index:I
    .restart local v2       #index:I
    :cond_3
    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_0
.end method

.method private static matches(Lcom/google/android/util/AbstractMessageParser$TrieNode;Ljava/lang/String;)Z
    .locals 3
    .parameter "root"
    .parameter "str"

    .prologue
    .line 1382
    const/4 v0, 0x0

    .line 1383
    .local v0, index:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1384
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getChild(C)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object p0

    .line 1385
    if-nez p0, :cond_1

    move v0, v1

    .line 1391
    .end local v1           #index:I
    .restart local v0       #index:I
    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 1387
    .end local v0           #index:I
    .restart local v1       #index:I
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1388
    const/4 v2, 0x1

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto :goto_1

    .end local v0           #index:I
    .restart local v1       #index:I
    :cond_2
    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto :goto_0
.end method

.method private parseAcronym()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 313
    iget-boolean v1, p0, Lcom/google/android/util/AbstractMessageParser;->parseAcronyms:Z

    if-nez v1, :cond_0

    move v1, v3

    .line 322
    :goto_0
    return v1

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/util/AbstractMessageParser$Resources;->getAcronyms()Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v1

    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-static {v1, p0, v2}, Lcom/google/android/util/AbstractMessageParser;->longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;I)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v0

    .line 317
    .local v0, match:Lcom/google/android/util/AbstractMessageParser$TrieNode;
    if-nez v0, :cond_1

    move v1, v3

    .line 318
    goto :goto_0

    .line 320
    :cond_1
    new-instance v1, Lcom/google/android/util/AbstractMessageParser$Acronym;

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/util/AbstractMessageParser$Acronym;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 321
    iget v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 322
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private parseFormatting()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 485
    iget-boolean v8, p0, Lcom/google/android/util/AbstractMessageParser;->parseFormatting:Z

    if-nez v8, :cond_0

    move v8, v10

    .line 537
    :goto_0
    return v8

    .line 488
    :cond_0
    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 489
    .local v2, endChar:I
    :goto_1
    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_1

    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/google/android/util/AbstractMessageParser;->isFormatChar(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 490
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 493
    :cond_1
    iget v8, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    if-eq v2, v8, :cond_2

    invoke-direct {p0, v2}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    move v8, v10

    .line 494
    goto :goto_0

    .line 500
    :cond_3
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 503
    .local v6, seenCharacters:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Character;Ljava/lang/Boolean;>;"
    iget v4, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .local v4, index:I
    :goto_2
    if-ge v4, v2, :cond_6

    .line 504
    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 505
    .local v0, ch:C
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    .line 506
    .local v5, key:Ljava/lang/Character;
    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 509
    new-instance v8, Lcom/google/android/util/AbstractMessageParser$Format;

    invoke-direct {v8, v0, v10}, Lcom/google/android/util/AbstractMessageParser$Format;-><init>(CZ)V

    invoke-direct {p0, v8}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 503
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 511
    :cond_4
    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/util/AbstractMessageParser$Format;

    .line 512
    .local v7, start:Lcom/google/android/util/AbstractMessageParser$Format;
    if-eqz v7, :cond_5

    .line 514
    invoke-virtual {v7, v11}, Lcom/google/android/util/AbstractMessageParser$Format;->setMatched(Z)V

    .line 515
    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 519
    :cond_5
    new-instance v7, Lcom/google/android/util/AbstractMessageParser$Format;

    .end local v7           #start:Lcom/google/android/util/AbstractMessageParser$Format;
    invoke-direct {v7, v0, v11}, Lcom/google/android/util/AbstractMessageParser$Format;-><init>(CZ)V

    .line 520
    .restart local v7       #start:Lcom/google/android/util/AbstractMessageParser$Format;
    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    invoke-virtual {v8, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    invoke-direct {p0, v7}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 522
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 528
    .end local v0           #ch:C
    .end local v5           #key:Ljava/lang/Character;
    .end local v7           #start:Lcom/google/android/util/AbstractMessageParser$Format;
    :cond_6
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Character;

    .line 529
    .restart local v5       #key:Ljava/lang/Character;
    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v8, v9, :cond_7

    .line 530
    new-instance v1, Lcom/google/android/util/AbstractMessageParser$Format;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v8

    invoke-direct {v1, v8, v10}, Lcom/google/android/util/AbstractMessageParser$Format;-><init>(CZ)V

    .line 531
    .local v1, end:Lcom/google/android/util/AbstractMessageParser$Format;
    invoke-virtual {v1, v11}, Lcom/google/android/util/AbstractMessageParser$Format;->setMatched(Z)V

    .line 532
    invoke-direct {p0, v1}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    goto :goto_4

    .line 536
    .end local v1           #end:Lcom/google/android/util/AbstractMessageParser$Format;
    .end local v5           #key:Ljava/lang/Character;
    :cond_8
    iput v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    move v8, v11

    .line 537
    goto/16 :goto_0
.end method

.method private parseMusicTrack()Z
    .locals 4

    .prologue
    const-string/jumbo v3, "\u266b "

    .line 257
    iget-boolean v0, p0, Lcom/google/android/util/AbstractMessageParser;->parseMusic:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    const-string/jumbo v1, "\u266b "

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$MusicTrack;

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    const-string/jumbo v2, "\u266b "

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/util/AbstractMessageParser$MusicTrack;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 259
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 260
    const/4 v0, 0x1

    .line 262
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseSmiley()Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 290
    iget-boolean v3, p0, Lcom/google/android/util/AbstractMessageParser;->parseSmilies:Z

    if-nez v3, :cond_0

    move v3, v5

    .line 306
    :goto_0
    return v3

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/util/AbstractMessageParser$Resources;->getSmileys()Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v3

    iget v4, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-static {v3, p0, v4, v6}, Lcom/google/android/util/AbstractMessageParser;->longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;IZ)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v0

    .line 295
    .local v0, match:Lcom/google/android/util/AbstractMessageParser$TrieNode;
    if-nez v0, :cond_1

    move v3, v5

    .line 296
    goto :goto_0

    .line 298
    :cond_1
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    sub-int/2addr v3, v6

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v2

    .line 299
    .local v2, previousCharClass:I
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v1

    .line 300
    .local v1, nextCharClass:I
    if-eq v2, v7, :cond_2

    if-ne v2, v8, :cond_4

    :cond_2
    if-eq v1, v7, :cond_3

    if-ne v1, v8, :cond_4

    :cond_3
    move v3, v5

    .line 302
    goto :goto_0

    .line 304
    :cond_4
    new-instance v3, Lcom/google/android/util/AbstractMessageParser$Smiley;

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/util/AbstractMessageParser$Smiley;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 305
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    move v3, v6

    .line 306
    goto :goto_0
.end method

.method private parseText()V
    .locals 6

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v0, buf:Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 270
    .local v2, start:I
    :cond_0
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 271
    .local v1, ch:C
    sparse-switch v1, :sswitch_data_0

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    :goto_0
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 282
    new-instance v3, Lcom/google/android/util/AbstractMessageParser$Html;

    iget-object v4, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/util/AbstractMessageParser$Html;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 283
    return-void

    .line 272
    :sswitch_0
    const-string v3, "&lt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 273
    :sswitch_1
    const-string v3, "&gt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 274
    :sswitch_2
    const-string v3, "&amp;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 275
    :sswitch_3
    const-string v3, "&quot;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 276
    :sswitch_4
    const-string v3, "&apos;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 277
    :sswitch_5
    const-string v3, "<br>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 271
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_5
        0x22 -> :sswitch_3
        0x26 -> :sswitch_2
        0x27 -> :sswitch_4
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method private parseURL()Z
    .locals 13

    .prologue
    const/16 v12, 0x3a

    const/16 v10, 0x2e

    const/4 v11, 0x0

    .line 346
    iget-boolean v9, p0, Lcom/google/android/util/AbstractMessageParser;->parseUrls:Z

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-direct {p0, v9}, Lcom/google/android/util/AbstractMessageParser;->isURLBreak(I)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    move v9, v11

    .line 457
    :goto_0
    return v9

    .line 350
    :cond_1
    iget v6, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 353
    .local v6, start:I
    move v4, v6

    .line 354
    .local v4, index:I
    :goto_1
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_2

    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-direct {p0, v9}, Lcom/google/android/util/AbstractMessageParser;->isDomainChar(C)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 355
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 358
    :cond_2
    const-string v7, ""

    .line 359
    .local v7, url:Ljava/lang/String;
    const/4 v3, 0x0

    .line 361
    .local v3, done:Z
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v4, v9, :cond_3

    move v9, v11

    .line 362
    goto :goto_0

    .line 363
    :cond_3
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_4

    .line 365
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    iget v10, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v9, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 366
    .local v5, scheme:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/util/AbstractMessageParser$Resources;->getSchemes()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    move v9, v11

    .line 367
    goto :goto_0

    .line 369
    .end local v5           #scheme:Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_11

    .line 371
    :goto_2
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_5

    .line 372
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 373
    .local v0, ch:C
    if-eq v0, v10, :cond_6

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->isDomainChar(C)Z

    move-result v9

    if-nez v9, :cond_6

    .line 382
    .end local v0           #ch:C
    :cond_5
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    iget v10, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v9, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, domain:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/google/android/util/AbstractMessageParser;->isValidDomain(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    move v9, v11

    .line 384
    goto :goto_0

    .line 376
    .end local v2           #domain:Ljava/lang/String;
    .restart local v0       #ch:C
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 378
    goto :goto_2

    .line 389
    .end local v0           #ch:C
    .restart local v2       #domain:Ljava/lang/String;
    :cond_7
    add-int/lit8 v9, v4, 0x1

    iget-object v10, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_8

    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_8

    .line 390
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 391
    .restart local v0       #ch:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 392
    add-int/lit8 v4, v4, 0x1

    .line 393
    :goto_3
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_8

    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 395
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 406
    .end local v0           #ch:C
    :cond_8
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v4, v9, :cond_b

    .line 407
    const/4 v3, 0x1

    .line 436
    :cond_9
    :goto_4
    const-string v7, "http://"

    .line 443
    .end local v2           #domain:Ljava/lang/String;
    :cond_a
    if-nez v3, :cond_12

    .line 444
    :goto_5
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_12

    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_12

    .line 446
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 409
    .restart local v2       #domain:Ljava/lang/String;
    :cond_b
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 410
    .restart local v0       #ch:C
    const/16 v9, 0x3f

    if-ne v0, v9, :cond_e

    .line 413
    add-int/lit8 v9, v4, 0x1

    iget-object v10, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v9, v10, :cond_c

    .line 414
    const/4 v3, 0x1

    goto :goto_4

    .line 416
    :cond_c
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 417
    .local v1, ch2:C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_d

    invoke-static {v1}, Lcom/google/android/util/AbstractMessageParser;->isPunctuation(C)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 418
    :cond_d
    const/4 v3, 0x1

    goto :goto_4

    .line 421
    .end local v1           #ch2:C
    :cond_e
    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser;->isPunctuation(C)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 422
    const/4 v3, 0x1

    goto :goto_4

    .line 423
    :cond_f
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 424
    const/4 v3, 0x1

    goto :goto_4

    .line 425
    :cond_10
    const/16 v9, 0x2f

    if-eq v0, v9, :cond_9

    const/16 v9, 0x23

    if-eq v0, v9, :cond_9

    move v9, v11

    .line 429
    goto/16 :goto_0

    .end local v0           #ch:C
    .end local v2           #domain:Ljava/lang/String;
    :cond_11
    move v9, v11

    .line 438
    goto/16 :goto_0

    .line 450
    :cond_12
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 451
    .local v8, urlText:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 454
    invoke-direct {p0, v7, v8}, Lcom/google/android/util/AbstractMessageParser;->addURLToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iput v4, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 457
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method protected static reverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1332
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 1333
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1332
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1335
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static tokenForUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Token;
    .locals 5
    .parameter "url"
    .parameter "text"

    .prologue
    .line 196
    if-nez p0, :cond_0

    .line 197
    const/4 v4, 0x0

    .line 225
    :goto_0
    return-object v4

    .line 201
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$Video;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Video;

    move-result-object v2

    .line 202
    .local v2, video:Lcom/google/android/util/AbstractMessageParser$Video;
    if-eqz v2, :cond_1

    move-object v4, v2

    .line 203
    goto :goto_0

    .line 207
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;

    move-result-object v3

    .line 208
    .local v3, ytVideo:Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;
    if-eqz v3, :cond_2

    move-object v4, v3

    .line 209
    goto :goto_0

    .line 213
    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$Photo;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Photo;

    move-result-object v1

    .line 214
    .local v1, photo:Lcom/google/android/util/AbstractMessageParser$Photo;
    if-eqz v1, :cond_3

    move-object v4, v1

    .line 215
    goto :goto_0

    .line 219
    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;

    move-result-object v0

    .line 220
    .local v0, flickrPhoto:Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;
    if-eqz v0, :cond_4

    move-object v4, v0

    .line 221
    goto :goto_0

    .line 225
    :cond_4
    new-instance v4, Lcom/google/android/util/AbstractMessageParser$Link;

    invoke-direct {v4, p0, p1}, Lcom/google/android/util/AbstractMessageParser$Link;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final getPart(I)Lcom/google/android/util/AbstractMessageParser$Part;
    .locals 1
    .parameter "index"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/util/AbstractMessageParser$Part;

    return-object p0
.end method

.method public final getPartCount()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/util/AbstractMessageParser$Part;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getRawText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getResources()Lcom/google/android/util/AbstractMessageParser$Resources;
.end method

.method public parse()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 131
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseMusicTrack()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->buildParts(Ljava/lang/String;)V

    .line 186
    :goto_0
    return-void

    .line 137
    :cond_0
    const/4 v1, 0x0

    .line 138
    .local v1, meText:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/google/android/util/AbstractMessageParser;->parseMeText:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    const-string v4, "/me"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_1

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 141
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    .line 145
    :cond_1
    const/4 v2, 0x0

    .line 146
    .local v2, wasSmiley:Z
    :cond_2
    :goto_1
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    iget-object v4, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 147
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 148
    if-eqz v2, :cond_3

    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->isSmileyBreak(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 149
    :cond_3
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "last chunk did not end at word break"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 153
    :cond_4
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseSmiley()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 154
    const/4 v2, 0x1

    goto :goto_1

    .line 156
    :cond_5
    const/4 v2, 0x0

    .line 158
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseAcronym()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseURL()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseFormatting()Z

    move-result v3

    if-nez v3, :cond_2

    .line 159
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseText()V

    goto :goto_1

    .line 165
    :cond_6
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 166
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Token;

    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Token;->isMedia()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 167
    if-lez v0, :cond_7

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    sub-int v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/util/AbstractMessageParser$Html;

    if-eqz v3, :cond_7

    .line 168
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    sub-int v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Html;

    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Html;->trimLeadingWhitespace()V

    .line 170
    :cond_7
    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/util/AbstractMessageParser$Html;

    if-eqz v3, :cond_8

    .line 171
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Html;

    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Html;->trimTrailingWhitespace()V

    .line 165
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 177
    :cond_9
    const/4 v0, 0x0

    :goto_3
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    .line 178
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Token;

    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Token;->isHtml()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Token;

    invoke-virtual {v3, v5}, Lcom/google/android/util/AbstractMessageParser$Token;->toHtml(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    .line 180
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 181
    add-int/lit8 v0, v0, -0x1

    .line 177
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 185
    :cond_b
    invoke-direct {p0, v1}, Lcom/google/android/util/AbstractMessageParser;->buildParts(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public toHtml()Ljava/lang/String;
    .locals 13

    .prologue
    const-string v12, "<a href=\""

    const-string v11, "</a>"

    const-string v10, "\">"

    .line 1241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1243
    .local v2, html:Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/util/AbstractMessageParser$Part;

    .line 1244
    .local v6, part:Lcom/google/android/util/AbstractMessageParser$Part;
    const/4 v1, 0x0

    .line 1246
    .local v1, caps:Z
    const-string v8, "<p>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    invoke-virtual {v6}, Lcom/google/android/util/AbstractMessageParser$Part;->getTokens()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/util/AbstractMessageParser$Token;

    .line 1248
    .local v7, token:Lcom/google/android/util/AbstractMessageParser$Token;
    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Token;->isHtml()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1249
    invoke-virtual {v7, v1}, Lcom/google/android/util/AbstractMessageParser$Token;->toHtml(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    :goto_2
    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Token;->controlCaps()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1320
    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Token;->setCaps()Z

    move-result v1

    goto :goto_1

    .line 1251
    :cond_1
    sget-object v8, Lcom/google/android/util/AbstractMessageParser$1;->$SwitchMap$com$google$android$util$AbstractMessageParser$Token$Type:[I

    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Token;->getType()Lcom/google/android/util/AbstractMessageParser$Token$Type;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 1315
    new-instance v8, Ljava/lang/AssertionError;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unknown token type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Token;->getType()Lcom/google/android/util/AbstractMessageParser$Token$Type;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 1253
    :pswitch_0
    const-string v8, "<a href=\""

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    move-object v0, v7

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Link;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/util/AbstractMessageParser$Link;->getURL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    const-string v8, "\">"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    const-string v8, "</a>"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1262
    :pswitch_1
    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1266
    :pswitch_2
    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1271
    :pswitch_3
    move-object v0, v7

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$MusicTrack;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/util/AbstractMessageParser$MusicTrack;->getTrack()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1276
    :pswitch_4
    const-string v8, "<a href=\""

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    move-object v0, v7

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Video;

    move-object v8, v0

    move-object v0, v7

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Video;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/util/AbstractMessageParser$Video;->getDocID()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/util/AbstractMessageParser$Video;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    const-string v8, "\">"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    const-string v8, "</a>"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1285
    :pswitch_5
    const-string v8, "<a href=\""

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    move-object v0, v7

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;

    move-object v8, v0

    move-object v0, v7

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->getDocID()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    const-string v8, "\">"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    const-string v8, "</a>"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1295
    :pswitch_6
    const-string v8, "<a href=\""

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    move-object v0, v7

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Photo;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/util/AbstractMessageParser$Photo;->getUser()Ljava/lang/String;

    move-result-object v9

    move-object v0, v7

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Photo;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/util/AbstractMessageParser$Photo;->getAlbum()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/google/android/util/AbstractMessageParser$Photo;->getAlbumURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    const-string v8, "\">"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    const-string v8, "</a>"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1306
    :pswitch_7
    move-object v0, v7

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Photo;

    move-object v5, v0

    .line 1307
    .local v5, p:Lcom/google/android/util/AbstractMessageParser$Photo;
    const-string v8, "<a href=\""

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    move-object v0, v7

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    const-string v8, "\">"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    const-string v8, "</a>"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1323
    .end local v5           #p:Lcom/google/android/util/AbstractMessageParser$Photo;
    .end local v7           #token:Lcom/google/android/util/AbstractMessageParser$Token;
    :cond_2
    const-string v8, "</p>\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1326
    .end local v1           #caps:Z
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #part:Lcom/google/android/util/AbstractMessageParser$Part;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 1251
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
