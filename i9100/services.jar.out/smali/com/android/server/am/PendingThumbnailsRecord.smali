.class Lcom/android/server/am/PendingThumbnailsRecord;
.super Ljava/lang/Object;
.source "PendingThumbnailsRecord.java"


# instance fields
.field finished:Z

.field pendingRecords:Ljava/util/HashSet;

.field final receiver:Landroid/app/IThumbnailReceiver;


# direct methods
.method constructor <init>(Landroid/app/IThumbnailReceiver;)V
    .locals 1
    .parameter "_receiver"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/am/PendingThumbnailsRecord;->receiver:Landroid/app/IThumbnailReceiver;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingThumbnailsRecord;->pendingRecords:Ljava/util/HashSet;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PendingThumbnailsRecord;->finished:Z

    .line 38
    return-void
.end method
