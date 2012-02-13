.class public Lcom/motorola/CameraF/CameraGlobalType$CamSize;
.super Ljava/lang/Object;
.source "CameraGlobalType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/CameraGlobalType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CamSize"
.end annotation


# instance fields
.field mDescription:Ljava/lang/String;

.field mHeight:I

.field mLock:Z

.field mSize:F

.field mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    iput v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mWidth:I

    .line 529
    iput v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mHeight:I

    .line 530
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 531
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 535
    invoke-virtual {p0, p1}, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->update(Ljava/lang/String;)V

    .line 536
    return-void
.end method


# virtual methods
.method public getDescpiption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 695
    iget v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mHeight:I

    return v0
.end method

.method public getLock()Z
    .locals 1

    .prologue
    .line 705
    iget-boolean v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    return v0
.end method

.method public getSize()F
    .locals 1

    .prologue
    .line 698
    iget v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 692
    iget v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mWidth:I

    return v0
.end method

.method public update(II)V
    .locals 6
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v5, 0x4100

    const/high16 v4, 0x40a0

    const/16 v3, 0x2d0

    const/high16 v2, 0x3f40

    const/4 v1, 0x0

    .line 621
    iput p1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mWidth:I

    .line 622
    iput p2, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mHeight:I

    .line 624
    const/16 v0, 0xcc0

    if-ne p1, v0, :cond_0

    const/16 v0, 0x720

    if-ne p2, v0, :cond_0

    .line 626
    const-string v0, "EightMPW"

    iput-object v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 627
    iput v5, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 628
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    .line 630
    :cond_0
    const/16 v0, 0xcc0

    if-ne p1, v0, :cond_1

    const/16 v0, 0x990

    if-ne p2, v0, :cond_1

    .line 632
    const-string v0, "EightMP"

    iput-object v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 633
    iput v5, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 634
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    .line 636
    :cond_1
    const/16 v0, 0xa20

    if-ne p1, v0, :cond_2

    const/16 v0, 0x5b0

    if-ne p2, v0, :cond_2

    .line 637
    const-string v0, "FiveMPW"

    iput-object v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 638
    iput v4, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 639
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    .line 689
    :goto_0
    return-void

    .line 640
    :cond_2
    const/16 v0, 0xa20

    if-ne p1, v0, :cond_3

    const/16 v0, 0x790

    if-ne p2, v0, :cond_3

    .line 641
    const-string v0, "FiveMP"

    iput-object v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 642
    iput v4, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 643
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 644
    :cond_3
    const/16 v0, 0x800

    if-ne p1, v0, :cond_4

    const/16 v0, 0x600

    if-ne p2, v0, :cond_4

    .line 645
    const-string v0, "ThreeMP"

    iput-object v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 646
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 647
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 648
    :cond_4
    const/16 v0, 0x640

    if-ne p1, v0, :cond_5

    const/16 v0, 0x4b0

    if-ne p2, v0, :cond_5

    .line 649
    const-string v0, "TwoMP"

    iput-object v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 650
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 651
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 652
    :cond_5
    const/16 v0, 0x500

    if-ne p1, v0, :cond_6

    if-ne p2, v3, :cond_6

    .line 653
    const-string v0, "720p"

    iput-object v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 654
    iput v2, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 655
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 656
    :cond_6
    if-ne p1, v3, :cond_7

    const/16 v0, 0x240

    if-ne p2, v0, :cond_7

    .line 657
    const-string v0, "PAL_D1"

    iput-object v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 658
    iput v2, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 659
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 660
    :cond_7
    if-ne p1, v3, :cond_8

    const/16 v0, 0x1e0

    if-ne p2, v0, :cond_8

    .line 661
    const-string v0, "NTSC_D1"

    iput-object v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 662
    iput v2, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 663
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 664
    :cond_8
    const/16 v0, 0x280

    if-ne p1, v0, :cond_9

    const/16 v0, 0x1e0

    if-ne p2, v0, :cond_9

    .line 665
    const-string v0, "VGA"

    iput-object v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 666
    const v0, 0x3f19999a

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 667
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 668
    :cond_9
    const/16 v0, 0x160

    if-ne p1, v0, :cond_a

    const/16 v0, 0x120

    if-ne p2, v0, :cond_a

    .line 669
    const-string v0, "VGA"

    iput-object v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 670
    const v0, 0x3ee66666

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 671
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 672
    :cond_a
    const/16 v0, 0x140

    if-ne p1, v0, :cond_b

    const/16 v0, 0xf0

    if-ne p2, v0, :cond_b

    .line 673
    const/16 v0, 0x140

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mWidth:I

    .line 674
    const/16 v0, 0xf0

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mHeight:I

    .line 675
    const-string v0, "QVGA"

    iput-object v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 676
    const v0, 0x3e19999a

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 677
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 678
    :cond_b
    const/16 v0, 0xb0

    if-ne p1, v0, :cond_c

    const/16 v0, 0x90

    if-ne p2, v0, :cond_c

    .line 679
    const-string v0, "QCIF"

    iput-object v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 680
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 681
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 683
    :cond_c
    const/16 v0, 0x500

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mWidth:I

    .line 684
    const/16 v0, 0x3c0

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mHeight:I

    .line 685
    const-string v0, "1280x960"

    iput-object v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 686
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 687
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0
.end method

