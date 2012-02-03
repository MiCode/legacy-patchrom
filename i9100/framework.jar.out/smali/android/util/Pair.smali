.class public Landroid/util/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field public final second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TS;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, this:Landroid/util/Pair;,"Landroid/util/Pair<TF;TS;>;"
    .local p1, first:Ljava/lang/Object;,"TF;"
    .local p2, second:Ljava/lang/Object;,"TS;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 36
    iput-object p2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Landroid/util/Pair",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, a:Ljava/lang/Object;,"TA;"
    .local p1, b:Ljava/lang/Object;,"TB;"
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    .local p0, this:Landroid/util/Pair;,"Landroid/util/Pair<TF;TS;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 45
    if-ne p1, p0, :cond_0

    move v3, v6

    .line 53
    :goto_0
    return v3

    .line 46
    :cond_0
    instance-of v3, p1, Landroid/util/Pair;

    if-nez v3, :cond_1

    move v3, v5

    goto :goto_0

    .line 49
    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/util/Pair;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .local v2, other:Landroid/util/Pair;,"Landroid/util/Pair<TF;TS;>;"
    iget-object v3, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v6

    goto :goto_0

    .line 50
    .end local v2           #other:Landroid/util/Pair;,"Landroid/util/Pair<TF;TS;>;"
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/ClassCastException;
    move v3, v5

    .line 51
    goto :goto_0

    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v2       #other:Landroid/util/Pair;,"Landroid/util/Pair<TF;TS;>;"
    :cond_2
    move v3, v5

    .line 53
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 61
    .local p0, this:Landroid/util/Pair;,"Landroid/util/Pair<TF;TS;>;"
    const/16 v0, 0x11

    .line 62
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 63
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 64
    return v0
.end method
