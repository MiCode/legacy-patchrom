.class Landroid/mtp/MediaObject;
.super Ljava/lang/Object;
.source "MTPJNIInterface.java"


# instance fields
.field public album:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public composer:Ljava/lang/String;

.field public creationDate:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public duration:I

.field public filename:Ljava/lang/String;

.field public genreName:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public latitude:Ljava/lang/String;

.field public longitude:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public modificationDate:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->title:Ljava/lang/String;

    .line 584
    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->album:Ljava/lang/String;

    .line 585
    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->filename:Ljava/lang/String;

    .line 586
    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->id:Ljava/lang/String;

    .line 588
    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->size:Ljava/lang/String;

    .line 589
    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->mimeType:Ljava/lang/String;

    .line 590
    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->artist:Ljava/lang/String;

    .line 591
    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->composer:Ljava/lang/String;

    .line 593
    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->description:Ljava/lang/String;

    .line 594
    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->language:Ljava/lang/String;

    .line 595
    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->longitude:Ljava/lang/String;

    .line 596
    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->latitude:Ljava/lang/String;

    .line 597
    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->creationDate:Ljava/lang/String;

    .line 598
    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->path:Ljava/lang/String;

    .line 599
    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->modificationDate:Ljava/lang/String;

    .line 600
    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    .line 603
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Inside MediaObject Constructor"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 604
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "filename"
    .parameter "album"
    .parameter "artist"
    .parameter "composer"
    .parameter "creationDate"
    .parameter "description"
    .parameter "duration"
    .parameter "id"
    .parameter "language"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "mimeType"
    .parameter "modificationDate"
    .parameter "path"
    .parameter "size"
    .parameter "title"
    .parameter "year"
    .parameter "genreName"

    .prologue
    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->title:Ljava/lang/String;

    .line 584
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->album:Ljava/lang/String;

    .line 585
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->filename:Ljava/lang/String;

    .line 586
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->id:Ljava/lang/String;

    .line 588
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->size:Ljava/lang/String;

    .line 589
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->mimeType:Ljava/lang/String;

    .line 590
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->artist:Ljava/lang/String;

    .line 591
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->composer:Ljava/lang/String;

    .line 593
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->description:Ljava/lang/String;

    .line 594
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->language:Ljava/lang/String;

    .line 595
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->longitude:Ljava/lang/String;

    .line 596
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->latitude:Ljava/lang/String;

    .line 597
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->creationDate:Ljava/lang/String;

    .line 598
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->path:Ljava/lang/String;

    .line 599
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->modificationDate:Ljava/lang/String;

    .line 600
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    .line 609
    iput-object p1, p0, Landroid/mtp/MediaObject;->filename:Ljava/lang/String;

    .line 610
    iput-object p2, p0, Landroid/mtp/MediaObject;->album:Ljava/lang/String;

    .line 611
    iput-object p3, p0, Landroid/mtp/MediaObject;->artist:Ljava/lang/String;

    .line 612
    iput-object p4, p0, Landroid/mtp/MediaObject;->composer:Ljava/lang/String;

    .line 613
    iput-object p5, p0, Landroid/mtp/MediaObject;->creationDate:Ljava/lang/String;

    .line 614
    iput-object p6, p0, Landroid/mtp/MediaObject;->description:Ljava/lang/String;

    .line 615
    if-eqz p7, :cond_0

    .line 616
    invoke-static {p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/mtp/MediaObject;->duration:I

    .line 620
    :goto_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/mtp/MediaObject;->duration:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 621
    iput-object p8, p0, Landroid/mtp/MediaObject;->id:Ljava/lang/String;

    .line 622
    iput-object p9, p0, Landroid/mtp/MediaObject;->language:Ljava/lang/String;

    .line 623
    iput-object p10, p0, Landroid/mtp/MediaObject;->latitude:Ljava/lang/String;

    .line 624
    move-object/from16 v0, p11

    move-object v1, p0

    iput-object v0, v1, Landroid/mtp/MediaObject;->longitude:Ljava/lang/String;

    .line 625
    move-object/from16 v0, p12

    move-object v1, p0

    iput-object v0, v1, Landroid/mtp/MediaObject;->mimeType:Ljava/lang/String;

    .line 626
    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Landroid/mtp/MediaObject;->modificationDate:Ljava/lang/String;

    .line 627
    move-object/from16 v0, p14

    move-object v1, p0

    iput-object v0, v1, Landroid/mtp/MediaObject;->path:Ljava/lang/String;

    .line 628
    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, Landroid/mtp/MediaObject;->size:Ljava/lang/String;

    .line 629
    move-object/from16 v0, p16

    move-object v1, p0

    iput-object v0, v1, Landroid/mtp/MediaObject;->title:Ljava/lang/String;

    .line 630
    if-eqz p17, :cond_1

    .line 631
    invoke-static/range {p17 .. p17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/mtp/MediaObject;->year:I

    .line 635
    :goto_1
    move-object/from16 v0, p18

    move-object v1, p0

    iput-object v0, v1, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    .line 636
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Genre:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 637
    return-void

    .line 618
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Landroid/mtp/MediaObject;->duration:I

    goto :goto_0

    .line 633
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Landroid/mtp/MediaObject;->year:I

    goto :goto_1
.end method
