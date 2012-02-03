.class Lcom/android/server/DataRouterService$1;
.super Landroid/os/storage/StorageEventListener;
.source "DataRouterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DataRouterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DataRouterService;


# direct methods
.method constructor <init>(Lcom/android/server/DataRouterService;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/DataRouterService$1;->this$0:Lcom/android/server/DataRouterService;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/DataRouterService$1;->this$0:Lcom/android/server/DataRouterService;

    #calls: Lcom/android/server/DataRouterService;->updateData(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p3}, Lcom/android/server/DataRouterService;->access$000(Lcom/android/server/DataRouterService;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method
