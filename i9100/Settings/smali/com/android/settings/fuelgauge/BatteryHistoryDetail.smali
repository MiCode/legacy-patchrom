.class public Lcom/android/settings/fuelgauge/BatteryHistoryDetail;
.super Landroid/app/Activity;
.source "BatteryHistoryDetail.java"


# instance fields
.field private mStats:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "stats"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 35
    .local v1, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 36
    .local v2, parcel:Landroid/os/Parcel;
    array-length v3, v1

    invoke-virtual {v2, v1, v5, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 37
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 38
    const v3, 0x7f030042

    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->setContentView(I)V

    .line 39
    sget-object v3, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 41
    const v3, 0x1010002

    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    .line 43
    .local v0, chart:Lcom/android/settings/fuelgauge/BatteryHistoryChart;
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->setStats(Landroid/os/BatteryStats;)V

    .line 44
    return-void
.end method
