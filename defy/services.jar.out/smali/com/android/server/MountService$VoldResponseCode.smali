.class Lcom/android/server/MountService$VoldResponseCode;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoldResponseCode"
.end annotation


# static fields
.field public static final AsecListResult:I = 0x6f

.field public static final AsecPathResult:I = 0xd3

.field public static final OpFailedMediaBlank:I = 0x192

.field public static final OpFailedMediaCorrupt:I = 0x193

.field public static final OpFailedNoMedia:I = 0x191

.field public static final OpFailedStorageBusy:I = 0x195

.field public static final OpFailedStorageNotFound:I = 0x196

.field public static final OpFailedVolNotMounted:I = 0x194

.field public static final ShareAvailabilityChange:I = 0x26c

.field public static final ShareEnabledResult:I = 0xd4

.field public static final ShareStatusResult:I = 0xd2

.field public static final StorageUsersListResult:I = 0x70

.field public static final VolumeBadRemoval:I = 0x278

.field public static final VolumeDiskBroken:I = 0x279

.field public static final VolumeDiskInserted:I = 0x276

.field public static final VolumeDiskRemoved:I = 0x277

.field public static final VolumeListResult:I = 0x6e

.field public static final VolumeStateChange:I = 0x25d


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService$VoldResponseCode;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
