.class public abstract Landroid/widget/ResourceCursorTreeAdapter;
.super Landroid/widget/CursorTreeAdapter;
.source "ResourceCursorTreeAdapter.java"


# instance fields
.field private mChildLayout:I

.field private mCollapsedGroupLayout:I

.field private mExpandedGroupLayout:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastChildLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;II)V
    .locals 7
    .parameter "context"
    .parameter "cursor"
    .parameter "groupLayout"
    .parameter "childLayout"

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p3

    move v5, p4

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/widget/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;IIII)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;III)V
    .locals 7
    .parameter "context"
    .parameter "cursor"
    .parameter "collapsedGroupLayout"
    .parameter "expandedGroupLayout"
    .parameter "childLayout"

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;IIII)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;IIII)V
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "collapsedGroupLayout"
    .parameter "expandedGroupLayout"
    .parameter "childLayout"
    .parameter "lastChildLayout"

    .prologue
    .line 53
    invoke-direct {p0, p2, p1}, Landroid/widget/CursorTreeAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;)V

    .line 55
    iput p3, p0, Landroid/widget/ResourceCursorTreeAdapter;->mCollapsedGroupLayout:I

    .line 56
    iput p4, p0, Landroid/widget/ResourceCursorTreeAdapter;->mExpandedGroupLayout:I

    .line 57
    iput p5, p0, Landroid/widget/ResourceCursorTreeAdapter;->mChildLayout:I

    .line 58
    iput p6, p0, Landroid/widget/ResourceCursorTreeAdapter;->mLastChildLayout:I

    .line 60
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/ResourceCursorTreeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 61
    return-void
.end method


# virtual methods
.method public newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"
    .parameter "parent"

    .prologue
    .line 100
    iget-object v0, p0, Landroid/widget/ResourceCursorTreeAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-eqz p3, :cond_0

    iget v1, p0, Landroid/widget/ResourceCursorTreeAdapter;->mLastChildLayout:I

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    iget v1, p0, Landroid/widget/ResourceCursorTreeAdapter;->mChildLayout:I

    goto :goto_0
.end method

.method public newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"
    .parameter "parent"

    .prologue
    .line 105
    iget-object v0, p0, Landroid/widget/ResourceCursorTreeAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-eqz p3, :cond_0

    iget v1, p0, Landroid/widget/ResourceCursorTreeAdapter;->mExpandedGroupLayout:I

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    iget v1, p0, Landroid/widget/ResourceCursorTreeAdapter;->mCollapsedGroupLayout:I

    goto :goto_0
.end method
