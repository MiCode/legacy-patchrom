.class Lcom/android/phone/EmergencyCallbackModeExitDialog$7;
.super Ljava/lang/Object;
.source "EmergencyCallbackModeExitDialog.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyCallbackModeExitDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$7;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$7;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    check-cast p2, Lcom/android/phone/EmergencyCallbackModeService$LocalBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/android/phone/EmergencyCallbackModeService$LocalBinder;->getService()Lcom/android/phone/EmergencyCallbackModeService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mService:Lcom/android/phone/EmergencyCallbackModeService;

    .line 333
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$7;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    monitor-enter v0

    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$7;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 335
    monitor-exit v0

    .line 336
    return-void

    .line 335
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$7;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mService:Lcom/android/phone/EmergencyCallbackModeService;

    .line 340
    return-void
.end method
