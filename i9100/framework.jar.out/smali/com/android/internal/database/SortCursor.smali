.class public Lcom/android/internal/database/SortCursor;
.super Landroid/database/AbstractCursor;
.source "SortCursor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SortCursor"


# instance fields
.field private final ROWCACHESIZE:I

.field private mCurRowNumCache:[[I

.field private mCursor:Landroid/database/Cursor;

.field private mCursorCache:[I

.field private mCursors:[Landroid/database/Cursor;

.field private mLastCacheHit:I

.field private mObserver:Landroid/database/DataSetObserver;

.field private mRowNumCache:[I

.field private mSortColumns:[I


# direct methods
.method public constructor <init>([Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 8
    .parameter "cursors"
    .parameter "sortcolumn"

    .prologue
    const/16 v7, 0x40

    .line 56
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 34
    iput v7, p0, Lcom/android/internal/database/SortCursor;->ROWCACHESIZE:I

    .line 35
    new-array v5, v7, [I

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    .line 36
    new-array v5, v7, [I

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursorCache:[I

    .line 38
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    .line 40
    new-instance v5, Lcom/android/internal/database/SortCursor$1;

    invoke-direct {v5, p0}, Lcom/android/internal/database/SortCursor$1;-><init>(Lcom/android/internal/database/SortCursor;)V

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    .line 57
    iput-object p1, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 59
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v3, v5

    .line 60
    .local v3, length:I
    new-array v5, v3, [I

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    .line 61
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 62
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v1

    if-nez v5, :cond_0

    .line 61
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_0
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/android/internal/database/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v5, v6}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 67
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v1

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 70
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    iget-object v6, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v6, v6, v1

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v1

    goto :goto_1

    .line 72
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 73
    const-string v4, ""

    .line 74
    .local v4, smallest:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    if-ge v2, v3, :cond_5

    .line 75
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v2

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v2

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 74
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 77
    :cond_3
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    aget v6, v6, v2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, current:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_2

    .line 79
    :cond_4
    move-object v4, v0

    .line 80
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v2

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    goto :goto_3

    .line 84
    .end local v0           #current:Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    array-length v5, v5

    const/4 v6, 0x1

    sub-int v1, v5, v6

    :goto_4
    if-ltz v1, :cond_6

    .line 85
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    const/4 v6, -0x2

    aput v6, v5, v1

    .line 84
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 87
    :cond_6
    filled-new-array {v7, v3}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    .line 88
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/database/SortCursor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Landroid/database/AbstractCursor;->mPos:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/database/SortCursor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Landroid/database/AbstractCursor;->mPos:I

    return p1
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 280
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 281
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 282
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 281
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_0
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 285
    :cond_1
    return-void
.end method

.method public commitUpdates()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 192
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 193
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 194
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->commitUpdates()Z

    .line 193
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/internal/database/SortCursor;->onChange(Z)V

    .line 199
    return v3
.end method

.method public deactivate()V
    .locals 3

    .prologue
    .line 271
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 272
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 273
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 272
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_0
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    goto :goto_1

    .line 276
    :cond_1
    return-void
.end method

.method public deleteRow()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deleteRow()Z

    move-result v0

    return v0
.end method

.method public getBlob(I)[B
    .locals 1
    .parameter "column"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 253
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 261
    :goto_0
    return-object v2

    .line 258
    :cond_0
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 259
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 260
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 261
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 259
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 264
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No cursor that can return names"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, count:I
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v2, v3

    .line 95
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 96
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 97
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 95
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_1
    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "column"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "column"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 13
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x1

    .line 106
    if-ne p1, p2, :cond_0

    move v8, v11

    .line 181
    :goto_0
    return v8

    .line 117
    :cond_0
    rem-int/lit8 v0, p2, 0x40

    .line 119
    .local v0, cache_entry:I
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    aget v8, v8, v0

    if-ne v8, p2, :cond_2

    .line 120
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursorCache:[I

    aget v7, v8, v0

    .line 121
    .local v7, which:I
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v7

    iput-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 122
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    if-nez v8, :cond_1

    .line 123
    const-string v8, "SortCursor"

    const-string/jumbo v9, "onMove: cache results in a null cursor."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v8, 0x0

    goto :goto_0

    .line 126
    :cond_1
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    aget-object v9, v9, v0

    aget v9, v9, v7

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 127
    iput v0, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    move v8, v11

    .line 128
    goto :goto_0

    .line 131
    .end local v7           #which:I
    :cond_2
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 132
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v4, v8

    .line 134
    .local v4, length:I
    iget v8, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    if-ltz v8, :cond_4

    .line 135
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 136
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v2

    if-nez v8, :cond_3

    .line 135
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 137
    :cond_3
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v2

    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    iget v10, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    aget-object v9, v9, v10

    aget v9, v9, v2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_2

    .line 141
    .end local v2           #i:I
    :cond_4
    if-lt p2, p1, :cond_5

    if-ne p1, v12, :cond_8

    .line 142
    :cond_5
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    if-ge v2, v4, :cond_7

    .line 143
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v2

    if-nez v8, :cond_6

    .line 142
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 144
    :cond_6
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_4

    .line 146
    :cond_7
    const/4 p1, 0x0

    .line 148
    .end local v2           #i:I
    :cond_8
    if-gez p1, :cond_9

    .line 149
    const/4 p1, 0x0

    .line 153
    :cond_9
    const/4 v6, -0x1

    .line 154
    .local v6, smallestIdx:I
    move v2, p1

    .restart local v2       #i:I
    :goto_5
    if-gt v2, p2, :cond_e

    .line 155
    const-string v5, ""

    .line 156
    .local v5, smallest:Ljava/lang/String;
    const/4 v6, -0x1

    .line 157
    const/4 v3, 0x0

    .local v3, j:I
    :goto_6
    if-ge v3, v4, :cond_d

    .line 158
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v3

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v3

    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 157
    :cond_a
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 161
    :cond_b
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v3

    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    aget v9, v9, v3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, current:Ljava/lang/String;
    if-ltz v6, :cond_c

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_a

    .line 163
    :cond_c
    move-object v5, v1

    .line 164
    move v6, v3

    goto :goto_7

    .line 167
    .end local v1           #current:Ljava/lang/String;
    :cond_d
    if-ne v2, p2, :cond_10

    .line 172
    .end local v3           #j:I
    .end local v5           #smallest:Ljava/lang/String;
    :cond_e
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v6

    iput-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 173
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    aput p2, v8, v0

    .line 174
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursorCache:[I

    aput v6, v8, v0

    .line 175
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v4, :cond_12

    .line 176
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v2

    if-eqz v8, :cond_f

    .line 177
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    aget-object v8, v8, v0

    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v2

    invoke-interface {v9}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    aput v9, v8, v2

    .line 175
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 168
    .restart local v3       #j:I
    .restart local v5       #smallest:Ljava/lang/String;
    :cond_10
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v6

    if-eqz v8, :cond_11

    .line 169
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v6

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 154
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 180
    .end local v3           #j:I
    .end local v5           #smallest:Ljava/lang/String;
    :cond_12
    iput v12, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    move v8, v11

    .line 181
    goto/16 :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 289
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 290
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 291
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 292
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 290
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_1
    return-void
.end method

.method public requery()Z
    .locals 3

    .prologue
    .line 310
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 311
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 312
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 311
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_1
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v2

    if-nez v2, :cond_0

    .line 315
    const/4 v2, 0x0

    .line 319
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 299
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 300
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 301
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 302
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 300
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_1
    return-void
.end method
