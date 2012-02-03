.class public Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;
.super Ljava/lang/Object;
.source "OMADRMConstraintsInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/mobile2/OMADRMConstraintsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrmRights"
.end annotation


# instance fields
.field public bIsChildRo:Z

.field public bIsDomainRo:Z

.field public bIsParentRo:Z

.field public cid:Ljava/lang/String;

.field public domainGeneration:I

.field public domainName:Ljava/lang/String;

.field public drmRightsPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;",
            ">;"
        }
    .end annotation
.end field

.field public drmVersion:I

.field public parentId:Ljava/lang/String;

.field public permCount:I

.field public riId:Ljava/lang/String;

.field public riUrl:Ljava/lang/String;

.field public roAlias:Ljava/lang/String;

.field public roId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v2, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;->drmVersion:I

    .line 48
    iput-object v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;->roId:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;->riId:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;->riUrl:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;->roAlias:Ljava/lang/String;

    .line 68
    iput-boolean v1, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;->bIsDomainRo:Z

    .line 73
    iput-object v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;->domainName:Ljava/lang/String;

    .line 78
    iput v1, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;->domainGeneration:I

    .line 83
    iput-object v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;->cid:Ljava/lang/String;

    .line 88
    iput-boolean v1, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;->bIsParentRo:Z

    .line 93
    iput-boolean v1, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;->bIsChildRo:Z

    .line 98
    iput-object v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;->parentId:Ljava/lang/String;

    .line 103
    iput v2, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;->permCount:I

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;->drmRightsPermissions:Ljava/util/ArrayList;

    .line 38
    return-void
.end method


# virtual methods
.method public addRightsPermissionObject(Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;)V
    .locals 2
    .parameter "permissionObj"

    .prologue
    const-string v1, "OMADRMConstraintsInfo"

    .line 115
    const-string v0, "OMADRMConstraintsInfo"

    const-string v0, "Adding the Object in RightsPermission"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;->drmRightsPermissions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;->drmRightsPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    const-string v0, "OMADRMConstraintsInfo"

    const-string v0, "Object is added"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    const-string v0, "OMADRMConstraintsInfo"

    const-string v0, "RightsPermission is NULL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
