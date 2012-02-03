.class Lcom/android/settings/WeeklyRepeatList$RepeatAdapter$1;
.super Ljava/lang/Object;
.source "WeeklyRepeatList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter$1;->this$1:Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    .line 284
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter$1;->this$1:Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;

    iget-object v1, v1, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->this$0:Lcom/android/settings/WeeklyRepeatList;

    #getter for: Lcom/android/settings/WeeklyRepeatList;->mAdapter:Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;
    invoke-static {v1}, Lcom/android/settings/WeeklyRepeatList;->access$000(Lcom/android/settings/WeeklyRepeatList;)Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter$1;->this$1:Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;

    iget-object v1, v1, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->this$0:Lcom/android/settings/WeeklyRepeatList;

    #getter for: Lcom/android/settings/WeeklyRepeatList;->mRepeatList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/settings/WeeklyRepeatList;->access$100(Lcom/android/settings/WeeklyRepeatList;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 286
    iget-object v1, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter$1;->this$1:Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;

    invoke-virtual {v1}, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->notifyDataSetChanged()V

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter$1;->this$1:Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;

    #setter for: Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->mIsWeeklyBarChecked:Z
    invoke-static {v1, v3}, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->access$302(Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;Z)Z

    .line 289
    return-void
.end method
