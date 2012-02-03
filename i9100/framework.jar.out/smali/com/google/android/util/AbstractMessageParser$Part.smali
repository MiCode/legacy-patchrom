.class public Lcom/google/android/util/AbstractMessageParser$Part;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Part"
.end annotation


# instance fields
.field private meText:Ljava/lang/String;

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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Part;->tokens:Ljava/util/ArrayList;

    .line 1435
    return-void
.end method

.method private getPartType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1442
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Part;->isMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1443
    const-string v0, "d"

    .line 1447
    :goto_0
    return-object v0

    .line 1444
    :cond_0
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Part;->meText:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1445
    const-string v0, "m"

    goto :goto_0

    .line 1447
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/google/android/util/AbstractMessageParser$Token;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 1471
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Part;->isMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1472
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "media "

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1474
    :cond_0
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Part;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    return-void
.end method

.method public getMediaToken()Lcom/google/android/util/AbstractMessageParser$Token;
    .locals 2

    .prologue
    .line 1463
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Part;->isMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Part;->tokens:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/util/AbstractMessageParser$Token;

    move-object v0, p0

    .line 1466
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRawText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1484
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser$Part;->meText:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1485
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser$Part;->meText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser$Part;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1488
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser$Part;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/util/AbstractMessageParser$Token;

    invoke-virtual {v2}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1490
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getTokens()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/util/AbstractMessageParser$Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Part;->tokens:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType(Z)Ljava/lang/String;
    .locals 2
    .parameter "isSend"

    .prologue
    .line 1438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v1, "s"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser$Part;->getPartType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v1, "r"

    goto :goto_0
.end method

.method public isMedia()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1452
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Part;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Part;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/util/AbstractMessageParser$Token;

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Token;->isMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setMeText(Ljava/lang/String;)V
    .locals 0
    .parameter "meText"

    .prologue
    .line 1478
    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser$Part;->meText:Ljava/lang/String;

    .line 1479
    return-void
.end method
