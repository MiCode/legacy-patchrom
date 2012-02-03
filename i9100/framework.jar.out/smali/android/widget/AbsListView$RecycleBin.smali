.class Landroid/widget/AbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 5107
    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5121
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$3800(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5107
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$3802(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5107
    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-object p1
.end method

.method static synthetic access$3900(Landroid/widget/AbsListView$RecycleBin;)[Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5107
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/widget/AbsListView$RecycleBin;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5107
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4100(Landroid/widget/AbsListView$RecycleBin;)[Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5107
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    return-object v0
.end method

.method private pruneScrapViews()V
    .locals 12

    .prologue
    .line 5346
    iget-object v9, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v3, v9

    .line 5347
    .local v3, maxViews:I
    iget v8, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 5348
    .local v8, viewTypeCount:I
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 5349
    .local v5, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v8, :cond_1

    .line 5350
    aget-object v4, v5, v1

    .line 5351
    .local v4, scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 5352
    .local v6, size:I
    sub-int v0, v6, v3

    .line 5353
    .local v0, extras:I
    add-int/lit8 v6, v6, -0x1

    .line 5354
    const/4 v2, 0x0

    .local v2, j:I
    move v7, v6

    .end local v6           #size:I
    .local v7, size:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 5355
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    add-int/lit8 v6, v7, -0x1

    .end local v7           #size:I
    .restart local v6       #size:I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    const/4 v11, 0x0

    #calls: Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v10, v9, v11}, Landroid/widget/AbsListView;->access$4600(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 5354
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6           #size:I
    .restart local v7       #size:I
    goto :goto_1

    .line 5349
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5358
    .end local v0           #extras:I
    .end local v2           #j:I
    .end local v4           #scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7           #size:I
    :cond_1
    return-void
.end method


# virtual methods
.method addScrapView(Landroid/view/View;)V
    .locals 4
    .parameter "scrap"

    .prologue
    .line 5267
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 5268
    .local v0, lp:Landroid/widget/AbsListView$LayoutParams;
    if-nez v0, :cond_1

    .line 5293
    :cond_0
    :goto_0
    return-void

    .line 5274
    :cond_1
    iget v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 5275
    .local v1, viewType:I
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5276
    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    .line 5277
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    #calls: Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v2, p1, v3}, Landroid/widget/AbsListView;->access$4400(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    goto :goto_0

    .line 5282
    :cond_2
    iget v2, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 5283
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 5284
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5290
    :goto_1
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    if-eqz v2, :cond_0

    .line 5291
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {v2, p1}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_0

    .line 5286
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 5287
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method clear()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 5173
    iget v5, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    if-ne v5, v7, :cond_0

    .line 5174
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 5175
    .local v2, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5176
    .local v3, scrapCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 5177
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    sub-int v5, v3, v7

    sub-int/2addr v5, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    #calls: Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v8}, Landroid/widget/AbsListView;->access$4200(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 5176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5180
    .end local v0           #i:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    :cond_0
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 5181
    .local v4, typeCount:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 5182
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 5183
    .restart local v2       #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5184
    .restart local v3       #scrapCount:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v3, :cond_1

    .line 5185
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    sub-int v5, v3, v7

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    #calls: Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v8}, Landroid/widget/AbsListView;->access$4300(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 5184
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5181
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5189
    .end local v1           #j:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    .end local v4           #typeCount:I
    :cond_2
    return-void
.end method

.method fillActiveViews(II)V
    .locals 6
    .parameter "childCount"
    .parameter "firstActivePosition"

    .prologue
    .line 5199
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_0

    .line 5200
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 5202
    :cond_0
    iput p2, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    .line 5204
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 5205
    .local v0, activeViews:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 5206
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5207
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 5209
    .local v3, lp:Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_1

    iget v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    .line 5212
    aput-object v1, v0, v2

    .line 5205
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5215
    .end local v1           #child:Landroid/view/View;
    .end local v3           #lp:Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 5225
    iget v3, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v3

    .line 5226
    .local v1, index:I
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 5227
    .local v0, activeViews:[Landroid/view/View;
    if-ltz v1, :cond_0

    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 5228
    aget-object v2, v0, v1

    .line 5229
    .local v2, match:Landroid/view/View;
    aput-object v4, v0, v1

    move-object v3, v2

    .line 5232
    .end local v2           #match:Landroid/view/View;
    :goto_0
    return-object v3

    :cond_0
    move-object v3, v4

    goto :goto_0
.end method

.method getScrapView(I)Landroid/view/View;
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 5240
    iget v3, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    if-ne v3, v4, :cond_1

    .line 5241
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 5242
    .local v0, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5243
    .local v1, size:I
    if-lez v1, :cond_0

    .line 5244
    sub-int v3, v1, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    move-object v3, p0

    .line 5258
    .end local v0           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1           #size:I
    :goto_0
    return-object v3

    .restart local v0       #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v1       #size:I
    .restart local p0
    :cond_0
    move-object v3, v5

    .line 5246
    goto :goto_0

    .line 5249
    .end local v0           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1           #size:I
    :cond_1
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 5250
    .local v2, whichScrap:I
    if-ltz v2, :cond_2

    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 5251
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v0, v3, v2

    .line 5252
    .restart local v0       #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5253
    .restart local v1       #size:I
    if-lez v1, :cond_2

    .line 5254
    sub-int v3, v1, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    move-object v3, p0

    goto :goto_0

    .end local v0           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1           #size:I
    .restart local p0
    :cond_2
    move-object v3, v5

    .line 5258
    goto :goto_0
.end method

.method public markChildrenDirty()V
    .locals 7

    .prologue
    .line 5147
    iget v5, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 5148
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 5149
    .local v2, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5150
    .local v3, scrapCount:I
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 5151
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 5150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5154
    .end local v0           #i:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    .restart local p0
    :cond_0
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 5155
    .local v4, typeCount:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 5156
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 5157
    .restart local v2       #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5158
    .restart local v3       #scrapCount:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v3, :cond_1

    .line 5159
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    .line 5158
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5155
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5163
    .end local v1           #j:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    .end local v4           #typeCount:I
    .end local p0
    :cond_2
    return-void
.end method

.method reclaimScrapViews(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5364
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 5365
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5374
    :cond_0
    return-void

    .line 5367
    :cond_1
    iget v3, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 5368
    .local v3, viewTypeCount:I
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 5369
    .local v2, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 5370
    aget-object v1, v2, v0

    .line 5371
    .local v1, scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method scrapActiveViews()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 5299
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 5300
    .local v0, activeViews:[Landroid/view/View;
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    if-eqz v8, :cond_1

    move v2, v9

    .line 5301
    .local v2, hasListener:Z
    :goto_0
    iget v8, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    if-le v8, v9, :cond_2

    move v4, v9

    .line 5303
    .local v4, multipleScraps:Z
    :goto_1
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 5304
    .local v5, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 5305
    .local v1, count:I
    sub-int v3, v1, v9

    .local v3, i:I
    :goto_2
    if-ltz v3, :cond_5

    .line 5306
    aget-object v6, v0, v3

    .line 5307
    .local v6, victim:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 5308
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/AbsListView$LayoutParams;

    iget v7, v8, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 5310
    .local v7, whichScrap:I
    const/4 v8, 0x0

    aput-object v8, v0, v3

    .line 5312
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 5314
    const/4 v8, -0x2

    if-eq v7, v8, :cond_0

    .line 5315
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    #calls: Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v8, v6, v10}, Landroid/widget/AbsListView;->access$4500(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 5305
    .end local v7           #whichScrap:I
    :cond_0
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .end local v1           #count:I
    .end local v2           #hasListener:Z
    .end local v3           #i:I
    .end local v4           #multipleScraps:Z
    .end local v5           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6           #victim:Landroid/view/View;
    :cond_1
    move v2, v10

    .line 5300
    goto :goto_0

    .restart local v2       #hasListener:Z
    :cond_2
    move v4, v10

    .line 5301
    goto :goto_1

    .line 5320
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v4       #multipleScraps:Z
    .restart local v5       #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v6       #victim:Landroid/view/View;
    .restart local v7       #whichScrap:I
    :cond_3
    if-eqz v4, :cond_4

    .line 5321
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v5, v8, v7

    .line 5323
    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 5324
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5326
    if-eqz v2, :cond_0

    .line 5327
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {v8, v6}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_3

    .line 5338
    .end local v6           #victim:Landroid/view/View;
    .end local v7           #whichScrap:I
    :cond_5
    invoke-direct {p0}, Landroid/widget/AbsListView$RecycleBin;->pruneScrapViews()V

    .line 5339
    return-void
.end method

.method setCacheColorHint(I)V
    .locals 10
    .parameter "color"

    .prologue
    .line 5382
    iget v8, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 5383
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 5384
    .local v4, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 5385
    .local v5, scrapCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 5386
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 5385
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5389
    .end local v2           #i:I
    .end local v4           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5           #scrapCount:I
    :cond_0
    iget v6, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 5390
    .local v6, typeCount:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 5391
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v8, v2

    .line 5392
    .restart local v4       #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 5393
    .restart local v5       #scrapCount:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    if-ge v3, v5, :cond_1

    .line 5394
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 5393
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5390
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5399
    .end local v3           #j:I
    .end local v4           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5           #scrapCount:I
    .end local v6           #typeCount:I
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 5400
    .local v0, activeViews:[Landroid/view/View;
    array-length v1, v0

    .line 5401
    .local v1, count:I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_4

    .line 5402
    aget-object v7, v0, v2

    .line 5403
    .local v7, victim:Landroid/view/View;
    if-eqz v7, :cond_3

    .line 5404
    invoke-virtual {v7, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 5401
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5407
    .end local v7           #victim:Landroid/view/View;
    :cond_4
    return-void
.end method

.method public setViewTypeCount(I)V
    .locals 4
    .parameter "viewTypeCount"

    .prologue
    .line 5133
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 5134
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5137
    :cond_0
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 5138
    .local v1, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 5139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 5138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5141
    :cond_1
    iput p1, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 5142
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 5143
    iput-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 5144
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .locals 1
    .parameter "viewType"

    .prologue
    .line 5166
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
