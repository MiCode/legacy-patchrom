.class Lcom/android/phone/PhoneApp$4;
.super Ljava/lang/Thread;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;

.field final synthetic val$prevent:Z


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1905
    iput-object p1, p0, Lcom/android/phone/PhoneApp$4;->this$0:Lcom/android/phone/PhoneApp;

    iput-boolean p2, p0, Lcom/android/phone/PhoneApp$4;->val$prevent:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1908
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp$4;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$1600(Lcom/android/phone/PhoneApp;)Landroid/os/IPowerManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/PhoneApp$4;->val$prevent:Z

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->preventScreenOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1912
    :goto_0
    return-void

    .line 1909
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1910
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPowerManagerService.preventScreenOn() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
