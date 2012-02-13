.class Landroid/view/ViewRoot$RunQueue$HandlerAction;
.super Ljava/lang/Object;
.source "ViewRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRoot$RunQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerAction"
.end annotation


# instance fields
.field action:Ljava/lang/Runnable;

.field delay:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewRoot$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/view/ViewRoot$RunQueue$HandlerAction;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    move v2, v5

    :goto_0
    return v2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/view/ViewRoot$RunQueue$HandlerAction;

    move-object v1, v0

    .local v1, that:Landroid/view/ViewRoot$RunQueue$HandlerAction;
    iget-object v2, p0, Landroid/view/ViewRoot$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/view/ViewRoot$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    iget-object v3, v1, Landroid/view/ViewRoot$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    iget-object v2, v1, Landroid/view/ViewRoot$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    if-nez v2, :cond_3

    :cond_5
    move v2, v5

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    iget-object v1, p0, Landroid/view/ViewRoot$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRoot$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v0, v1

    .local v0, result:I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/view/ViewRoot$RunQueue$HandlerAction;->delay:J

    iget-wide v4, p0, Landroid/view/ViewRoot$RunQueue$HandlerAction;->delay:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    return v0

    .end local v0           #result:I
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
