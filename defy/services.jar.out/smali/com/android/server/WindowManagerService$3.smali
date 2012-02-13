.class Lcom/android/server/WindowManagerService$3;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WindowManagerService;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WindowManagerService;

.field final synthetic val$callback:Landroid/view/IOnKeyguardExitResult;


# direct methods
.method constructor <init>(Lcom/android/server/WindowManagerService;Landroid/view/IOnKeyguardExitResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/WindowManagerService$3;->this$0:Lcom/android/server/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/WindowManagerService$3;->val$callback:Landroid/view/IOnKeyguardExitResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardExitResult(Z)V
    .locals 1
    .parameter "success"

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService$3;->val$callback:Landroid/view/IOnKeyguardExitResult;

    invoke-interface {v0, p1}, Landroid/view/IOnKeyguardExitResult;->onKeyguardExitResult(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
