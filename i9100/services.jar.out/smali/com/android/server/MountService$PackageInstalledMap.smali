.class Lcom/android/server/MountService$PackageInstalledMap;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstalledMap"
.end annotation


# instance fields
.field public final InstalledPath:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "InstalledPath"
    .parameter "id"

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/server/MountService$PackageInstalledMap;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p2, p0, Lcom/android/server/MountService$PackageInstalledMap;->InstalledPath:Ljava/lang/String;

    .line 332
    iput-object p3, p0, Lcom/android/server/MountService$PackageInstalledMap;->id:Ljava/lang/String;

    .line 333
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 340
    instance-of v2, p1, Lcom/android/server/MountService$PackageInstalledMap;

    if-eqz v2, :cond_1

    .line 342
    move-object v0, p1

    check-cast v0, Lcom/android/server/MountService$PackageInstalledMap;

    move-object v1, v0

    .line 344
    .local v1, tmp:Lcom/android/server/MountService$PackageInstalledMap;
    iget-object v2, p0, Lcom/android/server/MountService$PackageInstalledMap;->InstalledPath:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/MountService$PackageInstalledMap;->InstalledPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/MountService$PackageInstalledMap;->id:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/MountService$PackageInstalledMap;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 347
    .end local v1           #tmp:Lcom/android/server/MountService$PackageInstalledMap;
    :goto_0
    return v2

    .restart local v1       #tmp:Lcom/android/server/MountService$PackageInstalledMap;
    :cond_0
    move v2, v4

    .line 344
    goto :goto_0

    .end local v1           #tmp:Lcom/android/server/MountService$PackageInstalledMap;
    :cond_1
    move v2, v4

    .line 347
    goto :goto_0
.end method

.method public getInstalledPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/server/MountService$PackageInstalledMap;->InstalledPath:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/MountService$PackageInstalledMap;->InstalledPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/MountService$PackageInstalledMap;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
