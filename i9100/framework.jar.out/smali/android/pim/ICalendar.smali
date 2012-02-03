.class public Landroid/pim/ICalendar;
.super Ljava/lang/Object;
.source "ICalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pim/ICalendar$1;,
        Landroid/pim/ICalendar$ParserState;,
        Landroid/pim/ICalendar$Parameter;,
        Landroid/pim/ICalendar$Property;,
        Landroid/pim/ICalendar$Component;,
        Landroid/pim/ICalendar$FormatException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Sync"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    return-void
.end method

.method private static extractParameter(Landroid/pim/ICalendar$ParserState;)Landroid/pim/ICalendar$Parameter;
    .locals 11
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/ICalendar$FormatException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x22

    const/4 v8, -0x1

    const-string v10, "Expected \'=\' within parameter in "

    .line 544
    iget-object v6, p0, Landroid/pim/ICalendar$ParserState;->line:Ljava/lang/String;

    .line 545
    .local v6, text:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 546
    .local v3, len:I
    const/4 v4, 0x0

    .line 547
    .local v4, parameter:Landroid/pim/ICalendar$Parameter;
    const/4 v5, -0x1

    .line 548
    .local v5, startIndex:I
    const/4 v2, -0x1

    .line 549
    .local v2, equalIndex:I
    :goto_0
    iget v7, p0, Landroid/pim/ICalendar$ParserState;->index:I

    if-ge v7, v3, :cond_e

    .line 550
    iget v7, p0, Landroid/pim/ICalendar$ParserState;->index:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 551
    .local v0, c:C
    const/16 v7, 0x3a

    if-ne v0, v7, :cond_2

    .line 552
    if-eqz v4, :cond_1

    .line 553
    if-ne v2, v8, :cond_0

    .line 554
    new-instance v7, Landroid/pim/ICalendar$FormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected \'=\' within parameter in "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/pim/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 557
    :cond_0
    add-int/lit8 v7, v2, 0x1

    iget v8, p0, Landroid/pim/ICalendar$ParserState;->index:I

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/pim/ICalendar$Parameter;->value:Ljava/lang/String;

    .line 597
    :cond_1
    :goto_1
    return-object v4

    .line 561
    :cond_2
    const/16 v7, 0x3b

    if-ne v0, v7, :cond_6

    .line 562
    if-eqz v4, :cond_4

    .line 563
    if-ne v2, v8, :cond_3

    .line 564
    new-instance v7, Landroid/pim/ICalendar$FormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected \'=\' within parameter in "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/pim/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 567
    :cond_3
    add-int/lit8 v7, v2, 0x1

    iget v8, p0, Landroid/pim/ICalendar$ParserState;->index:I

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/pim/ICalendar$Parameter;->value:Ljava/lang/String;

    goto :goto_1

    .line 571
    :cond_4
    new-instance v4, Landroid/pim/ICalendar$Parameter;

    .end local v4           #parameter:Landroid/pim/ICalendar$Parameter;
    invoke-direct {v4}, Landroid/pim/ICalendar$Parameter;-><init>()V

    .line 572
    .restart local v4       #parameter:Landroid/pim/ICalendar$Parameter;
    iget v5, p0, Landroid/pim/ICalendar$ParserState;->index:I

    .line 599
    :cond_5
    :goto_2
    iget v7, p0, Landroid/pim/ICalendar$ParserState;->index:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/pim/ICalendar$ParserState;->index:I

    goto :goto_0

    .line 574
    :cond_6
    const/16 v7, 0x3d

    if-ne v0, v7, :cond_9

    .line 575
    iget v2, p0, Landroid/pim/ICalendar$ParserState;->index:I

    .line 576
    if-eqz v4, :cond_7

    if-ne v5, v8, :cond_8

    .line 577
    :cond_7
    new-instance v7, Landroid/pim/ICalendar$FormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected \';\' before \'=\' in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/pim/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 580
    :cond_8
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/pim/ICalendar$Parameter;->name:Ljava/lang/String;

    goto :goto_2

    .line 581
    :cond_9
    if-ne v0, v9, :cond_5

    .line 582
    if-nez v4, :cond_a

    .line 583
    new-instance v7, Landroid/pim/ICalendar$FormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected parameter before \'\"\' in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/pim/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 585
    :cond_a
    if-ne v2, v8, :cond_b

    .line 586
    new-instance v7, Landroid/pim/ICalendar$FormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected \'=\' within parameter in "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/pim/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 588
    :cond_b
    iget v7, p0, Landroid/pim/ICalendar$ParserState;->index:I

    add-int/lit8 v8, v2, 0x1

    if-le v7, v8, :cond_c

    .line 589
    new-instance v7, Landroid/pim/ICalendar$FormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parameter value cannot contain a \'\"\' in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/pim/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 591
    :cond_c
    iget v7, p0, Landroid/pim/ICalendar$ParserState;->index:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 592
    .local v1, endQuote:I
    if-gez v1, :cond_d

    .line 593
    new-instance v7, Landroid/pim/ICalendar$FormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected closing \'\"\' in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/pim/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 595
    :cond_d
    iget v7, p0, Landroid/pim/ICalendar$ParserState;->index:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/pim/ICalendar$Parameter;->value:Ljava/lang/String;

    .line 596
    add-int/lit8 v7, v1, 0x1

    iput v7, p0, Landroid/pim/ICalendar$ParserState;->index:I

    goto/16 :goto_1

    .line 601
    .end local v0           #c:C
    .end local v1           #endQuote:I
    :cond_e
    new-instance v7, Landroid/pim/ICalendar$FormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected \':\' before end of line in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/pim/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static extractValue(Landroid/pim/ICalendar$ParserState;)Ljava/lang/String;
    .locals 5
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/ICalendar$FormatException;
        }
    .end annotation

    .prologue
    .line 528
    iget-object v0, p0, Landroid/pim/ICalendar$ParserState;->line:Ljava/lang/String;

    .line 529
    .local v0, line:Ljava/lang/String;
    iget v2, p0, Landroid/pim/ICalendar$ParserState;->index:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget v2, p0, Landroid/pim/ICalendar$ParserState;->index:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_1

    .line 530
    :cond_0
    new-instance v2, Landroid/pim/ICalendar$FormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected \':\' before end of line in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/pim/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 533
    :cond_1
    iget v2, p0, Landroid/pim/ICalendar$ParserState;->index:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, value:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/pim/ICalendar$ParserState;->index:I

    .line 535
    return-object v1
