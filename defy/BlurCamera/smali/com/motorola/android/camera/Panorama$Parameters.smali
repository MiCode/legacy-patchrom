.class public Lcom/motorola/android/camera/Panorama$Parameters;
.super Ljava/lang/Object;
.source "Panorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/camera/Panorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Parameters"
.end annotation


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/motorola/android/camera/Panorama;


# direct methods
.method private constructor <init>(Lcom/motorola/android/camera/Panorama;)V
    .locals 1
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/motorola/android/camera/Panorama$Parameters;->this$0:Lcom/motorola/android/camera/Panorama;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/camera/Panorama$Parameters;->mMap:Ljava/util/HashMap;

    .line 432
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/camera/Panorama;Lcom/motorola/android/camera/Panorama$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/motorola/android/camera/Panorama$Parameters;-><init>(Lcom/motorola/android/camera/Panorama;)V

    return-void
.end method


# virtual methods
.method public flatten()Ljava/lang/String;
    .locals 5

    .prologue
    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    .local v0, flattened:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/motorola/android/camera/Panorama$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 445
    .local v2, k:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    iget-object v3, p0, Lcom/motorola/android/camera/Panorama$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 451
    .end local v2           #k:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxShotNumber()I
    .locals 1

    .prologue
    .line 592
    const-string v0, "supported-max-shot-number"

    invoke-virtual {p0, v0}, Lcom/motorola/android/camera/Panorama$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPanoramaMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 610
    const-string v0, "panorama-mode"

    invoke-virtual {p0, v0}, Lcom/motorola/android/camera/Panorama$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPanoramaResolution()Lcom/motorola/android/camera/Panorama$Size;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 547
    const-string v2, "panorama-resolution"

    invoke-virtual {p0, v2}, Lcom/motorola/android/camera/Panorama$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, pair:Ljava/lang/String;
    if-nez v1, :cond_0

    move-object v2, v4

    .line 554
    :goto_0
    return-object v2

    .line 550
    :cond_0
    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, dims:[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    move-object v2, v4

    .line 552
    goto :goto_0

    .line 554
    :cond_1
    new-instance v2, Lcom/motorola/android/camera/Panorama$Size;

    iget-object v3, p0, Lcom/motorola/android/camera/Panorama$Parameters;->this$0:Lcom/motorola/android/camera/Panorama;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/motorola/android/camera/Panorama$Size;-><init>(Lcom/motorola/android/camera/Panorama;II)V

    goto :goto_0
.end method

.method public getShotNumber()I
    .locals 1

    .prologue
    .line 583
    const-string v0, "shot-number"

    invoke-virtual {p0, v0}, Lcom/motorola/android/camera/Panorama$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSupportedPanoramaMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 619
    const-string v0, "supported-panorama-mode"

    invoke-virtual {p0, v0}, Lcom/motorola/android/camera/Panorama$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedPanoramaResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    const-string v0, "supported-panorama-resolution"

    invoke-virtual {p0, v0}, Lcom/motorola/android/camera/Panorama$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$Parameters;->mMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "key"
    .parameter "value"

    .prologue
    const/16 v3, 0x3d

    const/16 v2, 0x3b

    const/4 v1, -0x1

    const-string v5, "Panorama"

    const-string v4, "\" contains invalid character (= or ;)"

    .line 488
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 489
    :cond_0
    const-string v0, "Panorama"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" contains invalid character (= or ;)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :goto_0
    return-void

    .line 492
    :cond_1
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 493
    :cond_2
    const-string v0, "Panorama"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" contains invalid character (= or ;)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 497
    :cond_3
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setPanoramaMode(Ljava/lang/String;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 601
    const-string v0, "panorama-mode"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/camera/Panorama$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method public setPanoramaResolution(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, v:Ljava/lang/String;
    const-string v1, "panorama-resolution"

    invoke-virtual {p0, v1, v0}, Lcom/motorola/android/camera/Panorama$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    return-void
.end method

.method public setShotNumber(I)V
    .locals 1
    .parameter "number"

    .prologue
    .line 574
    const-string v0, "shot-number"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/camera/Panorama$Parameters;->set(Ljava/lang/String;I)V

    .line 575
    return-void
.end method

.method public unflatten(Ljava/lang/String;)V
    .locals 9
    .parameter "flattened"

    .prologue
    .line 464
    iget-object v6, p0, Lcom/motorola/android/camera/Panorama$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 465
    const-string v6, ";"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 466
    .local v5, pairs:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 467
    .local v4, p:Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 468
    .local v2, kv:[Ljava/lang/String;
    array-length v6, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 469
    iget-object v6, p0, Lcom/motorola/android/camera/Panorama$Parameters;->mMap:Ljava/util/HashMap;

    const/4 v7, 0x0

    aget-object v7, v2, v7

    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 471
    .end local v2           #kv:[Ljava/lang/String;
    .end local v4           #p:Ljava/lang/String;
    :cond_1
    return-void
.end method
