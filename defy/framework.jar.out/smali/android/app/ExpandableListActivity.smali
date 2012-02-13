.class public Landroid/app/ExpandableListActivity;
.super Landroid/app/Activity;
.source "ExpandableListActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupCollapseListener;
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# instance fields
.field mAdapter:Landroid/widget/ExpandableListAdapter;

.field mFinishedStart:Z

.field mList:Landroid/widget/ExpandableListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ExpandableListActivity;->mFinishedStart:Z

    return-void
.end method

.method private ensureList()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x1090001

    invoke-virtual {p0, v0}, Landroid/app/ExpandableListActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListView()Landroid/widget/ExpandableListView;
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;->ensureList()V

    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method public getSelectedId()J
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getSelectedId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedPosition()J
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getSelectedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    const v1, 0x1020004

    invoke-virtual {p0, v1}, Landroid/app/ExpandableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, emptyView:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/app/ExpandableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ExpandableListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    iget-object v1, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, p0}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    iget-object v1, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, p0}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    iget-boolean v1, p0, Landroid/app/ExpandableListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/ExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-virtual {p0, v1}, Landroid/app/ExpandableListActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/ExpandableListActivity;->mFinishedStart:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    return-void
.end method

.method public onGroupCollapse(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    return-void
.end method

.method public onGroupExpand(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;->ensureList()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;->ensureList()V

    iput-object p1, p0, Landroid/app/ExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelectedChild(IIZ)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "shouldExpandGroup"

    .prologue
    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/ExpandableListView;->setSelectedChild(IIZ)Z

    move-result v0

    return v0
.end method

.method public setSelectedGroup(I)V
    .locals 1
    .parameter "groupPosition"

    .prologue
    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setSelectedGroup(I)V

    return-void
.end method
