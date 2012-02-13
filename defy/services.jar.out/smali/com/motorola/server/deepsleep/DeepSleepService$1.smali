.class Lcom/motorola/server/deepsleep/DeepSleepService$1;
.super Ljava/lang/Object;
.source "DeepSleepService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/server/deepsleep/DeepSleepService;->showWakelockDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/deepsleep/DeepSleepService;


# direct methods
.method constructor <init>(Lcom/motorola/server/deepsleep/DeepSleepService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/server/deepsleep/DeepSleepService$1;->this$0:Lcom/motorola/server/deepsleep/DeepSleepService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    iget-object v0, p0, Lcom/motorola/server/deepsleep/DeepSleepService$1;->this$0:Lcom/motorola/server/deepsleep/DeepSleepService;

    #getter for: Lcom/motorola/server/deepsleep/DeepSleepService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/server/deepsleep/DeepSleepService;->access$000(Lcom/motorola/server/deepsleep/DeepSleepService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