.end method

.method private static normalizeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "text"

    .prologue
    const-string v2, "\n"

    .line 409
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 410
    const-string v0, "\r"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 415
    const-string v0, "\n "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 417
    return-object p0
.end method

.method public static parseCalendar(Ljava/lang/String;)Landroid/pim/ICalendar$Component;
    .locals 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/ICalendar$FormatException;
        }
    .end annotation

    .prologue
    .line 613
    const/4 v1, 0x0

    invoke-static {v1, p0}, Landroid/pim/ICalendar;->parseComponent(Landroid/pim/ICalendar$Component;Ljava/lang/String;)Landroid/pim/ICalendar$Component;

    move-result-object v0

    .line 614
    .local v0, calendar:Landroid/pim/ICalendar$Component;
    if-eqz v0, :cond_0

    const-string v1, "VCALENDAR"

    invoke-virtual {v0}, Landroid/pim/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 615
    :cond_0
    new-instance v1, Landroid/pim/ICalendar$FormatException;

    const-string v2, "Expected VCALENDAR"

    invoke-direct {v1, v2}, Landroid/pim/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 617
    :cond_1
    return-object v0
.end method

.method public static parseComponent(Landroid/pim/ICalendar$Component;Ljava/lang/String;)Landroid/pim/ICalendar$Component;
    .locals 1
    .parameter "component"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/ICalendar$FormatException;
        }
    .end annotation

    .prologue
    .line 658
    invoke-static {p1}, Landroid/pim/ICalendar;->normalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 659
    invoke-static {p0, p1}, Landroid/pim/ICalendar;->parseComponentImpl(Landroid/pim/ICalendar$Component;Ljava/lang/String;)Landroid/pim/ICalendar$Component;

    move-result-object v0

    return-object v0
