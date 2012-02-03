.class Lcom/android/internal/widget/LockScreenStatusView$1$1;
.super Ljava/lang/Object;
.source "LockScreenStatusView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockScreenStatusView$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/LockScreenStatusView$1;

.field final synthetic val$arg:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockScreenStatusView$1;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 792
    iput-object p1, p0, Lcom/android/internal/widget/LockScreenStatusView$1$1;->this$1:Lcom/android/internal/widget/LockScreenStatusView$1;

    iput-object p2, p0, Lcom/android/internal/widget/LockScreenStatusView$1$1;->val$arg:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView$1$1;->this$1:Lcom/android/internal/widget/LockScreenStatusView$1;

    iget-object v0, v0, Lcom/android/internal/widget/LockScreenStatusView$1;->this$0:Lcom/android/internal/widget/LockScreenStatusView;

    iget-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView$1$1;->val$arg:Landroid/content/Intent;

    #calls: Lcom/android/internal/widget/LockScreenStatusView;->updateBattery(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/LockScreenStatusView;->access$200(Lcom/android/internal/widget/LockScreenStatusView;Landroid/content/Intent;)V

    .line 795
    return-void
.end method
