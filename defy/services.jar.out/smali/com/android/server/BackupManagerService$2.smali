.class Lcom/android/server/BackupManagerService$2;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/BackupManagerService$2;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    iget-object v0, p0, Lcom/android/server/BackupManagerService$2;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {p2}, Lcom/android/internal/backup/IBackupTransport$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/BackupManagerService;->mGoogleTransport:Lcom/android/internal/backup/IBackupTransport;

    iget-object v0, p0, Lcom/android/server/BackupManagerService$2;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BackupManagerService$2;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/BackupManagerService;->mGoogleTransport:Lcom/android/internal/backup/IBackupTransport;

    #calls: Lcom/android/server/BackupManagerService;->registerTransport(Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/BackupManagerService;->access$400(Lcom/android/server/BackupManagerService;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/BackupManagerService$2;->this$0:Lcom/android/server/BackupManagerService;

    iput-object v2, v0, Lcom/android/server/BackupManagerService;->mGoogleTransport:Lcom/android/internal/backup/IBackupTransport;

    iget-object v0, p0, Lcom/android/server/BackupManagerService$2;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/BackupManagerService;->registerTransport(Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/BackupManagerService;->access$400(Lcom/android/server/BackupManagerService;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    return-void
.end method
