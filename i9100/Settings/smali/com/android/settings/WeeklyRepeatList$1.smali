.class Lcom/android/settings/WeeklyRepeatList$1;
.super Ljava/lang/Object;
.source "WeeklyRepeatList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/WeeklyRepeatList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WeeklyRepeatList;


# direct methods
.method constructor <init>(Lcom/android/settings/WeeklyRepeatList;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/WeeklyRepeatList$1;->this$0:Lcom/android/settings/WeeklyRepeatList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/WeeklyRepeatList$1;->this$0:Lcom/android/settings/WeeklyRepeatList;

    #getter for: Lcom/android/settings/WeeklyRepeatList;->mAdapter:Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;
    invoke-static {v0}, Lcom/android/settings/WeeklyRepeatList;->access$000(Lcom/android/settings/WeeklyRepeatList;)Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->setWeeklyBarChecked(Z)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/WeeklyRepeatList$1;->this$0:Lcom/android/settings/WeeklyRepeatList;

    #getter for: Lcom/android/settings/WeeklyRepeatList;->mAdapter:Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;
    invoke-static {v0}, Lcom/android/settings/WeeklyRepeatList;->access$000(Lcom/android/settings/WeeklyRepeatList;)Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->setCheckItemAt(I)V

    .line 62
    return-void
.end method
