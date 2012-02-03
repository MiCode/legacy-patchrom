.class public Landroid/util/StateSet;
.super Ljava/lang/Object;
.source "StateSet.java"


# static fields
.field public static final WILD_CARD:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump([I)Ljava/lang/String;
    .locals 4
    .parameter "states"

    .prologue
    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v2, sb:Ljava/lang/StringBuilder;
    array-length v0, p0

    .line 155
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 157
    aget v3, p0, v1

    sparse-switch v3, :sswitch_data_0

    .line 155
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :sswitch_0
    const-string v3, "W "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 162
    :sswitch_1
    const-string v3, "P "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 165
    :sswitch_2
    const-string v3, "S "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 168
    :sswitch_3
    const-string v3, "F "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 171
    :sswitch_4
    const-string v3, "E "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 176
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 157
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

    .line 48
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

    .line 119
    array-length v1, p0

    .line 120
    .local v1, stateSpecSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 121
    aget v2, p0, v0

    .line 122
    .local v2, stateSpecState:I
    if-nez v2, :cond_0

    move v3, v5

    .line 138
    .end local v2           #stateSpecState:I
    :goto_1
    return v3

    .line 126
    .restart local v2       #stateSpecState:I
    :cond_0
    if-lez v2, :cond_1

    .line 127
    if-eq p1, v2, :cond_2

    move v3, v4

    .line 128
    goto :goto_1

    .line 132
    :cond_1
    neg-int v3, v2

    if-ne p1, v3, :cond_2

    move v3, v4

    .line 134
    goto :goto_1

    .line 120
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2           #stateSpecState:I
    :cond_3
    move v3, v5

    .line 138
    goto :goto_1
.end method

.method public static stateSetMatches([I[I)Z
    .locals 11
    .parameter "stateSpec"
    .parameter "stateSet"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 59
    if-nez p1, :cond_2

    .line 60
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/util/StateSet;->isWildCard([I)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    move v8, v10

    .line 108
    :goto_0
    return v8

    :cond_1
    move v8, v9

    .line 60
    goto :goto_0

    .line 62
    :cond_2
    array-length v6, p0

    .line 63
    .local v6, stateSpecSize:I
    array-length v5, p1

    .line 64
    .local v5, stateSetSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v6, :cond_a

    .line 65
    aget v7, p0, v1

    .line 66
    .local v7, stateSpecState:I
    if-nez v7, :cond_3

    move v8, v10

    .line 68
    goto :goto_0

    .line 71
    :cond_3
    if-lez v7, :cond_4

    .line 72
    const/4 v3, 0x1

    .line 78
    .local v3, mustMatch:Z
    :goto_2
    const/4 v0, 0x0

    .line 79
    .local v0, found:Z
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    if-ge v2, v5, :cond_6

    .line 80
    aget v4, p1, v2

    .line 81
    .local v4, state:I
    if-nez v4, :cond_5

    .line 83
    if-eqz v3, :cond_6

    move v8, v9

    .line 85
    goto :goto_0

    .line 75
    .end local v0           #found:Z
    .end local v2           #j:I
    .end local v3           #mustMatch:Z
    .end local v4           #state:I
    :cond_4
    const/4 v3, 0x0

    .line 76
    .restart local v3       #mustMatch:Z
    neg-int v7, v7

    goto :goto_2

    .line 91
    .restart local v0       #found:Z
    .restart local v2       #j:I
    .restart local v4       #state:I
    :cond_5
    if-ne v4, v7, :cond_8

    .line 92
    if-eqz v3, :cond_7

    .line 93
    const/4 v0, 0x1

    .line 102
    .end local v4           #state:I
    :cond_6
    if-eqz v3, :cond_9

    if-nez v0, :cond_9

    move v8, v9

    .line 105
    goto :goto_0

    .restart local v4       #state:I
    :cond_7
    move v8, v9

    .line 98
    goto :goto_0

    .line 79
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 64
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

    .line 108
    goto :goto_0
.end method

.method public static trimStateSet([II)[I
    .locals 3
    .parameter "states"
    .parameter "newSize"

    .prologue
    const/4 v2, 0x0

    .line 142
    array-length v1, p0

    if-ne v1, p1, :cond_0

    move-object v1, p0

    .line 148
    :goto_0
    return-object v1

    .line 146
    :cond_0
    new-array v0, p1, [I

    .line 147
    .local v0, trimmedStates:[I
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 148
    goto :goto_0
.end method
