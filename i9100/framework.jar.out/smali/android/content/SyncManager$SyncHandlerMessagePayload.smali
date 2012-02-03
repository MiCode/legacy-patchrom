.class Landroid/content/SyncManager$SyncHandlerMessagePayload;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncHandlerMessagePayload"
.end annotation


# instance fields
.field public final activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

.field public final syncResult:Landroid/content/SyncResult;

.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method constructor <init>(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .locals 0
    .parameter
    .parameter "syncContext"
    .parameter "syncResult"

    .prologue
    .line 678
    iput-object p1, p0, Landroid/content/SyncManager$SyncHandlerMessagePayload;->this$0:Landroid/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    iput-object p2, p0, Landroid/content/SyncManager$SyncHandlerMessagePayload;->activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    .line 680
    iput-object p3, p0, Landroid/content/SyncManager$SyncHandlerMessagePayload;->syncResult:Landroid/content/SyncResult;

    .line 681
    return-void
.end method
