.class Lcom/android/settings/WeeklyRepeatList$2;
.super Ljava/lang/Object;
.source "WeeklyRepeatList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 69
    iput-object p1, p0, Lcom/android/settings/WeeklyRepeatList$2;->this$0:Lcom/android/settings/WeeklyRepeatList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 71
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 75
    .local v3, intent:Landroid/content/Intent;
    new-array v5, v10, [I

    fill-array-data v5, :array_0

    .line 76
    .local v5, ret:[I
    iget-object v7, p0, Lcom/android/settings/WeeklyRepeatList$2;->this$0:Lcom/android/settings/WeeklyRepeatList;

    #getter for: Lcom/android/settings/WeeklyRepeatList;->mAdapter:Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;
    invoke-static {v7}, Lcom/android/settings/WeeklyRepeatList;->access$000(Lcom/android/settings/WeeklyRepeatList;)Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->getSelectedItemPos()I

    move-result v7

    aput v7, v5, v8

    .line 77
    aget v7, v5, v8

    if-ne v7, v9, :cond_1

    .line 78
    const/16 v7, 0x7f

    aput v7, v5, v9

    .line 98
    :cond_0
    :goto_0
    const-string v7, "day_info"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 99
    iget-object v7, p0, Lcom/android/settings/WeeklyRepeatList$2;->this$0:Lcom/android/settings/WeeklyRepeatList;

    const/4 v8, -0x1

    invoke-virtual {v7, v8, v3}, Lcom/android/settings/WeeklyRepeatList;->setResult(ILandroid/content/Intent;)V

    .line 100
    iget-object v7, p0, Lcom/android/settings/WeeklyRepeatList$2;->this$0:Lcom/android/settings/WeeklyRepeatList;

    invoke-virtual {v7}, Lcom/android/settings/WeeklyRepeatList;->finish()V

    .line 101
    return-void

    .line 79
    :cond_1
    aget v7, v5, v8

    if-ne v7, v10, :cond_2

    .line 80
    const/16 v7, 0x3e

    aput v7, v5, v9

    goto :goto_0

    .line 81
    :cond_2
    aget v7, v5, v8

    if-nez v7, :cond_3

    .line 82
    const/16 v7, 0x80

    aput v7, v5, v9

    goto :goto_0

    .line 83
    :cond_3
    aget v7, v5, v8

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 84
    iget-object v7, p0, Lcom/android/settings/WeeklyRepeatList$2;->this$0:Lcom/android/settings/WeeklyRepeatList;

    #getter for: Lcom/android/settings/WeeklyRepeatList;->mAdapter:Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;
    invoke-static {v7}, Lcom/android/settings/WeeklyRepeatList;->access$000(Lcom/android/settings/WeeklyRepeatList;)Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->getWeeklyLayout()Landroid/widget/LinearLayout;

    move-result-object v6

    .line 85
    .local v6, weeklyLayout:Landroid/widget/LinearLayout;
    const v7, 0x7f0b00ee

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;

    .line 86
    .local v0, bar:Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;
    const/4 v4, 0x1

    .line 87
    .local v4, mask:I
    const/4 v2, 0x6

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_5

    .line 88
    invoke-virtual {v0, v2}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->isDailyItemCheckedAt(I)Z

    move-result v1

    .line 89
    .local v1, checked:Z
    if-eqz v1, :cond_4

    .line 90
    aget v7, v5, v9

    or-int/lit8 v7, v7, 0x1

    aput v7, v5, v9

    .line 92
    :cond_4
    aget v7, v5, v9

    shl-int/lit8 v7, v7, 0x1

    aput v7, v5, v9

    .line 87
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 95
    .end local v1           #checked:Z
    :cond_5
    aget v7, v5, v9

    shr-int/lit8 v7, v7, 0x1

    aput v7, v5, v9

    goto :goto_0

    .line 75
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
