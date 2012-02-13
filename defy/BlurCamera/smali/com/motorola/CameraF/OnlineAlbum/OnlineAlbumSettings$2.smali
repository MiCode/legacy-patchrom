.class Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings$2;
.super Ljava/lang/Object;
.source "OnlineAlbumSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings$2;->this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 103
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_0

    .line 104
    invoke-static {}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, ",mTaskinitSocialShareServices() - Enter"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    iget-object v5, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings$2;->this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;

    invoke-virtual {v5}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo;->updateActivePhotoServices(Landroid/content/ContentResolver;)V

    .line 108
    iget-object v5, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings$2;->this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;

    invoke-static {}, Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo;->getActivePhotoSharingServiceCount()I

    move-result v6

    iput v6, v5, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->nCountPCS:I

    .line 109
    iget-object v5, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings$2;->this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;

    iget v5, v5, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->nCountPCS:I

    if-eqz v5, :cond_5

    .line 112
    sget-object v4, Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo;->sm_arrAPSSIndex:Ljava/util/ArrayList;

    .line 115
    .local v4, test:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 117
    .local v0, apcs:Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 118
    .local v2, it:Ljava/util/Iterator;
    iget-object v5, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings$2;->this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;

    #getter for: Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->initEntryList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->access$200(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 119
    iget-object v5, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings$2;->this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;

    #getter for: Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->initEntryList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->access$200(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 120
    :cond_1
    const/4 v1, 0x0

    .line 121
    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 123
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 125
    .local v3, o:Ljava/lang/Integer;
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_2

    .line 126
    invoke-static {}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "iteration, get service: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_2
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo;->getService(I)Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_4

    .line 131
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_3

    .line 132
    invoke-static {}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "iteration = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;->m_strProviderName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;->m_nProviderId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_3
    iget-object v5, v0, Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;->m_strProviderName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    .line 138
    iget-object v5, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings$2;->this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;

    #getter for: Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->initEntryList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->access$200(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;

    iget-object v7, v0, Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;->m_strProviderName:Ljava/lang/String;

    iget v8, v0, Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;->m_nProviderId:I

    invoke-direct {v6, v7, v9, v8}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v5, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 140
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 142
    goto/16 :goto_0

    .line 145
    .end local v0           #apcs:Lcom/motorola/blur/util/camera/SNPhotoProvidersInfo$PhotoCapableService;
    .end local v1           #i:I
    .end local v2           #it:Ljava/util/Iterator;
    .end local v3           #o:Ljava/lang/Integer;
    .end local v4           #test:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    iget-object v5, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings$2;->this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;

    #getter for: Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->access$500(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 147
    invoke-static {}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "send empty message of INITSOCIALSHARE_FINISH "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v5, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings$2;->this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;

    #getter for: Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->access$500(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 152
    :cond_6
    return-void
.end method
