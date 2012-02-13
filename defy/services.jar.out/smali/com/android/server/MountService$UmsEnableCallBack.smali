.class Lcom/android/server/MountService$UmsEnableCallBack;
.super Lcom/android/server/MountService$UnmountCallBack;
.source "MountService.java"

# interfaces
.implements Lcom/android/server/MountService$Condition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UmsEnableCallBack"
.end annotation


# instance fields
.field finished:Z

.field method:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "path"
    .parameter "method"
    .parameter "force"

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService$UmsEnableCallBack;->finished:Z

    iput-object p3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->method:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public condition()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/MountService$UmsEnableCallBack;->finished:Z

    return v0
.end method

.method handleFinished()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MountService$UmsEnableCallBack;->finished:Z

    iget-object v0, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
