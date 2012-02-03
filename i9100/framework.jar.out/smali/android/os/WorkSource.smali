.class public Landroid/os/WorkSource;
.super Ljava/lang/Object;
.source "WorkSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/WorkSource;",
            ">;"
        }
    .end annotation
.end field

.field static sGoneWork:Landroid/os/WorkSource;

.field static sNewbWork:Landroid/os/WorkSource;

.field static final sTmpWorkSource:Landroid/os/WorkSource;


# instance fields
.field mNum:I

.field mUids:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Landroid/os/WorkSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    .line 302
    new-instance v0, Landroid/os/WorkSource$1;

    invoke-direct {v0}, Landroid/os/WorkSource$1;-><init>()V

    sput-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "uid"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput p1, v0, v1

    aput v1, v0, v2

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 55
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/os/WorkSource;)V
    .locals 1
    .parameter "orig"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 49
    :goto_0
    return-void

    .line 43
    :cond_0
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 44
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_0
.end method

.method private addLocked(I)V
    .locals 4
    .parameter "uid"

    .prologue
    const/4 v3, 0x0

    .line 275
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v1, :cond_0

    .line 276
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 277
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    aput p1, v1, v3

    .line 278
    const/4 v1, 0x1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 289
    :goto_0
    return-void

    .line 281
    :cond_0
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 282
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 283
    .local v0, newuids:[I
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 287
    .end local v0           #newuids:[I
    :cond_1
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    aput p1, v1, v2

    .line 288
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_0
.end method

.method private updateLocked(Landroid/os/WorkSource;ZZ)Z
    .locals 12
    .parameter "other"
    .parameter "set"
    .parameter "returnNewbs"

    .prologue
    const/4 v11, 0x0

    .line 206
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 207
    .local v0, N1:I
    iget-object v7, p0, Landroid/os/WorkSource;->mUids:[I

    .line 208
    .local v7, uids1:[I
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    .line 209
    .local v1, N2:I
    iget-object v8, p1, Landroid/os/WorkSource;->mUids:[I

    .line 210
    .local v8, uids2:[I
    const/4 v2, 0x0

    .line 211
    .local v2, changed:Z
    const/4 v3, 0x0

    .line 212
    .local v3, i1:I
    const/4 v4, 0x0

    .local v4, i2:I
    :goto_0
    if-ge v4, v1, :cond_f

    .line 213
    if-ge v3, v0, :cond_0

    aget v9, v8, v4

    aget v10, v7, v3

    if-ge v9, v10, :cond_9

    .line 215
    :cond_0
    const/4 v2, 0x1

    .line 216
    if-nez v7, :cond_3

    .line 217
    const/4 v9, 0x4

    new-array v7, v9, [I

    .line 218
    aget v9, v8, v4

    aput v9, v7, v11

    .line 229
    :goto_1
    if-eqz p3, :cond_1

    .line 230
    sget-object v9, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    if-nez v9, :cond_8

    .line 231
    new-instance v9, Landroid/os/WorkSource;

    aget v10, v8, v4

    invoke-direct {v9, v10}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v9, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 236
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 237
    add-int/lit8 v3, v3, 0x1

    .line 212
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 219
    :cond_3
    array-length v9, v7

    if-lt v3, v9, :cond_6

    .line 220
    array-length v9, v7

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x2

    new-array v5, v9, [I

    .line 221
    .local v5, newuids:[I
    if-lez v3, :cond_4

    invoke-static {v7, v11, v5, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    :cond_4
    if-ge v3, v0, :cond_5

    add-int/lit8 v9, v3, 0x1

    sub-int v10, v0, v3

    invoke-static {v7, v3, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    :cond_5
    move-object v7, v5

    .line 224
    aget v9, v8, v4

    aput v9, v7, v3

    goto :goto_1

    .line 226
    .end local v5           #newuids:[I
    :cond_6
    if-ge v3, v0, :cond_7

    add-int/lit8 v9, v3, 0x1

    sub-int v10, v0, v3

    invoke-static {v7, v3, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    :cond_7
    aget v9, v8, v4

    aput v9, v7, v3

    goto :goto_1

    .line 233
    :cond_8
    sget-object v9, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aget v10, v8, v4

    invoke-direct {v9, v10}, Landroid/os/WorkSource;->addLocked(I)V

    goto :goto_2

    .line 239
    :cond_9
    if-nez p2, :cond_b

    .line 242
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 243
    if-ge v3, v0, :cond_2

    aget v9, v8, v4

    aget v10, v7, v3

    if-ge v9, v10, :cond_a

    goto :goto_3

    .line 246
    :cond_b
    move v6, v3

    .line 247
    .local v6, start:I
    :goto_4
    if-ge v3, v0, :cond_d

    aget v9, v8, v4

    aget v10, v7, v3

    if-le v9, v10, :cond_d

    .line 248
    sget-object v9, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    if-nez v9, :cond_c

    .line 249
    new-instance v9, Landroid/os/WorkSource;

    aget v10, v7, v3

    invoke-direct {v9, v10}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v9, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 253
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 251
    :cond_c
    sget-object v9, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aget v10, v7, v3

    invoke-direct {v9, v10}, Landroid/os/WorkSource;->addLocked(I)V

    goto :goto_5

    .line 255
    :cond_d
    if-ge v6, v3, :cond_e

    .line 256
    sub-int v9, v3, v6

    invoke-static {v7, v3, v7, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    sub-int v9, v3, v6

    sub-int/2addr v0, v9

    .line 258
    move v3, v6

    .line 261
    :cond_e
    if-ge v3, v0, :cond_2

    aget v9, v8, v3

    aget v10, v7, v3

    if-ne v9, v10, :cond_2

    .line 262
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 268
    .end local v6           #start:I
    :cond_f
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 269
    iput-object v7, p0, Landroid/os/WorkSource;->mUids:[I

    .line 271
    return v2
.end method


# virtual methods
.method public add(I)Z
    .locals 4
    .parameter "uid"

    .prologue
    .line 167
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v0

    .line 168
    :try_start_0
    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    iget-object v1, v1, Landroid/os/WorkSource;->mUids:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 169
    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public add(Landroid/os/WorkSource;)Z
    .locals 3
    .parameter "other"

    .prologue
    .line 151
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v0

    .line 152
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 153
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addReturningNewbs(I)Landroid/os/WorkSource;
    .locals 4
    .parameter "uid"

    .prologue
    .line 175
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v0

    .line 176
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 177
    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    iget-object v1, v1, Landroid/os/WorkSource;->mUids:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 178
    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 179
    sget-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    monitor-exit v0

    return-object v1

    .line 180
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addReturningNewbs(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 3
    .parameter "other"

    .prologue
    .line 158
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v0

    .line 159
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 160
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 161
    sget-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    monitor-exit v0

    return-object v1

    .line 162
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 77
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/os/WorkSource;)Z
    .locals 7
    .parameter "other"

    .prologue
    const/4 v6, 0x1

    .line 85
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 86
    .local v0, N:I
    iget v4, p1, Landroid/os/WorkSource;->mNum:I

    if-eq v0, v4, :cond_0

    move v4, v6

    .line 96
    :goto_0
    return v4

    .line 89
    :cond_0
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    .line 90
    .local v2, uids1:[I
    iget-object v3, p1, Landroid/os/WorkSource;->mUids:[I

    .line 91
    .local v3, uids2:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 92
    aget v4, v2, v1

    aget v5, v3, v1

    if-eq v4, v5, :cond_1

    move v4, v6

    .line 93
    goto :goto_0

    .line 91
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public get(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aget v0, v0, p1

    return v0
.end method

.method public remove(Landroid/os/WorkSource;)Z
    .locals 9
    .parameter "other"

    .prologue
    .line 184
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 185
    .local v0, N1:I
    iget-object v5, p0, Landroid/os/WorkSource;->mUids:[I

    .line 186
    .local v5, uids1:[I
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    .line 187
    .local v1, N2:I
    iget-object v6, p1, Landroid/os/WorkSource;->mUids:[I

    .line 188
    .local v6, uids2:[I
    const/4 v2, 0x0

    .line 189
    .local v2, changed:Z
    const/4 v3, 0x0

    .line 190
    .local v3, i1:I
    const/4 v4, 0x0

    .local v4, i2:I
    :goto_0
    if-ge v4, v1, :cond_2

    if-ge v3, v0, :cond_2

    .line 191
    aget v7, v6, v4

    aget v8, v5, v3

    if-ne v7, v8, :cond_0

    .line 192
    add-int/lit8 v0, v0, -0x1

    .line 193
    if-ge v3, v0, :cond_0

    add-int/lit8 v7, v3, 0x1

    sub-int v8, v0, v3

    invoke-static {v5, v7, v5, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    :cond_0
    :goto_1
    if-ge v3, v0, :cond_1

    aget v7, v6, v4

    aget v8, v5, v3

    if-le v7, v8, :cond_1

    .line 196
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 190
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 200
    :cond_2
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 202
    return v2
.end method

.method public set(I)V
    .locals 2
    .parameter "uid"

    .prologue
    .line 123
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 124
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 125
    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 126
    return-void
.end method

.method public set(Landroid/os/WorkSource;)V
    .locals 4
    .parameter "other"

    .prologue
    const/4 v3, 0x0

    .line 105
    if-nez p1, :cond_0

    .line 106
    iput v3, p0, Landroid/os/WorkSource;->mNum:I

    .line 119
    :goto_0
    return-void

    .line 109
    :cond_0
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 110
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v0, v0

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v0, v1, :cond_1

    .line 112
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_0

    .line 117
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_0
.end method

.method public setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;
    .locals 5
    .parameter "other"

    .prologue
    const/4 v4, 0x0

    .line 130
    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    .line 131
    const/4 v2, 0x0

    :try_start_0
    sput-object v2, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 132
    const/4 v2, 0x0

    sput-object v2, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 133
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 134
    sget-object v2, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    if-nez v2, :cond_0

    sget-object v2, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    if-eqz v2, :cond_1

    .line 135
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [Landroid/os/WorkSource;

    .line 136
    .local v0, diffs:[Landroid/os/WorkSource;
    const/4 v2, 0x0

    sget-object v3, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aput-object v3, v0, v2

    .line 137
    const/4 v2, 0x1

    sget-object v3, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aput-object v3, v0, v2

    .line 138
    monitor-exit v1

    move-object v1, v0

    .line 140
    .end local v0           #diffs:[Landroid/os/WorkSource;
    :goto_0
    return-object v1

    :cond_1
    monitor-exit v1

    move-object v1, v4

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 298
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 300
    return-void
.end method
