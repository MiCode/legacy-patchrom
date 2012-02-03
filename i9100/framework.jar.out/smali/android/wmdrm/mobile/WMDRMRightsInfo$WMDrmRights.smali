.class public Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
.super Ljava/lang/Object;
.source "WMDRMRightsInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/wmdrm/mobile/WMDRMRightsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WMDrmRights"
.end annotation


# instance fields
.field public category:I

.field public categoryStr:Ljava/lang/String;

.field public endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

.field public iscount:Z

.field public maxCount:I

.field public minCount:I

.field public startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v1, p0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->iscount:Z

    .line 45
    iput v1, p0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->minCount:I

    .line 46
    iput v1, p0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->maxCount:I

    .line 48
    iput-object v2, p0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->categoryStr:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    .line 51
    iput-object v2, p0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    .line 41
    return-void
.end method
