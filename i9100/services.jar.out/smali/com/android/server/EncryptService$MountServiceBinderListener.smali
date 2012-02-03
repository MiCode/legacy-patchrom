.class Lcom/android/server/EncryptService$MountServiceBinderListener;
.super Landroid/os/storage/IMountServiceListener$Stub;
.source "EncryptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MountServiceBinderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EncryptService;


# direct methods
.method private constructor <init>(Lcom/android/server/EncryptService;)V
    .locals 0
    .parameter

    .prologue
    .line 880
    iput-object p1, p0, Lcom/android/server/EncryptService$MountServiceBinderListener;->this$0:Lcom/android/server/EncryptService;

    invoke-direct {p0}, Landroid/os/storage/IMountServiceListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/EncryptService;Lcom/android/server/EncryptService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 880
    invoke-direct {p0, p1}, Lcom/android/server/EncryptService$MountServiceBinderListener;-><init>(Lcom/android/server/EncryptService;)V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/server/EncryptService$MountServiceBinderListener;->this$0:Lcom/android/server/EncryptService;

    iget-object v0, v0, Lcom/android/server/EncryptService;->mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/android/server/EncryptService$MountServiceBinderListener;->this$0:Lcom/android/server/EncryptService;

    iget-object v0, v0, Lcom/android/server/EncryptService;->mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/EncryptService$CheckStorageState;->updateStorageSharedState(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    :cond_0
    return-void
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .locals 0
    .parameter "available"

    .prologue
    .line 883
    return-void
.end method
