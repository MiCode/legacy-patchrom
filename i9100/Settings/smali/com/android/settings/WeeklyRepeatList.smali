.class public Lcom/android/settings/WeeklyRepeatList;
.super Landroid/app/Activity;
.source "WeeklyRepeatList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;
    }
.end annotation


# static fields
.field private static mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;

.field private mRepeatList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/WeeklyRepeatList;->mMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/WeeklyRepeatList;)Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/WeeklyRepeatList;->mAdapter:Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/WeeklyRepeatList;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/WeeklyRepeatList;->mRepeatList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/WeeklyRepeatList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings/WeeklyRepeatList;->restore()V

    return-void
.end method

.method private restore()V
    .locals 5

    .prologue
    .line 134
    sget-object v3, Lcom/android/settings/WeeklyRepeatList;->mMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 135
    sget-object v3, Lcom/android/settings/WeeklyRepeatList;->mMap:Ljava/util/HashMap;

    const-string v4, "instance_state_selected_item"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 136
    .local v2, selectedItem:Ljava/lang/String;
    sget-object v3, Lcom/android/settings/WeeklyRepeatList;->mMap:Ljava/util/HashMap;

    const-string v4, "instance_state_repeat"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 138
    .local v1, repeatState:I
    if-eqz v2, :cond_0

    .line 139
    iget-object v3, p0, Lcom/android/settings/WeeklyRepeatList;->mAdapter:Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;

    invoke-virtual {v3, v2}, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->setCheckItemAt(Ljava/lang/String;)V

    .line 140
    :cond_0
    iget-object v3, p0, Lcom/android/settings/WeeklyRepeatList;->mAdapter:Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;

    invoke-virtual {v3}, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->getWeeklyLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    const v4, 0x7f0b00ee

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;

    .line 141
    .local v0, bar:Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;
    invoke-virtual {v0, v1}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->setWeeklyBarState(I)V

    .line 143
    .end local v0           #bar:Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;
    .end local v1           #repeatState:I
    .end local v2           #selectedItem:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v2, 0x7f030063

    invoke-virtual {p0, v2}, Lcom/android/settings/WeeklyRepeatList;->setContentView(I)V

    .line 51
    const v2, 0x7f0b0139

    invoke-virtual {p0, v2}, Lcom/android/settings/WeeklyRepeatList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings/WeeklyRepeatList;->mRepeatList:Landroid/widget/ListView;

    .line 53
    new-instance v2, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;

    invoke-direct {v2, p0, p0}, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;-><init>(Lcom/android/settings/WeeklyRepeatList;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/WeeklyRepeatList;->mAdapter:Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;

    .line 54
    iget-object v2, p0, Lcom/android/settings/WeeklyRepeatList;->mRepeatList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/WeeklyRepeatList;->mAdapter:Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    iget-object v2, p0, Lcom/android/settings/WeeklyRepeatList;->mRepeatList:Landroid/widget/ListView;

    new-instance v3, Lcom/android/settings/WeeklyRepeatList$1;

    invoke-direct {v3, p0}, Lcom/android/settings/WeeklyRepeatList$1;-><init>(Lcom/android/settings/WeeklyRepeatList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    const v2, 0x7f0b0056

    invoke-virtual {p0, v2}, Lcom/android/settings/WeeklyRepeatList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 67
    .local v1, btnOk:Landroid/widget/Button;
    const v2, 0x7f0b0058

    invoke-virtual {p0, v2}, Lcom/android/settings/WeeklyRepeatList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 69
    .local v0, btnCancel:Landroid/widget/Button;
    new-instance v2, Lcom/android/settings/WeeklyRepeatList$2;

    invoke-direct {v2, p0}, Lcom/android/settings/WeeklyRepeatList$2;-><init>(Lcom/android/settings/WeeklyRepeatList;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    new-instance v2, Lcom/android/settings/WeeklyRepeatList$3;

    invoke-direct {v2, p0}, Lcom/android/settings/WeeklyRepeatList$3;-><init>(Lcom/android/settings/WeeklyRepeatList;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 116
    sget-object v0, Lcom/android/settings/WeeklyRepeatList;->mMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/android/settings/WeeklyRepeatList;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 119
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/WeeklyRepeatList;->mMap:Ljava/util/HashMap;

    .line 120
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/settings/WeeklyRepeatList;->mMap:Ljava/util/HashMap;

    .line 125
    sget-object v1, Lcom/android/settings/WeeklyRepeatList;->mMap:Ljava/util/HashMap;

    const-string v2, "instance_state_selected_item"

    iget-object v3, p0, Lcom/android/settings/WeeklyRepeatList;->mAdapter:Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;

    invoke-virtual {v3}, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->getSelectedItemString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lcom/android/settings/WeeklyRepeatList;->mAdapter:Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;

    invoke-virtual {v1}, Lcom/android/settings/WeeklyRepeatList$RepeatAdapter;->getWeeklyLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    const v2, 0x7f0b00ee

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;

    .line 128
    .local v0, bar:Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;
    sget-object v1, Lcom/android/settings/WeeklyRepeatList;->mMap:Ljava/util/HashMap;

    const-string v2, "instance_state_repeat"

    invoke-virtual {v0}, Lcom/android/settings/WeeklyRepeatPreference$WeeklyBar;->getWeeklyBarState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lcom/android/settings/WeeklyRepeatList;->mMap:Ljava/util/HashMap;

    return-object v1
.end method
