.class Lcom/motorola/server/deepsleep/DeepSleepService$2;
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
    iput-object p1, p0, Lcom/motorola/server/deepsleep/DeepSleepService$2;->this$0:Lcom/motorola/server/deepsleep/DeepSleepService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
