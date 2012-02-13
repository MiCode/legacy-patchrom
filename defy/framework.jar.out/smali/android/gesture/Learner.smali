.class abstract Landroid/gesture/Learner;
.super Ljava/lang/Object;
.source "Learner.java"


# instance fields
.field private final mInstances:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/Instance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/gesture/Learner;->mInstances:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method addInstance(Landroid/gesture/Instance;)V
    .locals 1
    .parameter "instance"

    .prologue
    iget-object v0, p0, Landroid/gesture/Learner;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method abstract classify(II[F)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[F)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation
.end method

.method getInstances()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/Instance;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/gesture/Learner;->mInstances:Ljava/util/ArrayList;

    return-object v0
.end method

.method removeInstance(J)V
    .locals 6
    .parameter "id"

    .prologue
    iget-object v3, p0, Landroid/gesture/Learner;->mInstances:Ljava/util/ArrayList;

    .local v3, instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/Instance;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gesture/Instance;

    .local v2, instance:Landroid/gesture/Instance;
    iget-wide v4, v2, Landroid/gesture/Instance;->id:J

    cmp-long v4, p1, v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .end local v2           #instance:Landroid/gesture/Instance;
    :cond_0
    return-void

    .restart local v2       #instance:Landroid/gesture/Instance;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method removeInstances(Ljava/lang/String;)V
    .locals 6
    .parameter "name"

    .prologue
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, toDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/Instance;>;"
    iget-object v3, p0, Landroid/gesture/Learner;->mInstances:Ljava/util/ArrayList;

    .local v3, instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/Instance;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gesture/Instance;

    .local v2, instance:Landroid/gesture/Instance;
    iget-object v5, v2, Landroid/gesture/Instance;->label:Ljava/lang/String;

    if-nez v5, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v5, v2, Landroid/gesture/Instance;->label:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v2, Landroid/gesture/Instance;->label:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2           #instance:Landroid/gesture/Instance;
    :cond_3
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method
