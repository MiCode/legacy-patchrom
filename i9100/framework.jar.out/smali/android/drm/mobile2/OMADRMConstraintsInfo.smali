.class public Landroid/drm/mobile2/OMADRMConstraintsInfo;
.super Ljava/lang/Object;
.source "OMADRMConstraintsInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;,
        Landroid/drm/mobile2/OMADRMConstraintsInfo$DRM2TimedCount;,
        Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;,
        Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OMADRMConstraintsInfo"


# instance fields
.field public drmArrayRightsObj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo;->drmArrayRightsObj:Ljava/util/ArrayList;

    .line 223
    return-void
.end method


# virtual methods
.method public addDRMRightsObject(Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;)V
    .locals 2
    .parameter "rightsObj"

    .prologue
    const-string v1, "OMADRMConstraintsInfo"

    .line 24
    const-string v0, "OMADRMConstraintsInfo"

    const-string v0, "Adding the Object in OMADRMConstraintsInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo;->drmArrayRightsObj:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo;->drmArrayRightsObj:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    const-string v0, "OMADRMConstraintsInfo"

    const-string v0, "Object is added"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    const-string v0, "OMADRMConstraintsInfo"

    const-string v0, "drmArrayRightsObj is NULL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
