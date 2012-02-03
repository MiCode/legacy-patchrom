.class public Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;
.super Ljava/lang/Object;
.source "OMADRMConstraintsInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/mobile2/OMADRMConstraintsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DRMTime"
.end annotation


# instance fields
.field public day:I

.field public hours:I

.field public minutes:I

.field public month:I

.field public seconds:I

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->year:I

    .line 235
    iput v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->month:I

    .line 240
    iput v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->day:I

    .line 245
    iput v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->hours:I

    .line 250
    iput v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->minutes:I

    .line 255
    iput v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->seconds:I

    .line 225
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "year :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "month :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "day :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hours :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->hours:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "minutes :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->minutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "seconds :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->seconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
