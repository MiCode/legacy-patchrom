.class Lcom/android/internal/view/menu/MenuDialogHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "MenuDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/MenuDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/MenuDialogHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/MenuDialogHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuDialogHelper$1;->this$0:Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuDialogHelper$1;->this$0:Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 167
    :cond_0
    return-void
.end method
