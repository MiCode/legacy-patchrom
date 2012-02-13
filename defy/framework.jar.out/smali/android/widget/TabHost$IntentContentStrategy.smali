.class Landroid/widget/TabHost$IntentContentStrategy;
.super Ljava/lang/Object;
.source "TabHost.java"

# interfaces
.implements Landroid/widget/TabHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentContentStrategy"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;

.field private mLaunchedView:Landroid/view/View;

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/TabHost;


# direct methods
.method private constructor <init>(Landroid/widget/TabHost;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "tag"
    .parameter "intent"

    .prologue
    iput-object p1, p0, Landroid/widget/TabHost$IntentContentStrategy;->this$0:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    iput-object p3, p0, Landroid/widget/TabHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TabHost;Ljava/lang/String;Landroid/content/Intent;Landroid/widget/TabHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TabHost$IntentContentStrategy;-><init>(Landroid/widget/TabHost;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 5

    .prologue
    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->this$0:Landroid/widget/TabHost;

    iget-object v2, v2, Landroid/widget/TabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Did you forget to call \'public void setup(LocalActivityManager activityGroup)\'?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->this$0:Landroid/widget/TabHost;

    iget-object v2, v2, Landroid/widget/TabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    iget-object v3, p0, Landroid/widget/TabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/widget/TabHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    .local v0, w:Landroid/view/Window;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .local v1, wd:Landroid/view/View;
    :goto_0
    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eq v2, v1, :cond_1

    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v2}, Landroid/widget/TabHost;->access$100(Landroid/widget/TabHost;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object v1, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    const/high16 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :cond_2
    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    return-object v2

    .end local v1           #wd:Landroid/view/View;
    :cond_3
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
