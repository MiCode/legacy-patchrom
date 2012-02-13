.class public Lcom/motorola/android/internal/util/ApplicationInfoUtils;
.super Ljava/lang/Object;
.source "ApplicationInfoUtils.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ApplicationInfoUtils"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public CompareAnySignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "pkgName1"
    .parameter "pkgName2"

    .prologue
    const/4 v10, 0x0

    const-string v12, "Package Name Not Found "

    const-string v11, "ApplicationInfoUtils"

    const/4 v7, 0x0

    .local v7, signatureMatch:Z
    :try_start_0
    iget-object v8, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x40

    invoke-virtual {v8, p1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, callingApplicationPkgInfo:Landroid/content/pm/PackageInfo;
    :try_start_1
    iget-object v8, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x40

    invoke-virtual {v8, p2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .local v6, permissionPackagePkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    if-nez v6, :cond_1

    :cond_0
    const-string v8, "ApplicationInfoUtils"

    const-string v8, "Packageinfo not found"

    invoke-static {v11, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v10

    .end local v1           #callingApplicationPkgInfo:Landroid/content/pm/PackageInfo;
    .end local v6           #permissionPackagePkgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return v8

    :catch_0
    move-exception v8

    move-object v2, v8

    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "ApplicationInfoUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package Name Not Found "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v10

    goto :goto_0

    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #callingApplicationPkgInfo:Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v8

    move-object v2, v8

    .restart local v2       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "ApplicationInfoUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package Name Not Found "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v10

    goto :goto_0

    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #permissionPackagePkgInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    :try_start_2
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, callingAppSignatures:[Landroid/content/pm/Signature;
    iget-object v5, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v5, permissionAppSignatures:[Landroid/content/pm/Signature;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v8, v0

    if-ge v3, v8, :cond_4

    if-nez v7, :cond_4

    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    array-length v8, v5

    if-ge v4, v8, :cond_2

    aget-object v8, v0, v3

    aget-object v9, v5, v4

    invoke-virtual {v8, v9}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v7, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v4           #j:I
    :cond_4
    if-eqz v7, :cond_5

    const-string v8, "ApplicationInfoUtils"

    const-string v9, "Signature Match"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    goto :goto_0

    :cond_5
    new-instance v8, Ljava/lang/SecurityException;

    const-string v9, "ApplicationInfoUtils Signature Mismatch"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v0           #callingAppSignatures:[Landroid/content/pm/Signature;
    .end local v3           #i:I
    .end local v5           #permissionAppSignatures:[Landroid/content/pm/Signature;
    :catch_2
    move-exception v8

    move-object v2, v8

    .local v2, e:Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    move v8, v10

    goto :goto_0
.end method

.method public checkApnAccessPermissions(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "pid"
    .parameter "uid"
    .parameter "permissionPackage"
    .parameter "metadata"

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->getFirstPackageNamefromPID(I)Ljava/lang/String;

    move-result-object v0

    .local v0, callingPackageName:Ljava/lang/String;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p0, v0, p3}, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->CompareAnySignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .local v4, signatureMatch:Z
    if-eqz v4, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->isSystemApp(I)Z

    move-result v1

    .local v1, isSystemApp:Z
    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->getPackagesforUid(I)[Ljava/lang/String;

    move-result-object v3

    .local v3, pkgListforUid:[Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3, p4}, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->checkMetaData([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .local v2, metadataFound:Z
    move v5, v2

    goto :goto_0
.end method

.method public checkMetaData([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "pkgNames"
    .parameter "metadata"

    .prologue
    const/4 v8, 0x0

    const-string v7, "ApplicationInfoUtils"

    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    aget-object v5, p1, v3

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, appi:Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "ApplicationInfoUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Metadata for Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " matches"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    .end local v0           #appi:Landroid/content/pm/ApplicationInfo;
    .end local v1           #bundle:Landroid/os/Bundle;
    :goto_1
    return v4

    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, e:Ljava/lang/Exception;
    const-string v4, "ApplicationInfoUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package Name not found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v8

    goto :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #appi:Landroid/content/pm/ApplicationInfo;
    .restart local v1       #bundle:Landroid/os/Bundle;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0           #appi:Landroid/content/pm/ApplicationInfo;
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_1
    const-string v4, "ApplicationInfoUtils"

    const-string v4, "Metadata Mismatch"

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v8

    goto :goto_1
.end method

.method public getFirstPackageNamefromPID(I)Ljava/lang/String;
    .locals 9
    .parameter "pid"

    .prologue
    const-string v1, ""

    .local v1, callingPackageName:Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, actvityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .local v5, processInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v4, 0x0

    .local v4, pidFound:Z
    const/4 v3, 0x0

    .end local p0
    .local v3, i:I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v6, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, p1, :cond_1

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #actvityManager:Landroid/app/ActivityManager;
    .end local v3           #i:I
    .end local v4           #pidFound:Z
    .end local v5           #processInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_0
    :goto_1
    const-string v6, "ApplicationInfoUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calling Package Name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .restart local v0       #actvityManager:Landroid/app/ActivityManager;
    .restart local v3       #i:I
    .restart local v4       #pidFound:Z
    .restart local v5       #processInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0           #actvityManager:Landroid/app/ActivityManager;
    .end local v3           #i:I
    .end local v4           #pidFound:Z
    .end local v5           #processInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v6

    move-object v2, v6

    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getPackagesforUid(I)[Ljava/lang/String;
    .locals 5
    .parameter "uid"

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, packageList:[Ljava/lang/String;
    move-object v2, v1

    .end local v1           #packageList:[Ljava/lang/String;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ApplicationInfoUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Packages for corresponding Uid- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "not Found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSystemApp(I)Z
    .locals 9
    .parameter "uid"

    .prologue
    const/4 v7, 0x0

    const-string v8, "ApplicationInfoUtils"

    const/4 v3, 0x0

    .local v3, preLoadedSystemApp:Z
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->getPackagesforUid(I)[Ljava/lang/String;

    move-result-object v1

    .local v1, callingPackageNames:[Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v1, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .local v0, callingApplicationPkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    const-string v4, "ApplicationInfoUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Is Preloaded App? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .end local v0           #callingApplicationPkgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return v4

    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ApplicationInfoUtils"

    const-string v4, "Package Name for corresponding Uid Not Found"

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v4, v7

    goto :goto_0
.end method
