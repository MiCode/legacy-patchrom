.class Lcom/android/server/MountService$MediaStatusUpdater;
.super Ljava/lang/Object;
.source "MountService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaStatusUpdater"
.end annotation


# instance fields
.field private arg0:Z

.field private arg1:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method public constructor <init>(Lcom/android/server/MountService;ZZ)V
    .locals 0
    .parameter
    .parameter "a0"
    .parameter "a1"

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService$MediaStatusUpdater;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/server/MountService$MediaStatusUpdater;->arg0:Z

    iput-boolean p3, p0, Lcom/android/server/MountService$MediaStatusUpdater;->arg1:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/MountService$MediaStatusUpdater;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/PackageManagerService;
    invoke-static {v0}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Lcom/android/server/PackageManagerService;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/MountService$MediaStatusUpdater;->arg0:Z

    iget-boolean v2, p0, Lcom/android/server/MountService$MediaStatusUpdater;->arg1:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    return-void
.end method
