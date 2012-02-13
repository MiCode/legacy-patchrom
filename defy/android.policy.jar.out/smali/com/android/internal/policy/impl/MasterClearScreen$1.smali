.class Lcom/android/internal/policy/impl/MasterClearScreen$1;
.super Landroid/content/BroadcastReceiver;
.source "MasterClearScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MasterClearScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MasterClearScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MasterClearScreen;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MasterClearScreen$1;->this$0:Lcom/android/internal/policy/impl/MasterClearScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "level"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, level:I
    const-string v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .local v2, scale:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/MasterClearScreen$1;->this$0:Lcom/android/internal/policy/impl/MasterClearScreen;

    mul-int/lit8 v4, v1, 0x64

    div-int/2addr v4, v2

    #setter for: Lcom/android/internal/policy/impl/MasterClearScreen;->mBatteryLevel:I
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/MasterClearScreen;->access$002(Lcom/android/internal/policy/impl/MasterClearScreen;I)I

    .end local v1           #level:I
    .end local v2           #scale:I
    :cond_0
    return-void
.end method
