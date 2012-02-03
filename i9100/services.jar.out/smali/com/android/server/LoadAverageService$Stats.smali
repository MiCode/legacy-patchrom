.class final Lcom/android/server/LoadAverageService$Stats;
.super Lcom/android/server/ProcessStats;
.source "LoadAverageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LoadAverageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Stats"
.end annotation


# instance fields
.field mLoadText:Ljava/lang/String;

.field mLoadWidth:I

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/graphics/Paint;)V
    .locals 1
    .parameter "paint"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/ProcessStats;-><init>(Z)V

    .line 44
    iput-object p1, p0, Lcom/android/server/LoadAverageService$Stats;->mPaint:Landroid/graphics/Paint;

    .line 45
    return-void
.end method


# virtual methods
.method public onLoadChanged(FFF)V
    .locals 3
    .parameter "load1"
    .parameter "load5"
    .parameter "load15"

    .prologue
    const-string v2, " / "

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LoadAverageService$Stats;->mLoadText:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/android/server/LoadAverageService$Stats;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/server/LoadAverageService$Stats;->mLoadText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/LoadAverageService$Stats;->mLoadWidth:I

    .line 51
    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/LoadAverageService$Stats;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method