.method public update(Ljava/lang/String;)V
    .locals 6
    .parameter "mString"

    .prologue
    const/high16 v5, 0x4100

    const/high16 v4, 0x40a0

    const/16 v3, 0x2d0

    const/high16 v2, 0x3f40

    const/4 v1, 0x0

    .line 540
    iput-object p1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 541
    const-string v0, "EightMPW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3264x1840"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    :cond_0
    const/16 v0, 0xcc0

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mWidth:I

    .line 544
    const/16 v0, 0x730

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mHeight:I

    .line 545
    iput v5, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 546
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    .line 617
    :goto_0
    return-void

    .line 548
    :cond_1
    const-string v0, "EightMP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "3264x2448"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 550
    :cond_2
    const/16 v0, 0xcc0

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mWidth:I

    .line 551
    const/16 v0, 0x990

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mHeight:I

    .line 552
    iput v5, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 553
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 555
    :cond_3
    const-string v0, "FiveMPW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "2592x1456"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 556
    :cond_4
    const/16 v0, 0xa20

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mWidth:I

    .line 557
    const/16 v0, 0x5b0

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mHeight:I

    .line 558
    iput v4, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 559
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 560
    :cond_5
    const-string v0, "FiveMP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "2592x1936"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 561
    :cond_6
    const/16 v0, 0xa20

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mWidth:I

    .line 562
    const/16 v0, 0x790

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mHeight:I

    .line 563
    iput v4, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 564
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 565
    :cond_7
    const-string v0, "ThreeMP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "2048x1536"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 566
    :cond_8
    const/16 v0, 0x800

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mWidth:I

    .line 567
    const/16 v0, 0x600

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mHeight:I

    .line 568
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 569
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 570
    :cond_9
    const-string v0, "TwoMP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "1600x1200"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 571
    :cond_a
    const/16 v0, 0x640

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mWidth:I

    .line 572
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mHeight:I

    .line 573
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 574
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 575
    :cond_b
    const-string v0, "720p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 576
    const/16 v0, 0x500

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mWidth:I

    .line 577
    iput v3, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mHeight:I

    .line 578
    iput v2, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 579
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 580
    :cond_c
    const-string v0, "PAL_D1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 581
    iput v3, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mWidth:I

    .line 582
    const/16 v0, 0x240

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mHeight:I

    .line 583
    iput v2, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 584
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 585
    :cond_d
    const-string v0, "NTSC_D1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 586
    iput v3, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mWidth:I

    .line 587
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mHeight:I

    .line 588
    iput v2, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 589
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 590
    :cond_e
    const-string v0, "VGA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 591
    const/16 v0, 0x280

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mWidth:I

    .line 592
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mHeight:I

    .line 593
    const v0, 0x3f19999a

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 594
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 595
    :cond_f
    const-string v0, "CIF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 596
    const/16 v0, 0x160

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mWidth:I

    .line 597
    const/16 v0, 0x120

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mHeight:I

    .line 598
    const v0, 0x3ee66666

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 599
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 600
    :cond_10
    const-string v0, "QVGA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 601
    const/16 v0, 0x140

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mWidth:I

    .line 602
    const/16 v0, 0xf0

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mHeight:I

    .line 603
    const v0, 0x3e19999a

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 604
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 605
    :cond_11
    const-string v0, "QCIF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 606
    const/16 v0, 0xb0

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mWidth:I

    .line 607
    const/16 v0, 0x90

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mHeight:I

    .line 608
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 609
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 611
    :cond_12
    const/16 v0, 0x500

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mWidth:I

    .line 612
    const/16 v0, 0x3c0

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mHeight:I

    .line 613
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mSize:F

    .line 614
    iput-boolean v1, p0, Lcom/motorola/CameraF/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0
.end method
