.class Lcom/android/server/StatusBarManagerService$1;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StatusBarManagerService;

.field final synthetic val$net:I


# direct methods
.method constructor <init>(Lcom/android/server/StatusBarManagerService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService$1;->this$0:Lcom/android/server/StatusBarManagerService;

    iput p2, p0, Lcom/android/server/StatusBarManagerService$1;->val$net:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService$1;->this$0:Lcom/android/server/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    iget v1, p0, Lcom/android/server/StatusBarManagerService$1;->val$net:I

    invoke-interface {v0, v1}, Lcom/android/server/StatusBarManagerService$NotificationCallbacks;->onSetDisabled(I)V

    return-void
.end method
