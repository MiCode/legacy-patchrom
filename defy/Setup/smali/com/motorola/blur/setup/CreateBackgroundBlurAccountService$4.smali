.class Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$4;
.super Ljava/util/TimerTask;
.source "CreateBackgroundBlurAccountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->startAutoTrackService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$4;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$4;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    #getter for: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->access$200(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 282
    return-void
.end method
