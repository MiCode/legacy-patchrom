.class public Lcom/android/settings/applications/RunningProcessesView$ViewHolder;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public description:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public name:Landroid/widget/TextView;

.field public rootView:Landroid/view/View;

.field public size:Landroid/widget/TextView;

.field public uptime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    .line 160
    const v0, 0x7f0b0021

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 161
    const v0, 0x7f0b0043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->name:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f0b0045

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f0b011a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    .line 164
    const v0, 0x7f0b0012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    .line 165
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 166
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    .locals 7
    .parameter "state"
    .parameter "item"
    .parameter "builder"

    .prologue
    .line 170
    iget-object v4, p1, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 171
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 172
    .local v2, pm:Landroid/content/pm/PackageManager;
    iget-object v3, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    if-nez v3, :cond_0

    instance-of v3, p2, Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v3, :cond_0

    .line 175
    move-object v0, p2

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    invoke-virtual {v3, v2}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 176
    move-object v0, p2

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v3, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 177
    move-object v0, p2

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v3, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 179
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    new-instance v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    invoke-direct {v1}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;-><init>()V

    .line 181
    .local v1, ai:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    iput-object v3, v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    .line 182
    iput-object p2, v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    .line 183
    iput-object p0, v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 184
    iget-wide v5, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    iput-wide v5, v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    .line 185
    iget-boolean v3, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v3, :cond_2

    .line 186
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0803ae

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSizeStr:Ljava/lang/String;

    .line 191
    iget-object v3, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    if-eqz v3, :cond_1

    .line 192
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, p3}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 196
    monitor-exit v4

    return-object v1

    .line 188
    :cond_2
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 197
    .end local v1           #ai:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
