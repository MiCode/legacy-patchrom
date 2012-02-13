.class Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KernelWakelockStats"
.end annotation


# instance fields
.field public mCount:I

.field public mTotalTime:J

.field public mVersion:I

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;IJI)V
    .locals 0
    .parameter
    .parameter "count"
    .parameter "totalTime"
    .parameter "version"

    .prologue
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mCount:I

    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mTotalTime:J

    iput p5, p0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mVersion:I

    return-void
.end method
