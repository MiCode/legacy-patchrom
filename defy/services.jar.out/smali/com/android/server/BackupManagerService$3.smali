.class Lcom/android/server/BackupManagerService$3;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BackupManagerService;->dataChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$targets:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/BackupManagerService$3;->this$0:Lcom/android/server/BackupManagerService;

    iput-object p2, p0, Lcom/android/server/BackupManagerService$3;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/BackupManagerService$3;->val$targets:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/BackupManagerService$3;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$3;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$3;->val$targets:Ljava/util/HashSet;

    #calls: Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/BackupManagerService;->access$1000(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method
