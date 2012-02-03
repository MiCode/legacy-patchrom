.class public abstract Landroid/widget/CursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "CursorAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/CursorFilter$CursorFilterClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CursorAdapter$1;,
        Landroid/widget/CursorAdapter$MyDataSetObserver;,
        Landroid/widget/CursorAdapter$ChangeObserver;
    }
.end annotation


# instance fields
.field protected mAutoRequery:Z

.field protected mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

.field protected mContext:Landroid/content/Context;

.field protected mCursor:Landroid/database/Cursor;

.field protected mCursorFilter:Landroid/widget/CursorFilter;

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field protected mDataValid:Z

.field protected mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

.field protected mRowIDColumn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "context"
    .parameter "c"

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 70
    new-instance v0, Landroid/widget/CursorAdapter$MyDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/CursorAdapter$MyDataSetObserver;-><init>(Landroid/widget/CursorAdapter;Landroid/widget/CursorAdapter$1;)V

    iput-object v0, p0, Landroid/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 2
    .parameter "context"
    .parameter "c"
    .parameter "autoRequery"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 70
    new-instance v0, Landroid/widget/CursorAdapter$MyDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/CursorAdapter$MyDataSetObserver;-><init>(Landroid/widget/CursorAdapter;Landroid/widget/CursorAdapter$1;)V

    iput-object v0, p0, Landroid/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 102
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 103
    return-void
.end method


# virtual methods
.method public abstract bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 245
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Landroid/widget/CursorAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 250
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Landroid/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 251
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 253
    :cond_1
    iput-object p1, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 254
    if-eqz p1, :cond_2

    .line 255
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 256
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 257
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/widget/CursorAdapter;->mRowIDColumn:I

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    .line 260
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 262
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/CursorAdapter;->mRowIDColumn:I

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    .line 265
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 279
    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 192
    iget-boolean v1, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    if-eqz v1, :cond_1

    .line 193
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 195
    if-nez p2, :cond_0

    .line 196
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, p3}, Landroid/widget/CursorAdapter;->newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 200
    .local v0, v:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/CursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    move-object v1, v0

    .line 203
    .end local v0           #v:Landroid/view/View;
    :goto_1
    return-object v1

    .line 198
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0

    .line 203
    .end local v0           #v:Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursorFilter:Landroid/widget/CursorFilter;

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Landroid/widget/CursorFilter;

    invoke-direct {v0, p0}, Landroid/widget/CursorFilter;-><init>(Landroid/widget/CursorFilter$CursorFilterClient;)V

    iput-object v0, p0, Landroid/widget/CursorAdapter;->mCursorFilter:Landroid/widget/CursorFilter;

    .line 319
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursorFilter:Landroid/widget/CursorFilter;

    return-object v0
.end method

.method public getFilterQueryProvider()Landroid/widget/FilterQueryProvider;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 144
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 146
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    const-wide/16 v1, 0x0

    .line 154
    iget-boolean v0, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Landroid/widget/CursorAdapter;->mRowIDColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 161
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v1

    .line 158
    goto :goto_0

    :cond_1
    move-wide v0, v1

    .line 161
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 174
    iget-boolean v1, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    if-nez v1, :cond_0

    .line 175
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "this should only be called when the cursor is valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_0
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 178
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t move cursor to position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_1
    if-nez p2, :cond_2

    .line 182
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, p3}, Landroid/widget/CursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 186
    .local v0, v:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/CursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 187
    return-object v0

    .line 184
    .end local v0           #v:Landroid/view/View;
    :cond_2
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method protected init(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 2
    .parameter "context"
    .parameter "c"
    .parameter "autoRequery"

    .prologue
    .line 106
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 107
    .local v0, cursorPresent:Z
    :goto_0
    iput-boolean p3, p0, Landroid/widget/CursorAdapter;->mAutoRequery:Z

    .line 108
    iput-object p2, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 109
    iput-boolean v0, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    .line 110
    iput-object p1, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    .line 111
    if-eqz v0, :cond_2

    const-string v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    :goto_1
    iput v1, p0, Landroid/widget/CursorAdapter;->mRowIDColumn:I

    .line 112
    new-instance v1, Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-direct {v1, p0}, Landroid/widget/CursorAdapter$ChangeObserver;-><init>(Landroid/widget/CursorAdapter;)V

    iput-object v1, p0, Landroid/widget/CursorAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    .line 113
    if-eqz v0, :cond_0

    .line 114
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 115
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 117
    :cond_0
    return-void

    .line 106
    .end local v0           #cursorPresent:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 111
    .restart local v0       #cursorPresent:Z
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 226
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Landroid/widget/CursorAdapter;->mAutoRequery:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    .line 363
    :cond_0
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1
    .parameter "constraint"

    .prologue
    .line 308
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 312
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V
    .locals 0
    .parameter "filterQueryProvider"

    .prologue
    .line 348
    iput-object p1, p0, Landroid/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    .line 349
    return-void
.end method
