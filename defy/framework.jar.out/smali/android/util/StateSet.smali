.class public Landroid/util/StateSet;
.super Ljava/lang/Object;
.source "StateSet.java"


# static fields
.field public static final WILD_CARD:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump([I)Ljava/lang/String;
    .locals 4
    .parameter "states"

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, sb:Ljava/lang/StringBuilder;
    array-length v0, p0

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    aget v3, p0, v1

    sparse-switch v3, :sswitch_data_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_0
    const-string v3, "W "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_1
    const-string v3, "P "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_2
    const-string v3, "S "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_3
    const-string v3, "F "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_4
    const-string v3, "E "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x101009c -> :sswitch_3
        0x101009d -> :sswitch_0
        0x101009e -> :sswitch_4
        0x10100a1 -> :sswitch_2
        0x10100a7 -> :sswitch_1
    .end sparse-switch
.end method

.method public static isWildCard([I)Z
    .locals 2
    .parameter "stateSetOrSpec"

    .prologue
    const/4 v1, 0x0

    array-length v0, p0

    if-eqz v0, :cond_0

    aget v0, p0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static stateSetMatches([II)Z
    .locals 6
    .parameter "stateSpec"
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    array-length v1, p0

    .local v1, stateSpecSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_3

    aget v2, p0, v0

    .local v2, stateSpecState:I
    if-nez v2, :cond_0

    move v3, v5

    .end local v2           #stateSpecState:I
    :goto_1
    return v3

    .restart local v2       #stateSpecState:I
    :cond_0
    if-lez v2, :cond_1

    if-eq p1, v2, :cond_2

    move v3, v4

    goto :goto_1

    :cond_1
    neg-int v3, v2

    if-ne p1, v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2           #stateSpecState:I
    :cond_3
    move v3, v5

    goto :goto_1
.end method

.method public static stateSetMatches([I[I)Z
    .locals 11
    .parameter "stateSpec"
    .parameter "stateSet"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    if-nez p1, :cond_2

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/util/StateSet;->isWildCard([I)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    move v8, v10

    :goto_0
    return v8

    :cond_1
    move v8, v9

    goto :goto_0

    :cond_2
    array-length v6, p0

    .local v6, stateSpecSize:I
    array-length v5, p1

    .local v5, stateSetSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v6, :cond_a

    aget v7, p0, v1

    .local v7, stateSpecState:I
    if-nez v7, :cond_3

    move v8, v10

    goto :goto_0

    :cond_3
    if-lez v7, :cond_4

    const/4 v3, 0x1

    .local v3, mustMatch:Z
    :goto_2
    const/4 v0, 0x0

    .local v0, found:Z
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    if-ge v2, v5, :cond_6

    aget v4, p1, v2

    .local v4, state:I
    if-nez v4, :cond_5

    if-eqz v3, :cond_6

    move v8, v9

    goto :goto_0

    .end local v0           #found:Z
    .end local v2           #j:I
    .end local v3           #mustMatch:Z
    .end local v4           #state:I
    :cond_4
    const/4 v3, 0x0

    .restart local v3       #mustMatch:Z
    neg-int v7, v7

    goto :goto_2

    .restart local v0       #found:Z
    .restart local v2       #j:I
    .restart local v4       #state:I
    :cond_5
    if-ne v4, v7, :cond_8

    if-eqz v3, :cond_7

    const/4 v0, 0x1

    .end local v4           #state:I
    :cond_6
    if-eqz v3, :cond_9

    if-nez v0, :cond_9

    move v8, v9

    goto :goto_0

    .restart local v4       #state:I
    :cond_7
    move v8, v9

    goto :goto_0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v4           #state:I
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #found:Z
    .end local v2           #j:I
    .end local v3           #mustMatch:Z
    .end local v7           #stateSpecState:I
    :cond_a
    move v8, v10

    goto :goto_0
.end method

.method public static trimStateSet([II)[I
    .locals 3
    .parameter "states"
    .parameter "newSize"

    .prologue
    const/4 v2, 0x0

    array-length v1, p0

    if-ne v1, p1, :cond_0

    move-object v1, p0

    :goto_0
    return-object v1

    :cond_0
    new-array v0, p1, [I

    .local v0, trimmedStates:[I
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    goto :goto_0
.end method
