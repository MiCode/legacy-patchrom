.class public Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;
.super Ljava/lang/Object;
.source "SNPhotoProvidersInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$1;,
        Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;,
        Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
    }
.end annotation


# static fields
.field private static final ACTIVESERVICES_ID_IDX:I = 0x0

.field private static final ACTIVESERVICES_SERVICE_ID_IDX:I = 0x1

.field private static final CONTENT_URI_ACTIVESERVICES:Landroid/net/Uri; = null

.field private static final CONTENT_URI_PROVIDERS:Landroid/net/Uri; = null

.field private static final CONTENT_URI_SERVICES:Landroid/net/Uri; = null

.field private static final PROJECTION_ACTIVESERVICES:[Ljava/lang/String; = null

.field private static final PROJECTION_PROVIDERS:[Ljava/lang/String; = null

.field private static final PROJECTION_SERVICES:[Ljava/lang/String; = null

.field private static final PROVIDERS_ID_IDX:I = 0x0

.field private static final PROVIDERS_IMAGE_PATH_IDX:I = 0x3

.field private static final PROVIDERS_NAME_IDX:I = 0x1

.field private static final PROVIDERS_PRETTY_NAME_IDX:I = 0x2

.field private static final SERVICES_ID_IDX:I = 0x0

.field private static final SERVICES_IMAGE_PATH_IDX:I = 0x3

.field private static final SERVICES_PRETTY_NAME_IDX:I = 0x2

.field private static final SERVICES_PROVIDER_ID_IDX:I = 0x1

.field private static final SERVICES_SETTINGS_IDX:I = 0x4

.field private static final WHERE_SERVICES:Ljava/lang/String; = "capability = 6"

.field public static sm_arrAPPSIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static sm_arrAPSSIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static sm_arrAPVSIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static sm_arrAVSSIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sm_vPhotoCapableServices:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v7, "_id"

    .line 68
    sput-object v3, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_vPhotoCapableServices:Ljava/util/Vector;

    .line 184
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup$Services;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->CONTENT_URI_SERVICES:Landroid/net/Uri;

    .line 187
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v4

    const-string v1, "providers_id"

    aput-object v1, v0, v5

    const-string v1, "pretty_name"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "path"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "settings"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->PROJECTION_SERVICES:[Ljava/lang/String;

    .line 205
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup$Providers;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->CONTENT_URI_PROVIDERS:Landroid/net/Uri;

    .line 208
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v4

    const-string v1, "provider"

    aput-object v1, v0, v5

    const-string v1, "pretty_name"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "path"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->PROJECTION_PROVIDERS:[Ljava/lang/String;

    .line 308
    sput-object v3, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPSSIndex:Ljava/util/ArrayList;

    .line 309
    sput-object v3, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPPSIndex:Ljava/util/ArrayList;

    .line 310
    sput-object v3, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAVSSIndex:Ljava/util/ArrayList;

    .line 311
    sput-object v3, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPVSIndex:Ljava/util/ArrayList;

    .line 373
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->CONTENT_URI_ACTIVESERVICES:Landroid/net/Uri;

    .line 376
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v4

    const-string v1, "service_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->PROJECTION_ACTIVESERVICES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findExtraProviderIndex(Ljava/util/Vector;Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;)I
    .locals 9
    .parameter
    .parameter "eServiceType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, vCachedAPSProviders:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/4 v8, -0x1

    .line 574
    if-nez p0, :cond_0

    move v6, v8

    .line 620
    :goto_0
    return v6

    .line 578
    :cond_0
    const/4 v1, 0x0

    .line 579
    .local v1, nCount:I
    const/4 v5, 0x0

    .line 581
    .local v5, providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v6, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$1;->$SwitchMap$com$motorola$blur$socialshare$shared$SNPhotoProvidersInfo$ServiceType:[I

    invoke-virtual {p1}, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 596
    :goto_1
    if-nez v5, :cond_1

    move v6, v8

    .line 597
    goto :goto_0

    .line 583
    :pswitch_0
    sget-object v5, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPSSIndex:Ljava/util/ArrayList;

    .line 584
    goto :goto_1

    .line 586
    :pswitch_1
    sget-object v5, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPPSIndex:Ljava/util/ArrayList;

    .line 587
    goto :goto_1

    .line 589
    :pswitch_2
    sget-object v5, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAVSSIndex:Ljava/util/ArrayList;

    .line 590
    goto :goto_1

    .line 592
    :pswitch_3
    sget-object v5, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPVSIndex:Ljava/util/ArrayList;

    goto :goto_1

    .line 600
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 601
    const/4 v2, 0x0

    .local v2, nPos:I
    :goto_2
    if-ge v2, v1, :cond_3

    .line 604
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 606
    .local v4, nServiceIndex:I
    sget-object v6, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_vPhotoCapableServices:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

    .line 609
    .local v0, apcs:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
    iget v3, v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_nProviderId:I

    .line 612
    .local v3, nProviderId:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v4

    .line 615
    goto :goto_0

    .line 601
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #apcs:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
    .end local v3           #nProviderId:I
    .end local v4           #nServiceIndex:I
    :cond_3
    move v6, v8

    .line 620
    goto :goto_0

    .line 581
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static findSNProviderId(Ljava/lang/String;)I
    .locals 4
    .parameter "strProvider"

    .prologue
    const/4 v3, -0x1

    .line 145
    sget-object v2, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_vPhotoCapableServices:Ljava/util/Vector;

    if-nez v2, :cond_0

    move v2, v3

    .line 156
    :goto_0
    return v2

    .line 148
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_vPhotoCapableServices:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 150
    sget-object v2, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_vPhotoCapableServices:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

    .line 151
    .local v1, pcs:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
    iget-object v2, v1, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_strProvider:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    iget v2, v1, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_nProviderId:I

    goto :goto_0

    .line 148
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #pcs:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
    :cond_2
    move v2, v3

    .line 156
    goto :goto_0
.end method

.method public static findSNProviderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "strProvider"

    .prologue
    const-string v3, ""

    .line 166
    sget-object v2, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_vPhotoCapableServices:Ljava/util/Vector;

    if-nez v2, :cond_0

    .line 167
    const-string v2, ""

    move-object v2, v3

    .line 177
    :goto_0
    return-object v2

    .line 169
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_vPhotoCapableServices:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 171
    sget-object v2, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_vPhotoCapableServices:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

    .line 172
    .local v1, pcs:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
    iget-object v2, v1, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_strProvider:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    iget-object v2, v1, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_strProviderName:Ljava/lang/String;

    goto :goto_0

    .line 169
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 177
    .end local v1           #pcs:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
    :cond_2
    const-string v2, ""

    move-object v2, v3

    goto :goto_0
.end method

.method public static findServiceIndex(I)I
    .locals 4
    .parameter "nServiceId"

    .prologue
    const/4 v3, -0x1

    .line 124
    sget-object v2, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_vPhotoCapableServices:Ljava/util/Vector;

    if-nez v2, :cond_0

    move v2, v3

    .line 135
    :goto_0
    return v2

    .line 127
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_vPhotoCapableServices:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 129
    sget-object v2, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_vPhotoCapableServices:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

    .line 130
    .local v1, pcs:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
    iget v2, v1, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_nServiceId:I

    if-ne p0, v2, :cond_1

    move v2, v0

    .line 131
    goto :goto_0

    .line 127
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #pcs:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
    :cond_2
    move v2, v3

    .line 135
    goto :goto_0
.end method

.method public static getAPSProviders(Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;)Ljava/util/Vector;
    .locals 9
    .parameter "eServiceType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 522
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 525
    .local v6, vAPSProviders:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 526
    .local v1, nCount:I
    const/4 v5, 0x0

    .line 528
    .local v5, providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v7, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$1;->$SwitchMap$com$motorola$blur$socialshare$shared$SNPhotoProvidersInfo$ServiceType:[I

    invoke-virtual {p0}, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 543
    :goto_0
    if-nez v5, :cond_0

    .line 544
    const/4 v7, 0x0

    .line 561
    .end local p0
    :goto_1
    return-object v7

    .line 530
    .restart local p0
    :pswitch_0
    sget-object v5, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPSSIndex:Ljava/util/ArrayList;

    .line 531
    goto :goto_0

    .line 533
    :pswitch_1
    sget-object v5, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPPSIndex:Ljava/util/ArrayList;

    .line 534
    goto :goto_0

    .line 536
    :pswitch_2
    sget-object v5, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAVSSIndex:Ljava/util/ArrayList;

    .line 537
    goto :goto_0

    .line 539
    :pswitch_3
    sget-object v5, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPVSIndex:Ljava/util/ArrayList;

    goto :goto_0

    .line 547
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 548
    const/4 v2, 0x0

    .end local p0
    .local v2, nPos:I
    :goto_2
    if-ge v2, v1, :cond_1

    .line 551
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 553
    .local v4, nServiceIndex:I
    sget-object v7, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_vPhotoCapableServices:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

    .line 557
    .local v0, apcs:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
    iget v3, v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_nProviderId:I

    .line 558
    .local v3, nProviderId:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 548
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #apcs:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
    .end local v3           #nProviderId:I
    .end local v4           #nServiceIndex:I
    :cond_1
    move-object v7, v6

    .line 561
    goto :goto_1

    .line 528
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getActivePhotoProfileServiceCount()I
    .locals 1

    .prologue
    .line 341
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPPSIndex:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 342
    const/4 v0, 0x0

    .line 344
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPPSIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public static getActivePhotoProfileServiceIndicies()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPPSIndex:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getActivePhotoSharingServiceCount()I
    .locals 1

    .prologue
    .line 330
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPSSIndex:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 331
    const/4 v0, 0x0

    .line 333
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPSSIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public static getActivePhotoSharingServiceIndices()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPSSIndex:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getActivePhotoVideoServiceCount()I
    .locals 1

    .prologue
    .line 363
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPVSIndex:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 364
    const/4 v0, 0x0

    .line 366
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPVSIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public static getActivePhotoVideoServiceIndicies()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPVSIndex:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getActiveVideoSharingServiceCount()I
    .locals 1

    .prologue
    .line 352
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAVSSIndex:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 353
    const/4 v0, 0x0

    .line 355
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAVSSIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public static getActiveVideoSharingServiceIndices()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAVSSIndex:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getCountPhotoCapableServices()I
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_vPhotoCapableServices:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_vPhotoCapableServices:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public static getPSProviders(Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;)Ljava/util/Vector;
    .locals 4
    .parameter "eServiceType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 480
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 483
    .local v2, vPSProviders:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    sget-object v3, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_vPhotoCapableServices:Ljava/util/Vector;

    if-nez v3, :cond_1

    .line 509
    :cond_0
    return-object v2

    .line 488
    :cond_1
    sget-object v3, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_vPhotoCapableServices:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

    .line 490
    .local v1, pcs:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
    sget-object v3, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;->ePhotoShareService:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

    if-ne p0, v3, :cond_3

    invoke-virtual {v1}, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->getCapabilities()Lcom/motorola/blur/service/blur/gallery/client/SNPhotoProvider$Capabilities;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/blur/service/blur/gallery/client/SNPhotoProvider$Capabilities;->canSharePhoto()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 492
    iget v3, v1, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_nProviderId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 494
    :cond_3
    sget-object v3, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;->eProfilePhotoService:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

    if-ne p0, v3, :cond_4

    invoke-virtual {v1}, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->getCapabilities()Lcom/motorola/blur/service/blur/gallery/client/SNPhotoProvider$Capabilities;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/blur/service/blur/gallery/client/SNPhotoProvider$Capabilities;->canSetProfile()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 496
    iget v3, v1, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_nProviderId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 498
    :cond_4
    sget-object v3, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;->eVideoShareService:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

    if-ne p0, v3, :cond_5

    invoke-virtual {v1}, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->getCapabilities()Lcom/motorola/blur/service/blur/gallery/client/SNPhotoProvider$Capabilities;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/blur/service/blur/gallery/client/SNPhotoProvider$Capabilities;->canShareVideo()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 500
    iget v3, v1, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_nProviderId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 502
    :cond_5
    sget-object v3, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;->eShareBothService:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

    if-ne p0, v3, :cond_2

    invoke-virtual {v1}, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->getCapabilities()Lcom/motorola/blur/service/blur/gallery/client/SNPhotoProvider$Capabilities;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/blur/service/blur/gallery/client/SNPhotoProvider$Capabilities;->canShareVideo()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->getCapabilities()Lcom/motorola/blur/service/blur/gallery/client/SNPhotoProvider$Capabilities;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/blur/service/blur/gallery/client/SNPhotoProvider$Capabilities;->canSharePhoto()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 505
    iget v3, v1, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_nProviderId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getService(I)Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
    .locals 1
    .parameter "nServiceIndex"

    .prologue
    .line 89
    if-ltz p0, :cond_0

    invoke-static {}, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->getCountPhotoCapableServices()I

    move-result v0

    if-lt p0, v0, :cond_1

    .line 92
    :cond_0
    const/4 v0, 0x0

    .line 95
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_1
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_vPhotoCapableServices:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

    move-object v0, p0

    goto :goto_0
.end method

.method public static getService(Ljava/lang/String;)Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
    .locals 4
    .parameter "strProvider"

    .prologue
    const/4 v3, 0x0

    .line 103
    sget-object v2, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_vPhotoCapableServices:Ljava/util/Vector;

    if-nez v2, :cond_0

    move-object v2, v3

    .line 114
    :goto_0
    return-object v2

    .line 106
    :cond_0
    sget-object v2, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_vPhotoCapableServices:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

    .line 108
    .local v1, pcs:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
    iget-object v2, v1, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_strProvider:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 109
    goto :goto_0

    .end local v1           #pcs:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
    :cond_2
    move-object v2, v3

    .line 114
    goto :goto_0
.end method

.method public static queryPhotoCapableServices(Landroid/content/ContentResolver;)I
    .locals 20
    .parameter "cr"

    .prologue
    .line 227
    sget-object v6, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_vPhotoCapableServices:Ljava/util/Vector;

    if-nez v6, :cond_0

    .line 229
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    sput-object v6, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_vPhotoCapableServices:Ljava/util/Vector;

    .line 232
    :cond_0
    sget-object v6, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_vPhotoCapableServices:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 235
    sget-object v6, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->CONTENT_URI_SERVICES:Landroid/net/Uri;

    sget-object v7, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->PROJECTION_SERVICES:[Ljava/lang/String;

    const-string v8, "capability = 6"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 242
    .local v11, curService:Landroid/database/Cursor;
    if-eqz v11, :cond_3

    .line 244
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 246
    const/4 v6, 0x0

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 247
    .local v14, nServiceId:J
    const/4 v6, 0x1

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 248
    .local v12, nProviderId:J
    const/4 v6, 0x3

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 249
    .local v16, strImagePath:Ljava/lang/String;
    const/4 v6, 0x4

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 250
    .local v19, strSettings:Ljava/lang/String;
    const-string v17, ""

    .line 251
    .local v17, strProvider:Ljava/lang/String;
    const-string v18, ""

    .line 254
    .local v18, strProviderName:Ljava/lang/String;
    sget-object v6, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->CONTENT_URI_PROVIDERS:Landroid/net/Uri;

    sget-object v7, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->PROJECTION_PROVIDERS:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 262
    .local v6, curProvider:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 263
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 264
    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 265
    .end local v17           #strProvider:Ljava/lang/String;
    .local v9, strProvider:Ljava/lang/String;
    const/4 v7, 0x2

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 266
    .end local v18           #strProviderName:Ljava/lang/String;
    .local v10, strProviderName:Ljava/lang/String;
    const/4 v7, 0x3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 269
    .end local v16           #strImagePath:Ljava/lang/String;
    .local v8, strImagePath:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 273
    new-instance v7, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

    invoke-direct {v7}, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;-><init>()V

    .line 274
    .local v7, pcs:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
    long-to-int v14, v14

    iput v14, v7, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_nServiceId:I

    .line 275
    .end local v14           #nServiceId:J
    long-to-int v12, v12

    iput v12, v7, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_nProviderId:I

    .line 276
    .end local v12           #nProviderId:J
    iput-object v9, v7, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_strProvider:Ljava/lang/String;

    .line 277
    iput-object v10, v7, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_strProviderName:Ljava/lang/String;

    .line 278
    iput-object v8, v7, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_strProviderIconUri:Ljava/lang/String;

    .line 279
    move-object/from16 v0, v19

    move-object v1, v7

    iput-object v0, v1, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_strServiceSettings:Ljava/lang/String;

    .line 280
    invoke-static/range {v19 .. v19}, Lcom/motorola/blur/service/blur/gallery/client/SNPhotoProvider$Capabilities;->fromJSON(Ljava/lang/String;)Lcom/motorola/blur/service/blur/gallery/client/SNPhotoProvider$Capabilities;

    move-result-object v12

    iput-object v12, v7, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_capabilities:Lcom/motorola/blur/service/blur/gallery/client/SNPhotoProvider$Capabilities;

    .line 283
    iget-object v12, v7, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->m_capabilities:Lcom/motorola/blur/service/blur/gallery/client/SNPhotoProvider$Capabilities;

    if-eqz v12, :cond_1

    .line 284
    sget-object v12, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_vPhotoCapableServices:Ljava/util/Vector;

    invoke-virtual {v12, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .end local v7           #pcs:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
    :cond_1
    move-object v7, v8

    .end local v8           #strImagePath:Ljava/lang/String;
    .local v7, strImagePath:Ljava/lang/String;
    move-object v8, v9

    .end local v9           #strProvider:Ljava/lang/String;
    .local v8, strProvider:Ljava/lang/String;
    move-object v9, v10

    .line 289
    .end local v10           #strProviderName:Ljava/lang/String;
    .local v9, strProviderName:Ljava/lang/String;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v6, v7

    .end local v7           #strImagePath:Ljava/lang/String;
    .local v6, strImagePath:Ljava/lang/String;
    move-object v7, v8

    .end local v8           #strProvider:Ljava/lang/String;
    .local v7, strProvider:Ljava/lang/String;
    move-object v8, v9

    .end local v9           #strProviderName:Ljava/lang/String;
    .local v8, strProviderName:Ljava/lang/String;
    goto/16 :goto_0

    .line 293
    .end local v6           #strImagePath:Ljava/lang/String;
    .end local v7           #strProvider:Ljava/lang/String;
    .end local v8           #strProviderName:Ljava/lang/String;
    .end local v19           #strSettings:Ljava/lang/String;
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 296
    :cond_3
    sget-object p0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_vPhotoCapableServices:Ljava/util/Vector;

    .end local p0
    invoke-virtual/range {p0 .. p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0

    .local v6, curProvider:Landroid/database/Cursor;
    .restart local v12       #nProviderId:J
    .restart local v14       #nServiceId:J
    .restart local v16       #strImagePath:Ljava/lang/String;
    .restart local v17       #strProvider:Ljava/lang/String;
    .restart local v18       #strProviderName:Ljava/lang/String;
    .restart local v19       #strSettings:Ljava/lang/String;
    .restart local p0
    :cond_4
    move-object/from16 v9, v18

    .end local v18           #strProviderName:Ljava/lang/String;
    .restart local v9       #strProviderName:Ljava/lang/String;
    move-object/from16 v8, v17

    .end local v17           #strProvider:Ljava/lang/String;
    .local v8, strProvider:Ljava/lang/String;
    move-object/from16 v7, v16

    .end local v16           #strImagePath:Ljava/lang/String;
    .local v7, strImagePath:Ljava/lang/String;
    goto :goto_1

    .end local v7           #strImagePath:Ljava/lang/String;
    .end local v8           #strProvider:Ljava/lang/String;
    .end local v9           #strProviderName:Ljava/lang/String;
    .restart local v16       #strImagePath:Ljava/lang/String;
    .restart local v17       #strProvider:Ljava/lang/String;
    .restart local v18       #strProviderName:Ljava/lang/String;
    :cond_5
    move-object/from16 v8, v18

    .end local v18           #strProviderName:Ljava/lang/String;
    .local v8, strProviderName:Ljava/lang/String;
    move-object/from16 v7, v17

    .end local v17           #strProvider:Ljava/lang/String;
    .local v7, strProvider:Ljava/lang/String;
    move-object/from16 v6, v16

    .end local v16           #strImagePath:Ljava/lang/String;
    .local v6, strImagePath:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static updateActivePhotoServices(Landroid/content/ContentResolver;)V
    .locals 13
    .parameter "cr"

    .prologue
    const/4 v3, 0x0

    .line 391
    invoke-static {p0}, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->queryPhotoCapableServices(Landroid/content/ContentResolver;)I

    .line 393
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPSSIndex:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPSSIndex:Ljava/util/ArrayList;

    .line 399
    :goto_0
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPPSIndex:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPPSIndex:Ljava/util/ArrayList;

    .line 405
    :goto_1
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAVSSIndex:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAVSSIndex:Ljava/util/ArrayList;

    .line 411
    :goto_2
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPVSIndex:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPVSIndex:Ljava/util/ArrayList;

    .line 418
    :goto_3
    sget-object v1, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->CONTENT_URI_ACTIVESERVICES:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->PROJECTION_ACTIVESERVICES:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 424
    .local v9, curActiveService:Landroid/database/Cursor;
    if-eqz v9, :cond_9

    .line 426
    :cond_0
    :goto_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 428
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 431
    .local v11, nServiceId:J
    long-to-int v0, v11

    invoke-static {v0}, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->findServiceIndex(I)I

    move-result v10

    .line 432
    .local v10, nIndex:I
    if-ltz v10, :cond_0

    .line 435
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_vPhotoCapableServices:Ljava/util/Vector;

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;

    .line 438
    .local v6, apcs:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
    invoke-virtual {v6}, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->getCapabilities()Lcom/motorola/blur/service/blur/gallery/client/SNPhotoProvider$Capabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/gallery/client/SNPhotoProvider$Capabilities;->canSharePhoto()Z

    move-result v7

    .line 439
    .local v7, canSharePics:Z
    invoke-virtual {v6}, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->getCapabilities()Lcom/motorola/blur/service/blur/gallery/client/SNPhotoProvider$Capabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/gallery/client/SNPhotoProvider$Capabilities;->canShareVideo()Z

    move-result v8

    .line 441
    .local v8, canShareVideos:Z
    if-eqz v7, :cond_1

    .line 442
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPSSIndex:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_1
    invoke-virtual {v6}, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;->getCapabilities()Lcom/motorola/blur/service/blur/gallery/client/SNPhotoProvider$Capabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/gallery/client/SNPhotoProvider$Capabilities;->canSetProfile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 447
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPPSIndex:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_2
    if-eqz v8, :cond_3

    .line 452
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAVSSIndex:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_3
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 457
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPVSIndex:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 396
    .end local v6           #apcs:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$PhotoCapableService;
    .end local v7           #canSharePics:Z
    .end local v8           #canShareVideos:Z
    .end local v9           #curActiveService:Landroid/database/Cursor;
    .end local v10           #nIndex:I
    .end local v11           #nServiceId:J
    :cond_4
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPSSIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 402
    :cond_5
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPPSIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .line 408
    :cond_6
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAVSSIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_2

    .line 414
    :cond_7
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;->sm_arrAPVSIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    .line 461
    .restart local v9       #curActiveService:Landroid/database/Cursor;
    :cond_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 463
    :cond_9
    return-void
.end method
