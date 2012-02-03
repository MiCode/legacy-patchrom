.class public Landroid/widget/SimpleCursorAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "SimpleCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;,
        Landroid/widget/SimpleCursorAdapter$ViewBinder;
    }
.end annotation


# instance fields
.field private mCursorToStringConverter:Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;

.field protected mFrom:[I

.field private mOriginalFrom:[Ljava/lang/String;

.field private mStringConversionColumn:I

.field protected mTo:[I

.field private mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 1
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    .line 85
    iput-object p5, p0, Landroid/widget/SimpleCursorAdapter;->mTo:[I

    .line 86
    iput-object p4, p0, Landroid/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 87
    invoke-direct {p0, p4}, Landroid/widget/SimpleCursorAdapter;->findColumns([Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method private findColumns([Ljava/lang/String;)V
    .locals 5
    .parameter "from"

    .prologue
    .line 305
    iget-object v2, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    .line 307
    array-length v0, p1

    .line 308
    .local v0, count:I
    iget-object v2, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    array-length v2, v2

    if-eq v2, v0, :cond_1

    .line 309
    :cond_0
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    .line 311
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 312
    iget-object v2, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    iget-object v3, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    aget-object v4, p1, v1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    .line 317
    :cond_3
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 116
    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    .line 117
    .local v0, binder:Landroid/widget/SimpleCursorAdapter$ViewBinder;
    iget-object v8, p0, Landroid/widget/SimpleCursorAdapter;->mTo:[I

    array-length v2, v8

    .line 118
    .local v2, count:I
    iget-object v3, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    .line 119
    .local v3, from:[I
    iget-object v6, p0, Landroid/widget/SimpleCursorAdapter;->mTo:[I

    .line 121
    .local v6, to:[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_5

    .line 122
    aget v8, v6, v4

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 123
    .local v7, v:Landroid/view/View;
    if-eqz v7, :cond_2

    .line 124
    const/4 v1, 0x0

    .line 125
    .local v1, bound:Z
    if-eqz v0, :cond_0

    .line 126
    aget v8, v3, v4

    invoke-interface {v0, v7, p3, v8}, Landroid/widget/SimpleCursorAdapter$ViewBinder;->setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z

    move-result v1

    .line 129
    :cond_0
    if-nez v1, :cond_2

    .line 130
    aget v8, v3, v4

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, text:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 132
    const-string v5, ""

    .line 135
    :cond_1
    instance-of v8, v7, Landroid/widget/TextView;

    if-eqz v8, :cond_3

    .line 136
    check-cast v7, Landroid/widget/TextView;

    .end local v7           #v:Landroid/view/View;
    invoke-virtual {p0, v7, v5}, Landroid/widget/SimpleCursorAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 121
    .end local v1           #bound:Z
    .end local v5           #text:Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 137
    .restart local v1       #bound:Z
    .restart local v5       #text:Ljava/lang/String;
    .restart local v7       #v:Landroid/view/View;
    :cond_3
    instance-of v8, v7, Landroid/widget/ImageView;

    if-eqz v8, :cond_4

    .line 138
    check-cast v7, Landroid/widget/ImageView;

    .end local v7           #v:Landroid/view/View;
    invoke-virtual {p0, v7, v5}, Landroid/widget/SimpleCursorAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1

    .line 140
    .restart local v7       #v:Landroid/view/View;
    :cond_4
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " view that can be bounds by this SimpleCursorAdapter"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 146
    .end local v1           #bound:Z
    .end local v5           #text:Ljava/lang/String;
    .end local v7           #v:Landroid/view/View;
    :cond_5
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 321
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 323
    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/widget/SimpleCursorAdapter;->findColumns([Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public changeCursorAndColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 1
    .parameter "c"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 338
    iput-object p2, p0, Landroid/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 339
    iput-object p3, p0, Landroid/widget/SimpleCursorAdapter;->mTo:[I

    .line 340
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 341
    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/widget/SimpleCursorAdapter;->findColumns([Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 289
    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;

    invoke-interface {v0, p1}, Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    .line 291
    :cond_0
    iget v0, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 292
    iget v0, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 295
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getCursorToStringConverter()Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;

    return-object v0
.end method

.method public getStringConversionColumn()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    return v0
.end method

.method public getViewBinder()Landroid/widget/SimpleCursorAdapter$ViewBinder;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    return-object v0
.end method

.method public setCursorToStringConverter(Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;)V
    .locals 0
    .parameter "cursorToStringConverter"

    .prologue
    .line 273
    iput-object p1, p0, Landroid/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;

    .line 274
    return-void
.end method

.method public setStringConversionColumn(I)V
    .locals 0
    .parameter "stringConversionColumn"

    .prologue
    .line 241
    iput p1, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    .line 242
    return-void
.end method

.method public setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V
    .locals 0
    .parameter "viewBinder"

    .prologue
    .line 170
    iput-object p1, p0, Landroid/widget/SimpleCursorAdapter;->mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    .line 171
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .parameter "v"
    .parameter "value"

    .prologue
    .line 190
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 192
    .local v0, nfe:Ljava/lang/NumberFormatException;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .parameter "v"
    .parameter "text"

    .prologue
    .line 208
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    return-void
.end method
