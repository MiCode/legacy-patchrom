.class Lcom/android/server/LightsService$2;
.super Landroid/os/Handler;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/LightsService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/LightsService$Light;

    .local v0, light:Lcom/android/server/LightsService$Light;
    #calls: Lcom/android/server/LightsService$Light;->stopFlashing()V
    invoke-static {v0}, Lcom/android/server/LightsService$Light;->access$500(Lcom/android/server/LightsService$Light;)V

    return-void
.end method
