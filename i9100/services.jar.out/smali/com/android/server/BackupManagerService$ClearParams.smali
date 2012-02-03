.class Lcom/android/server/BackupManagerService$ClearParams;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearParams"
.end annotation


# instance fields
.field public packageInfo:Landroid/content/pm/PackageInfo;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;

.field public transport:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V
    .locals 0
    .parameter
    .parameter "_transport"
    .parameter "_info"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/server/BackupManagerService$ClearParams;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p2, p0, Lcom/android/server/BackupManagerService$ClearParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    .line 230
    iput-object p3, p0, Lcom/android/server/BackupManagerService$ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 231
    return-void
.end method
