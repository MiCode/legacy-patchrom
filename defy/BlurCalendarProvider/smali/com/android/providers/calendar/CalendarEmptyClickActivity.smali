.class public Lcom/android/providers/calendar/CalendarEmptyClickActivity;
.super Lcom/motorola/blur/home/widget/AbstractEmptyClickActivity;
.source "CalendarEmptyClickActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/motorola/blur/home/widget/AbstractEmptyClickActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected addEmptyClickItems(ILjava/util/List;)V
    .locals 5
    .parameter "appWidgetId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/home/widget/AbstractEmptyClickActivity$EmptyClickItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/blur/home/widget/AbstractEmptyClickActivity$EmptyClickItem;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 21
    .local v0, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.calendar"

    const-string v4, "com.android.calendar.LaunchActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 22
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    const/high16 v2, 0x1020

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 27
    new-instance v1, Lcom/motorola/blur/home/widget/AbstractEmptyClickActivity$EmptyClickItem;

    invoke-direct {v1}, Lcom/motorola/blur/home/widget/AbstractEmptyClickActivity$EmptyClickItem;-><init>()V

    .line 29
    .local v1, item:Lcom/motorola/blur/home/widget/AbstractEmptyClickActivity$EmptyClickItem;
    const v2, 0x7f080001

    iput v2, v1, Lcom/motorola/blur/home/widget/AbstractEmptyClickActivity$EmptyClickItem;->textId:I

    .line 30
    const v2, 0x3020162

    iput v2, v1, Lcom/motorola/blur/home/widget/AbstractEmptyClickActivity$EmptyClickItem;->iconId:I

    .line 31
    iput-object v0, v1, Lcom/motorola/blur/home/widget/AbstractEmptyClickActivity$EmptyClickItem;->intent:Landroid/content/Intent;

    .line 32
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method
