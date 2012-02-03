.class public Landroid/database/MergeCursor;
.super Landroid/database/AbstractCursor;
.source "MergeCursor.java"


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mCursors:[Landroid/database/Cursor;

.field private mObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>([Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursors"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 27
    new-instance v1, Landroid/database/MergeCursor$1;

    invoke-direct {v1, p0}, Landroid/database/MergeCursor$1;-><init>(Landroid/database/MergeCursor;)V

    iput-object v1, p0, Landroid/database/MergeCursor;->mObserver:Landroid/database/DataSetObserver;

    .line 44
    iput-object p1, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    .line 45
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    .line 47
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 48
    iget-object v1, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 47
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    iget-object v1, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroid/database/MergeCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_1

    .line 52
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 193
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 194
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 195
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 194
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 198
    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 199
    return-void
.end method

.method public commitUpdates()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 111
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 112
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 113
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->commitUpdates()Z

    .line 112
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p0, v3}, Landroid/database/MergeCursor;->onChange(Z)V

    .line 118
    return v3
.end method

.method public deactivate()V
    .locals 3

    .prologue
    .line 182
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 183
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 184
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    .line 183
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->deactivate()V

    .line 189
    return-void
.end method

.method public deleteRow()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deleteRow()Z

    move-result v0

    return v0
.end method

.method public getBlob(I)[B
    .locals 1
    .parameter "column"

    .prologue
    .line 166
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, count:I
    iget-object v3, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v2, v3

    .line 59
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 60
    iget-object v3, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 61
    iget-object v3, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 59
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_1
    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 154
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 148
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 136
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "column"

    .prologue
    .line 142
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "column"

    .prologue
    .line 124
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 160
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 6
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 71
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, cursorStartPos:I
    iget-object v4, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v2, v4

    .line 74
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 75
    iget-object v4, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v1

    if-nez v4, :cond_0

    .line 74
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_0
    iget-object v4, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/2addr v4, v0

    if-ge p2, v4, :cond_2

    .line 80
    iget-object v4, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v1

    iput-object v4, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    .line 88
    :cond_1
    iget-object v4, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_3

    .line 89
    iget-object v4, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    sub-int v5, p2, v0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    .local v3, ret:Z
    move v4, v3

    .line 92
    .end local v3           #ret:Z
    :goto_2
    return v4

    .line 84
    :cond_2
    iget-object v4, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 92
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 203
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 204
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 205
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 206
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 204
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_1
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 222
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 223
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 224
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 225
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 223
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_1
    return-void
.end method

.method public requery()Z
    .locals 3

    .prologue
    .line 243
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 244
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 245
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 244
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    :cond_1
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v2

    if-nez v2, :cond_0

    .line 250
    const/4 v2, 0x0

    .line 254
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 212
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 213
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 214
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 213
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_1
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 232
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 233
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 234
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 235
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 233
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_1
    return-void
.end method
