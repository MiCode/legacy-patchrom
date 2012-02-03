.class final Lcom/android/server/MountService$VolumeList;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountService$VolumeList$VolumeInfo;
    }
.end annotation


# static fields
.field public static final NotMatch:I = -0x1


# instance fields
.field private final asec_path:Ljava/lang/String;

.field public final targeting_prefer_asec_path:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;

.field private volumeinfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$VolumeList$VolumeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 6
    .parameter

    .prologue
    const-string v5, "removed"

    const-string v4, "MountService"

    .line 195
    iput-object p1, p0, Lcom/android/server/MountService$VolumeList;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    .line 205
    invoke-static {}, Landroid/os/Environment;->getInstalledStorageDirectory()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService$VolumeList;->targeting_prefer_asec_path:Ljava/lang/String;

    .line 206
    const-string v0, "ASEC_MOUNTPOINT"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService$VolumeList;->asec_path:Ljava/lang/String;

    .line 196
    const-string v0, "MountService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "first sdcard path :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "removed"

    invoke-direct {v1, p0, v2, v5}, Lcom/android/server/MountService$VolumeList$VolumeInfo;-><init>(Lcom/android/server/MountService$VolumeList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    sget-boolean v0, Lcom/android/server/StorageFeature;->INSTALLED_SECOND_DISK:Z

    if-eqz v0, :cond_0

    .line 200
    const-string v0, "MountService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "second sdcard path :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "removed"

    invoke-direct {v1, p0, v2, v5}, Lcom/android/server/MountService$VolumeList$VolumeInfo;-><init>(Lcom/android/server/MountService$VolumeList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_0
    return-void
.end method

.method private final vaildVolumePath(Ljava/lang/String;)I
    .locals 2
    .parameter "path"

    .prologue
    .line 232
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    iget-object v1, v1, Lcom/android/server/MountService$VolumeList$VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 236
    :goto_1
    return v1

    .line 232
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public final getASECMountPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/server/MountService$VolumeList;->asec_path:Ljava/lang/String;

    return-object v0
.end method

.method public getDevicePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 280
    const/4 v0, -0x1

    .line 281
    .local v0, index:I
    invoke-direct {p0, p1}, Lcom/android/server/MountService$VolumeList;->vaildVolumePath(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    iget-object v1, p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;->devPath:Ljava/lang/String;

    .line 284
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getEncryptedState(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 247
    const/4 v0, -0x1

    .line 248
    .local v0, index:I
    invoke-direct {p0, p1}, Lcom/android/server/MountService$VolumeList;->vaildVolumePath(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    iget-object v1, p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;->CryptogramState:Ljava/lang/String;

    .line 252
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPendingState(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 262
    const/4 v0, -0x1

    .line 263
    .local v0, index:I
    invoke-direct {p0, p1}, Lcom/android/server/MountService$VolumeList;->vaildVolumePath(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    iget-boolean v1, p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;->pending:Z

    .line 267
    :goto_0
    return v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 297
    const/4 v0, -0x1

    .line 298
    .local v0, index:I
    invoke-direct {p0, p1}, Lcom/android/server/MountService$VolumeList;->vaildVolumePath(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    iget-object v1, p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;->LegacyState:Ljava/lang/String;

    .line 301
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isASECMounted(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/android/server/MountService$VolumeList;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    const/4 v1, 0x1

    .line 221
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isVaildVolumePath(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 225
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 226
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    iget-object v1, v1, Lcom/android/server/MountService$VolumeList$VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 228
    :goto_1
    return v1

    .line 225
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateDevicePath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "path"
    .parameter "devPath"

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, index:I
    invoke-direct {p0, p1}, Lcom/android/server/MountService$VolumeList;->vaildVolumePath(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    iput-object p2, p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;->devPath:Ljava/lang/String;

    .line 274
    const/4 v1, 0x1

    .line 276
    :goto_0
    return v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateEncrypting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "State"

    .prologue
    .line 240
    const/4 v0, -0x1

    .line 241
    .local v0, index:I
    invoke-direct {p0, p1}, Lcom/android/server/MountService$VolumeList;->vaildVolumePath(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    iput-object p2, p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;->CryptogramState:Ljava/lang/String;

    .line 244
    :cond_0
    return-void
.end method

.method public updatePending(Ljava/lang/String;Z)V
    .locals 2
    .parameter "path"
    .parameter "bPending"

    .prologue
    .line 255
    const/4 v0, -0x1

    .line 256
    .local v0, index:I
    invoke-direct {p0, p1}, Lcom/android/server/MountService$VolumeList;->vaildVolumePath(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    iput-boolean p2, p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;->pending:Z

    .line 259
    :cond_0
    return-void
.end method

.method public updateVolumeState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "path"
    .parameter "LegacyState"

    .prologue
    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, index:I
    invoke-direct {p0, p1}, Lcom/android/server/MountService$VolumeList;->vaildVolumePath(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    iput-object p2, p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;->LegacyState:Ljava/lang/String;

    .line 291
    const/4 v1, 0x1

    .line 293
    :goto_0
    return v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
