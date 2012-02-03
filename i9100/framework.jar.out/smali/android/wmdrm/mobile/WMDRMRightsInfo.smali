.class public Landroid/wmdrm/mobile/WMDRMRightsInfo;
.super Ljava/lang/Object;
.source "WMDRMRightsInfo.java"

# interfaces
.implements Landroid/wmdrm/mobile/WMDRMConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;,
        Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field public wmdrmArrayRightsObj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "WMDRMRightsInfo"

    sput-object v0, Landroid/wmdrm/mobile/WMDRMRightsInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/wmdrm/mobile/WMDRMRightsInfo;->wmdrmArrayRightsObj:Ljava/util/ArrayList;

    .line 21
    return-void
.end method


# virtual methods
.method public addDRMRightsObject(Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;)V
    .locals 2
    .parameter "rightsObj"

    .prologue
    .line 30
    iget-object v0, p0, Landroid/wmdrm/mobile/WMDRMRightsInfo;->wmdrmArrayRightsObj:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Landroid/wmdrm/mobile/WMDRMRightsInfo;->wmdrmArrayRightsObj:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    sget-object v0, Landroid/wmdrm/mobile/WMDRMRightsInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "wmdrmArrayRightsObj is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
