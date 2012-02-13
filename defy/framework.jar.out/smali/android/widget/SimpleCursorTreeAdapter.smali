.class public abstract Landroid/widget/SimpleCursorTreeAdapter;
.super Landroid/widget/ResourceCursorTreeAdapter;
.source "SimpleCursorTreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;
    }
.end annotation


# instance fields
.field private mChildFrom:[I

.field private mChildFromNames:[Ljava/lang/String;

.field private mChildTo:[I

.field private mGroupFrom:[I

.field private mGroupFromNames:[Ljava/lang/String;

.field private mGroupTo:[I

.field private mViewBinder:Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;II[Ljava/lang/String;[III[Ljava/lang/String;[I)V
    .locals 12
    .parameter "context"
    .parameter "cursor"
    .parameter "collapsedGroupLayout"
    .parameter "expandedGroupLayout"
    .parameter "groupFrom"
    .parameter "groupTo"
    .parameter "childLayout"
    .parameter "lastChildLayout"
    .parameter "childFrom"
    .parameter "childTo"

    .prologue
    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v5 .. v11}, Landroid/widget/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;IIII)V

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/SimpleCursorTreeAdapter;->init([Ljava/lang/String;[I[Ljava/lang/String;[I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;II[Ljava/lang/String;[II[Ljava/lang/String;[I)V
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "collapsedGroupLayout"
    .parameter "expandedGroupLayout"
    .parameter "groupFrom"
    .parameter "groupTo"
    .parameter "childLayout"
    .parameter "childFrom"
    .parameter "childTo"

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/widget/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;III)V

    invoke-direct {p0, p5, p6, p8, p9}, Landroid/widget/SimpleCursorTreeAdapter;->init([Ljava/lang/String;[I[Ljava/lang/String;[I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V
    .locals 0
    .parameter "context"
    .parameter "cursor"
    .parameter "groupLayout"
    .parameter "groupFrom"
    .parameter "groupTo"
    .parameter "childLayout"
    .parameter "childFrom"
    .parameter "childTo"

    .prologue
    invoke-direct {p0, p1, p2, p3, p6}, Landroid/widget/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;II)V

    invoke-direct {p0, p4, p5, p7, p8}, Landroid/widget/SimpleCursorTreeAdapter;->init([Ljava/lang/String;[I[Ljava/lang/String;[I)V

    return-void
.end method

.method private bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;[I[I)V
    .locals 7
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    iget-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mViewBinder:Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;

    .local v0, binder:Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p5

    if-ge v2, v5, :cond_5

    aget v5, p5, v2

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_2

    const/4 v1, 0x0

    .local v1, bound:Z
    if-eqz v0, :cond_0

    aget v5, p4, v2

    invoke-interface {v0, v4, p3, v5}, Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;->setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z

    move-result v1

    :cond_0
    if-nez v1, :cond_2

    aget v5, p4, v2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, text:Ljava/lang/String;
    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_3

    check-cast v4, Landroid/widget/TextView;

    .end local v4           #v:Landroid/view/View;
    invoke-virtual {p0, v4, v3}, Landroid/widget/SimpleCursorTreeAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    .end local v1           #bound:Z
    .end local v3           #text:Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v1       #bound:Z
    .restart local v3       #text:Ljava/lang/String;
    .restart local v4       #v:Landroid/view/View;
    :cond_3
    instance-of v5, v4, Landroid/widget/ImageView;

    if-eqz v5, :cond_4

    check-cast v4, Landroid/widget/ImageView;

    .end local v4           #v:Landroid/view/View;
    invoke-virtual {p0, v4, v3}, Landroid/widget/SimpleCursorTreeAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1

    .restart local v4       #v:Landroid/view/View;
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "SimpleCursorTreeAdapter can bind values only to TextView and ImageView!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v1           #bound:Z
    .end local v3           #text:Ljava/lang/String;
    .end local v4           #v:Landroid/view/View;
    :cond_5
    return-void
.end method

.method private init([Ljava/lang/String;[I[Ljava/lang/String;[I)V
    .locals 0
    .parameter "groupFromNames"
    .parameter "groupTo"
    .parameter "childFromNames"
    .parameter "childTo"

    .prologue
    iput-object p1, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFromNames:[Ljava/lang/String;

    iput-object p2, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupTo:[I

    iput-object p3, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFromNames:[Ljava/lang/String;

    iput-object p4, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildTo:[I

    return-void
.end method

.method private initFromColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 3
    .parameter "cursor"
    .parameter "fromColumnNames"
    .parameter "fromColumns"

    .prologue
    array-length v1, p2

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    aget-object v1, p2, v0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    aput v1, p3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"

    .prologue
    iget-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFrom:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFromNames:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFrom:[I

    iget-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFromNames:[Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFrom:[I

    invoke-direct {p0, p3, v0, v1}, Landroid/widget/SimpleCursorTreeAdapter;->initFromColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V

    :cond_0
    iget-object v4, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFrom:[I

    iget-object v5, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildTo:[I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorTreeAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;[I[I)V

    return-void
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"

    .prologue
    iget-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFrom:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFromNames:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFrom:[I

    iget-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFromNames:[Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFrom:[I

    invoke-direct {p0, p3, v0, v1}, Landroid/widget/SimpleCursorTreeAdapter;->initFromColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V

    :cond_0
    iget-object v4, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFrom:[I

    iget-object v5, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupTo:[I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorTreeAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;[I[I)V

    return-void
.end method

.method public getViewBinder()Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mViewBinder:Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;

    return-object v0
.end method

.method public setViewBinder(Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;)V
    .locals 0
    .parameter "viewBinder"

    .prologue
    iput-object p1, p0, Landroid/widget/SimpleCursorTreeAdapter;->mViewBinder:Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;

    return-void
.end method

.method protected setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .parameter "v"
    .parameter "value"

    .prologue
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

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
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
