.class public Landroid/graphics/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Landroid/graphics/Point;->x:I

    .line 31
    iput p2, p0, Landroid/graphics/Point;->y:I

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Landroid/graphics/Point;->x:I

    .line 36
    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 37
    return-void
.end method


# virtual methods
.method public final equals(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 67
    iget v0, p0, Landroid/graphics/Point;->x:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/graphics/Point;->y:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 71
    instance-of v2, p1, Landroid/graphics/Point;

    if-eqz v2, :cond_1

    .line 72
    move-object v0, p1

    check-cast v0, Landroid/graphics/Point;

    move-object v1, v0

    .line 73
    .local v1, p:Landroid/graphics/Point;
    iget v2, p0, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->x:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/graphics/Point;->y:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 75
    .end local v1           #p:Landroid/graphics/Point;
    :goto_0
    return v2

    .restart local v1       #p:Landroid/graphics/Point;
    :cond_0
    move v2, v4

    .line 73
    goto :goto_0

    .end local v1           #p:Landroid/graphics/Point;
    :cond_1
    move v2, v4

    .line 75
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Landroid/graphics/Point;->x:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget v1, p0, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final negate()V
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Landroid/graphics/Point;->x:I

    neg-int v0, v0

    iput v0, p0, Landroid/graphics/Point;->x:I

    .line 52
    iget v0, p0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 53
    return-void
.end method

.method public final offset(II)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 59
    iget v0, p0, Landroid/graphics/Point;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Point;->x:I

    .line 60
    iget v0, p0, Landroid/graphics/Point;->y:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 61
    return-void
.end method

.method public set(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 43
    iput p1, p0, Landroid/graphics/Point;->x:I

    .line 44
    iput p2, p0, Landroid/graphics/Point;->y:I

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Point("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
