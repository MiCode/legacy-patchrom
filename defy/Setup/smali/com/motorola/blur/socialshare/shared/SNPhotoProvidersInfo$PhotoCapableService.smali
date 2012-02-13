.class public Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
.super Ljava/lang/Object;
.source "SNPhotoProvidersInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoCapableService"
.end annotation


# instance fields
.field public m_bDescRequired:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public m_bDescSupported:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public m_bPhotoShareSupported:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public m_bProfileSupported:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public m_bTitleRequired:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public m_bTitleSupported:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field m_capabilities:Lcom/motorola/blur/service/blur/gallery/client/SNPhotoProvider$Capabilities;

.field public m_nDescMaxLength:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public m_nProviderId:I

.field public m_nServiceId:I

.field public m_nTitleMaxLength:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public m_strProvider:Ljava/lang/String;

.field public m_strProviderIconUri:Ljava/lang/String;

.field public m_strProviderName:Ljava/lang/String;

.field public m_strServiceSettings:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCapabilities()Lcom/motorola/blur/service/blur/gallery/client/SNPhotoProvider$Capabilities;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_capabilities:Lcom/motorola/blur/service/blur/gallery/client/SNPhotoProvider$Capabilities;

    return-object v0
.end method