.end method

.method public static parseComponent(Ljava/lang/String;)Landroid/pim/ICalendar$Component;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/ICalendar$FormatException;
        }
    .end annotation

    .prologue
    .line 644
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/pim/ICalendar;->parseComponent(Landroid/pim/ICalendar$Component;Ljava/lang/String;)Landroid/pim/ICalendar$Component;

    move-result-object v0

    return-object v0
.end method

.method private static parseComponentImpl(Landroid/pim/ICalendar$Component;Ljava/lang/String;)Landroid/pim/ICalendar$Component;
    .locals 8
    .parameter "component"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/ICalendar$FormatException;
        }
    .end annotation

    .prologue
    .line 431
    move-object v1, p0

    .line 432
    .local v1, current:Landroid/pim/ICalendar$Component;
    new-instance v6, Landroid/pim/ICalendar$ParserState;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/pim/ICalendar$ParserState;-><init>(Landroid/pim/ICalendar$1;)V

    .line 433
    .local v6, state:Landroid/pim/ICalendar$ParserState;
    const/4 v7, 0x0

    iput v7, v6, Landroid/pim/ICalendar$ParserState;->index:I

    .line 436
    const-string v7, "\n"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 440
    .local v5, lines:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 442
    .local v4, line:Ljava/lang/String;
    :try_start_0
    invoke-static {v4, v6, v1}, Landroid/pim/ICalendar;->parseLine(Ljava/lang/String;Landroid/pim/ICalendar$ParserState;Landroid/pim/ICalendar$Component;)Landroid/pim/ICalendar$Component;
    :try_end_0
    .catch Landroid/pim/ICalendar$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 446
    if-nez p0, :cond_0

    .line 447
    move-object p0, v1

    .line 440
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 449
    :catch_0
    move-exception v7

    goto :goto_1

    .line 458
    .end local v4           #line:Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public static parseEvent(Ljava/lang/String;)Landroid/pim/ICalendar$Component;
    .locals 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/ICalendar$FormatException;
        }
    .end annotation

    .prologue
    .line 629
    const/4 v1, 0x0

    invoke-static {v1, p0}, Landroid/pim/ICalendar;->parseComponent(Landroid/pim/ICalendar$Component;Ljava/lang/String;)Landroid/pim/ICalendar$Component;

    move-result-object v0

    .line 630
    .local v0, event:Landroid/pim/ICalendar$Component;
    if-eqz v0, :cond_0

    const-string v1, "VEVENT"

    invoke-virtual {v0}, Landroid/pim/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 631
    :cond_0
    new-instance v1, Landroid/pim/ICalendar$FormatException;

    const-string v2, "Expected VEVENT"

    invoke-direct {v1, v2}, Landroid/pim/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 633
    :cond_1
    return-object v0
.end method

