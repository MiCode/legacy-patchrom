.class final Landroid/app/IntentService$ServiceHandler;
.super Landroid/os/Handler;
.source "IntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/IntentService;


# direct methods
.method public constructor <init>(Landroid/app/IntentService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    iput-object p1, p0, Landroid/app/IntentService$ServiceHandler;->this$0:Landroid/app/IntentService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    iget-object v1, p0, Landroid/app/IntentService$ServiceHandler;->this$0:Landroid/app/IntentService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/app/IntentService;->onHandleIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Landroid/app/IntentService$ServiceHandler;->this$0:Landroid/app/IntentService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/app/IntentService;->stopSelf(I)V

    return-void
.end method
