.class Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$1;
.super Ljava/lang/Object;
.source "CreateBackgroundBlurAccountService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;
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
    .line 91
    iput-object p1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    #setter for: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mService:Landroid/os/IBinder;
    invoke-static {v0, p2}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->access$002(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 94
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mService:Landroid/os/IBinder;
    invoke-static {v0, v1}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->access$002(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 98
    return-void
.end method