.method private static parseLine(Ljava/lang/String;Landroid/pim/ICalendar$ParserState;Landroid/pim/ICalendar$Component;)Landroid/pim/ICalendar$Component;
    .locals 12
    .parameter "line"
    .parameter "state"
    .parameter "component"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/ICalendar$FormatException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x3b

    const/4 v9, 0x0

    const-string v11, "BEGIN"

    .line 470
    iput-object p0, p1, Landroid/pim/ICalendar$ParserState;->line:Ljava/lang/String;

    .line 471
    iget-object v8, p1, Landroid/pim/ICalendar$ParserState;->line:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    .line 474
    .local v3, len:I
    const/4 v0, 0x0

    .line 475
    .local v0, c:C
    iput v9, p1, Landroid/pim/ICalendar$ParserState;->index:I

    :goto_0
    iget v8, p1, Landroid/pim/ICalendar$ParserState;->index:I

    if-ge v8, v3, :cond_0

    .line 476
    iget v8, p1, Landroid/pim/ICalendar$ParserState;->index:I

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 477
    if-eq v0, v10, :cond_0

    const/16 v8, 0x3a

    if-ne v0, v8, :cond_1

    .line 481
    :cond_0
    iget v8, p1, Landroid/pim/ICalendar$ParserState;->index:I

    invoke-virtual {p0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 483
    .local v4, name:Ljava/lang/String;
    if-nez p2, :cond_2

    .line 484
    const-string v8, "BEGIN"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 485
    new-instance v8, Landroid/pim/ICalendar$FormatException;

    const-string v9, "Expected BEGIN"

    invoke-direct {v8, v9}, Landroid/pim/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 475
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    iget v8, p1, Landroid/pim/ICalendar$ParserState;->index:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p1, Landroid/pim/ICalendar$ParserState;->index:I

    goto :goto_0

    .line 490
    .restart local v4       #name:Ljava/lang/String;
    :cond_2
    const-string v8, "BEGIN"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 492
    invoke-static {p1}, Landroid/pim/ICalendar;->extractValue(Landroid/pim/ICalendar$ParserState;)Ljava/lang/String;

    move-result-object v2

    .line 493
    .local v2, componentName:Ljava/lang/String;
    new-instance v1, Landroid/pim/ICalendar$Component;

    invoke-direct {v1, v2, p2}, Landroid/pim/ICalendar$Component;-><init>(Ljava/lang/String;Landroid/pim/ICalendar$Component;)V

    .line 494
    .local v1, child:Landroid/pim/ICalendar$Component;
    if-eqz p2, :cond_3

    .line 495
    invoke-virtual {p2, v1}, Landroid/pim/ICalendar$Component;->addChild(Landroid/pim/ICalendar$Component;)V

    :cond_3
    move-object v8, v1

    .line 519
    .end local v1           #child:Landroid/pim/ICalendar$Component;
    .end local v2           #componentName:Ljava/lang/String;
    :goto_1
    return-object v8

    .line 498
    :cond_4
    const-string v8, "END"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 500
    invoke-static {p1}, Landroid/pim/ICalendar;->extractValue(Landroid/pim/ICalendar$ParserState;)Ljava/lang/String;

    move-result-object v2

    .line 501
    .restart local v2       #componentName:Ljava/lang/String;
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/pim/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 503
    :cond_5
    new-instance v8, Landroid/pim/ICalendar$FormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected END "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/pim/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 505
    :cond_6
    invoke-virtual {p2}, Landroid/pim/ICalendar$Component;->getParent()Landroid/pim/ICalendar$Component;

    move-result-object v8

    goto :goto_1

    .line 507
    .end local v2           #componentName:Ljava/lang/String;
    :cond_7
    new-instance v6, Landroid/pim/ICalendar$Property;

    invoke-direct {v6, v4}, Landroid/pim/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 510
    .local v6, property:Landroid/pim/ICalendar$Property;
    if-ne v0, v10, :cond_8

    .line 511
    const/4 v5, 0x0

    .line 512
    .local v5, parameter:Landroid/pim/ICalendar$Parameter;
    :goto_2
    invoke-static {p1}, Landroid/pim/ICalendar;->extractParameter(Landroid/pim/ICalendar$ParserState;)Landroid/pim/ICalendar$Parameter;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 513
    invoke-virtual {v6, v5}, Landroid/pim/ICalendar$Property;->addParameter(Landroid/pim/ICalendar$Parameter;)V

    goto :goto_2

    .line 516
    .end local v5           #parameter:Landroid/pim/ICalendar$Parameter;
    :cond_8
    invoke-static {p1}, Landroid/pim/ICalendar;->extractValue(Landroid/pim/ICalendar$ParserState;)Ljava/lang/String;

    move-result-object v7

    .line 517
    .local v7, value:Ljava/lang/String;
    invoke-virtual {v6, v7}, Landroid/pim/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p2, v6}, Landroid/pim/ICalendar$Component;->addProperty(Landroid/pim/ICalendar$Property;)V

    move-object v8, p2

    .line 519
    goto :goto_1
.end method
