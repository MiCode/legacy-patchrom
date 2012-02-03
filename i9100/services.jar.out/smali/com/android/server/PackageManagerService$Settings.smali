.class final Lcom/android/server/PackageManagerService$Settings;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Settings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PackageManagerService$Settings$PendingPackage;
    }
.end annotation


# instance fields
.field private final mBackupSettingsFilename:Ljava/io/File;

.field final mDisabledSysPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerService$PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field mExternalSdkPlatform:I

.field mInternalSdkPlatform:I

.field private final mMoreBackupSettingsFilename:Ljava/io/File;

.field private final mOtherUserIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageListFilename:Ljava/io/File;

.field private final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerService$PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final mPackagesToBeCleaned:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPastSignatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/PackageManagerService$Settings$PendingPackage;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissionTrees:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerService$BasePermission;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerService$BasePermission;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferredActivities:Lcom/android/server/IntentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/IntentResolver",
            "<",
            "Lcom/android/server/PackageManagerService$PreferredActivity;",
            "Lcom/android/server/PackageManagerService$PreferredActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadMessages:Ljava/lang/StringBuilder;

.field final mRenamedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsFilename:Ljava/io/File;

.field private final mSharedUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerService$SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x1fd

    const/4 v4, -0x1

    .line 8339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8258
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    .line 8261
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    .line 8272
    new-instance v3, Lcom/android/server/PackageManagerService$Settings$1;

    invoke-direct {v3, p0}, Lcom/android/server/PackageManagerService$Settings$1;-><init>(Lcom/android/server/PackageManagerService$Settings;)V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    .line 8296
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    .line 8298
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    .line 8299
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mOtherUserIds:Landroid/util/SparseArray;

    .line 8303
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    .line 8307
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    .line 8311
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    .line 8316
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    .line 8322
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    .line 8324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 8336
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mPendingPackages:Ljava/util/ArrayList;

    .line 8340
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 8341
    .local v0, dataDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "system"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8343
    .local v1, systemDir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "secure/system"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8344
    .local v2, systemSecureDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 8345
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 8346
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 8350
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 8354
    new-instance v3, Ljava/io/File;

    const-string v4, "packages.xml"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    .line 8355
    new-instance v3, Ljava/io/File;

    const-string v4, "packages-backup.xml"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    .line 8356
    new-instance v3, Ljava/io/File;

    const-string v4, "packages-more-backup.xml"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mMoreBackupSettingsFilename:Ljava/io/File;

    .line 8357
    new-instance v3, Ljava/io/File;

    const-string v4, "packages.list"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mPackageListFilename:Ljava/io/File;

    .line 8358
    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8253
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/PackageManagerService$Settings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 8253
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService$Settings;->transferPermissions(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/PackageManagerService$Settings;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8253
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/PackageManagerService$Settings;Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 8253
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService$Settings;->insertPackageSettingLP(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/PackageManagerService$Settings;Lcom/android/server/PackageManagerService$PackageSetting;[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 8253
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService$Settings;->updateSharedUserPermsLP(Lcom/android/server/PackageManagerService$PackageSetting;[I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8253
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8253
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/PackageManagerService$Settings;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8253
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService$Settings;->removePackageLP(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private addPackageSettingLP(Lcom/android/server/PackageManagerService$PackageSetting;Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;)V
    .locals 5
    .parameter "p"
    .parameter "name"
    .parameter "sharedUser"

    .prologue
    const/4 v2, 0x6

    const-string v4, "Package "

    const-string v3, "; I am not changing its files so it will probably fail!"

    .line 8729
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8730
    if-eqz p3, :cond_1

    .line 8731
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eq v0, p3, :cond_2

    .line 8732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but is now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; I am not changing its files so it will probably fail!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v2, v0}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 8736
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 8745
    :cond_0
    :goto_0
    iget-object v0, p3, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8746
    iput-object p3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 8747
    iget v0, p3, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    iput v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    .line 8749
    :cond_1
    return-void

    .line 8737
    :cond_2
    iget v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    iget v1, p3, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    if-eq v0, v1, :cond_0

    .line 8738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was user id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but is now user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; I am not changing its files so it will probably fail!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v2, v0}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private addUserIdLP(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .parameter "uid"
    .parameter "obj"
    .parameter "name"

    .prologue
    const/16 v3, 0x2710

    const/4 v5, 0x6

    const/4 v4, 0x0

    const-string v6, " name="

    .line 8832
    const/16 v2, 0x2af8

    if-lt p1, v2, :cond_0

    move v2, v4

    .line 8859
    :goto_0
    return v2

    .line 8836
    :cond_0
    if-lt p1, v3, :cond_3

    .line 8837
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8838
    .local v0, N:I
    sub-int v1, p1, v3

    .line 8839
    .local v1, index:I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 8840
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8841
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8843
    :cond_1
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 8844
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate user id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v5, v2}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    move v2, v4

    .line 8847
    goto :goto_0

    .line 8849
    :cond_2
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8859
    .end local v0           #N:I
    .end local v1           #index:I
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 8851
    :cond_3
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 8852
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate shared id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v5, v2}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    move v2, v4

    .line 8855
    goto :goto_0

    .line 8857
    :cond_4
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method private findPackagesWithFlag(I)Ljava/util/Set;
    .locals 4
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8873
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 8874
    .local v2, ret:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8876
    .local v1, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget v3, v1, Lcom/android/server/PackageManagerService$GrantedPermissions;->pkgFlags:I

    and-int/2addr v3, p1

    if-ne v3, p1, :cond_0

    .line 8877
    iget-object v3, v1, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8880
    .end local v1           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_1
    return-object v2
.end method

.method private getPackageLP(Ljava/lang/String;Lcom/android/server/PackageManagerService$PackageSetting;Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IIZZ)Lcom/android/server/PackageManagerService$PackageSetting;
    .locals 14
    .parameter "name"
    .parameter "origPackage"
    .parameter "realName"
    .parameter "sharedUser"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "nativeLibraryPathString"
    .parameter "vc"
    .parameter "pkgFlags"
    .parameter "create"
    .parameter "add"

    .prologue
    .line 8571
    iget-object v5, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8572
    .local v4, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v4, :cond_1

    .line 8573
    iget-object v5, v4, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePath:Ljava/io/File;

    move-object v0, v5

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 8575
    iget v5, v4, Lcom/android/server/PackageManagerService$GrantedPermissions;->pkgFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 8579
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trying to update system app code path from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8595
    :cond_0
    :goto_0
    iget-object v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v0, v5

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_5

    .line 8596
    const/4 v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " shared user changed from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v7, :cond_3

    iget-object v7, v4, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v7, v7, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    move-object v7, v0

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; replacing with new"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 8602
    const/4 v4, 0x0

    .line 8612
    :cond_1
    :goto_3
    if-nez v4, :cond_c

    .line 8615
    if-nez p10, :cond_6

    .line 8616
    const/4 v5, 0x0

    .line 8681
    .end local p2
    :goto_4
    return-object v5

    .line 8584
    .restart local p2
    :cond_2
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " codePath changed from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePath:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; Retaining data and using new"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8592
    move-object/from16 v0, p7

    move-object v1, v4

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    goto/16 :goto_0

    .line 8596
    :cond_3
    const-string v7, "<nothing>"

    goto :goto_1

    :cond_4
    const-string v7, "<nothing>"

    goto :goto_2

    .line 8604
    :cond_5
    and-int/lit8 v5, p9, 0x1

    if-eqz v5, :cond_1

    .line 8608
    iget v5, v4, Lcom/android/server/PackageManagerService$GrantedPermissions;->pkgFlags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/PackageManagerService$GrantedPermissions;->pkgFlags:I

    goto :goto_3

    .line 8618
    :cond_6
    if-eqz p2, :cond_7

    .line 8620
    new-instance v4, Lcom/android/server/PackageManagerService$PackageSetting;

    .end local v4           #p:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    move-object v5, v0

    move-object v6, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v4 .. v11}, Lcom/android/server/PackageManagerService$PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    .line 8626
    .restart local v4       #p:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v13, v4, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    .line 8627
    .local v13, s:Lcom/android/server/PackageManagerService$PackageSignatures;
    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageSetting;->copyFrom(Lcom/android/server/PackageManagerService$PackageSettingBase;)V

    .line 8628
    iput-object v13, v4, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    .line 8629
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v5, v0

    iput-object v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 8630
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    move v5, v0

    iput v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    .line 8631
    move-object/from16 v0, p2

    move-object v1, v4

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSettingBase;->origPackage:Lcom/android/server/PackageManagerService$PackageSettingBase;

    .line 8632
    iget-object v5, p0, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8633
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    move-object p1, v0

    .line 8635
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/android/server/PackageManagerService$PackageSetting;->setTimeStamp(J)V

    .line 8670
    .end local v13           #s:Lcom/android/server/PackageManagerService$PackageSignatures;
    .end local p2
    :goto_5
    iget v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    if-gez v5, :cond_b

    .line 8671
    const/4 v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " could not be assigned a valid uid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 8673
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 8637
    .restart local p2
    :cond_7
    new-instance v4, Lcom/android/server/PackageManagerService$PackageSetting;

    .end local v4           #p:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v4 .. v11}, Lcom/android/server/PackageManagerService$PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    .line 8639
    .restart local v4       #p:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/android/server/PackageManagerService$PackageSetting;->setTimeStamp(J)V

    .line 8640
    move-object/from16 v0, p4

    move-object v1, v4

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 8641
    if-eqz p4, :cond_8

    .line 8642
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    move v5, v0

    iput v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    goto :goto_5

    .line 8645
    :cond_8
    iget-object v5, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8646
    .local v12, dis:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v12, :cond_a

    .line 8651
    iget-object v5, v12, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    #getter for: Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;
    invoke-static {v5}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 8652
    iget-object v5, v4, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    iget-object v6, v12, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    #getter for: Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;
    invoke-static {v6}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v6

    invoke-virtual {v6}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, [Landroid/content/pm/Signature;

    move-object v0, v5

    move-object/from16 v1, p2

    #setter for: Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;
    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1102(Lcom/android/server/PackageManagerService$PackageSignatures;[Landroid/content/pm/Signature;)[Landroid/content/pm/Signature;

    .line 8654
    :cond_9
    iget v5, v12, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    iput v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    .line 8656
    new-instance v5, Ljava/util/HashSet;

    iget-object v6, v12, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v5, v4, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    .line 8658
    new-instance v5, Ljava/util/HashSet;

    iget-object v6, v12, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v5, v4, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    .line 8659
    new-instance v5, Ljava/util/HashSet;

    iget-object v6, v12, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v5, v4, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    .line 8661
    iget v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-direct {p0, v5, v4, p1}, Lcom/android/server/PackageManagerService$Settings;->addUserIdLP(ILjava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 8664
    .restart local p2
    :cond_a
    invoke-direct {p0, v4}, Lcom/android/server/PackageManagerService$Settings;->newUserIdLP(Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    goto/16 :goto_5

    .line 8675
    .end local v12           #dis:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local p2
    :cond_b
    if-eqz p11, :cond_c

    .line 8678
    move-object v0, p0

    move-object v1, v4

    move-object v2, p1

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService$Settings;->addPackageSettingLP(Lcom/android/server/PackageManagerService$PackageSetting;Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;)V

    :cond_c
    move-object v5, v4

    .line 8681
    goto/16 :goto_4
.end method

.method private insertPackageSettingLP(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)V
    .locals 8
    .parameter "p"
    .parameter "pkg"

    .prologue
    const-string v7, "PackageManager"

    const-string v6, " to "

    const-string v5, " changing from "

    .line 8685
    iput-object p2, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 8686
    iget v3, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    iput v3, p2, Landroid/content/pm/PackageParser$Package;->mSetEnabled:I

    .line 8687
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 8688
    .local v0, codePath:Ljava/lang/String;
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 8690
    .local v2, resourcePath:Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8691
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Code path for pkg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " changing from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8693
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePath:Ljava/io/File;

    .line 8694
    iput-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 8697
    :cond_0
    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8698
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource path for pkg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " changing from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8700
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 8701
    iput-object v2, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 8704
    :cond_1
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 8705
    .local v1, nativeLibraryPath:Ljava/lang/String;
    if-eqz v1, :cond_2

    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 8707
    iput-object v1, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    .line 8710
    :cond_2
    iget v3, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget v4, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->versionCode:I

    if-eq v3, v4, :cond_3

    .line 8711
    iget v3, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v3, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->versionCode:I

    .line 8714
    :cond_3
    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    #getter for: Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;
    invoke-static {v3}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v3

    if-nez v3, :cond_4

    .line 8715
    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #calls: Lcom/android/server/PackageManagerService$PackageSignatures;->assignSignatures([Landroid/content/pm/Signature;)V
    invoke-static {v3, v4}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$3800(Lcom/android/server/PackageManagerService$PackageSignatures;[Landroid/content/pm/Signature;)V

    .line 8719
    :cond_4
    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    #getter for: Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;
    invoke-static {v3}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v3

    if-nez v3, :cond_5

    .line 8720
    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #calls: Lcom/android/server/PackageManagerService$PackageSignatures;->assignSignatures([Landroid/content/pm/Signature;)V
    invoke-static {v3, v4}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$3800(Lcom/android/server/PackageManagerService$PackageSignatures;[Landroid/content/pm/Signature;)V

    .line 8722
    :cond_5
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/PackageManagerService$Settings;->addPackageSettingLP(Lcom/android/server/PackageManagerService$PackageSetting;Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;)V

    .line 8723
    return-void
.end method

.method private newUserIdLP(Ljava/lang/Object;)I
    .locals 3
    .parameter "obj"

    .prologue
    .line 10033
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 10034
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10035
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 10036
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10037
    add-int/lit16 v2, v1, 0x2710

    .line 10047
    :goto_1
    return v2

    .line 10034
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10042
    :cond_1
    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_2

    .line 10043
    const/4 v2, -0x1

    goto :goto_1

    .line 10046
    :cond_2
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10047
    add-int/lit16 v2, v0, 0x2710

    goto :goto_1
.end method

.method private readDisabledComponentsLP(Lcom/android/server/PackageManagerService$PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "packageSetting"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 9841
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 9844
    .local v1, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    if-ne v3, v6, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 9846
    :cond_1
    if-eq v3, v6, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 9851
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 9852
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9853
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9854
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 9855
    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9866
    .end local v0           #name:Ljava/lang/String;
    :goto_1
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 9857
    .restart local v0       #name:Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <disabled-components> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_1

    .line 9862
    .end local v0           #name:Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <disabled-components>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_1

    .line 9868
    .end local v2           #tagName:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private readDisabledSysPackageLP(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 22
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9545
    const/4 v6, 0x0

    const-string v7, "name"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9546
    .local v4, name:Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "realName"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9547
    .local v5, realName:Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "codePath"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 9548
    .local v11, codePathStr:Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "resourcePath"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 9549
    .local v14, resourcePathStr:Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "nativeLibraryPath"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 9550
    .local v8, nativeLibraryPathStr:Ljava/lang/String;
    if-nez v14, :cond_0

    .line 9551
    move-object v14, v11

    .line 9553
    :cond_0
    const/4 v6, 0x0

    const-string v7, "version"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 9554
    .local v21, version:Ljava/lang/String;
    const/4 v9, 0x0

    .line 9555
    .local v9, versionCode:I
    if-eqz v21, :cond_1

    .line 9557
    :try_start_0
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    .line 9562
    :cond_1
    :goto_0
    const/4 v10, 0x0

    .line 9563
    .local v10, pkgFlags:I
    or-int/lit8 v10, v10, 0x1

    .line 9564
    new-instance v3, Lcom/android/server/PackageManagerService$PackageSetting;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v3 .. v10}, Lcom/android/server/PackageManagerService$PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    .line 9566
    .local v3, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    const/4 v6, 0x0

    const-string v7, "ft"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 9567
    .local v19, timeStampStr:Ljava/lang/String;
    if-eqz v19, :cond_8

    .line 9569
    const/16 v6, 0x10

    :try_start_1
    move-object/from16 v0, v19

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v17

    .line 9570
    .local v17, timeStamp:J
    move-object v0, v3

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$PackageSetting;->setTimeStamp(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    .line 9583
    .end local v17           #timeStamp:J
    :cond_2
    :goto_1
    const/4 v6, 0x0

    const-string v7, "it"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 9584
    if-eqz v19, :cond_3

    .line 9586
    const/16 v6, 0x10

    :try_start_2
    move-object/from16 v0, v19

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->firstInstallTime:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    .line 9590
    :cond_3
    :goto_2
    const/4 v6, 0x0

    const-string v7, "ut"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 9591
    if-eqz v19, :cond_4

    .line 9593
    const/16 v6, 0x10

    :try_start_3
    move-object/from16 v0, v19

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->lastUpdateTime:J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 9597
    :cond_4
    :goto_3
    const/4 v6, 0x0

    const-string v7, "userId"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 9598
    .local v12, idStr:Ljava/lang/String;
    if-eqz v12, :cond_9

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_4
    iput v6, v3, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    .line 9599
    iget v6, v3, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    if-gtz v6, :cond_5

    .line 9600
    const/4 v6, 0x0

    const-string v7, "sharedUserId"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 9601
    .local v15, sharedIdStr:Ljava/lang/String;
    if-eqz v15, :cond_a

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_5
    iput v6, v3, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    .line 9603
    .end local v15           #sharedIdStr:Ljava/lang/String;
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    .line 9606
    .end local v8           #nativeLibraryPathStr:Ljava/lang/String;
    .local v13, outerDepth:I
    :cond_6
    :goto_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    .local v20, type:I
    const/4 v6, 0x1

    move/from16 v0, v20

    move v1, v6

    if-eq v0, v1, :cond_c

    const/4 v6, 0x3

    move/from16 v0, v20

    move v1, v6

    if-ne v0, v1, :cond_7

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v13, :cond_c

    .line 9608
    :cond_7
    const/4 v6, 0x3

    move/from16 v0, v20

    move v1, v6

    if-eq v0, v1, :cond_6

    const/4 v6, 0x4

    move/from16 v0, v20

    move v1, v6

    if-eq v0, v1, :cond_6

    .line 9613
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 9614
    .local v16, tagName:Ljava/lang/String;
    const-string v6, "perms"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 9615
    iget-object v6, v3, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->readGrantedPermissionsLP(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V

    goto :goto_6

    .line 9574
    .end local v12           #idStr:Ljava/lang/String;
    .end local v13           #outerDepth:I
    .end local v16           #tagName:Ljava/lang/String;
    .end local v20           #type:I
    .restart local v8       #nativeLibraryPathStr:Ljava/lang/String;
    :cond_8
    const/4 v6, 0x0

    const-string v7, "ts"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 9575
    if-eqz v19, :cond_2

    .line 9577
    :try_start_4
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 9578
    .restart local v17       #timeStamp:J
    move-object v0, v3

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$PackageSetting;->setTimeStamp(J)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 9579
    .end local v17           #timeStamp:J
    :catch_0
    move-exception v6

    goto/16 :goto_1

    .line 9598
    .restart local v12       #idStr:Ljava/lang/String;
    :cond_9
    const/4 v6, 0x0

    goto :goto_4

    .line 9601
    .restart local v15       #sharedIdStr:Ljava/lang/String;
    :cond_a
    const/4 v6, 0x0

    goto :goto_5

    .line 9618
    .end local v8           #nativeLibraryPathStr:Ljava/lang/String;
    .end local v15           #sharedIdStr:Ljava/lang/String;
    .restart local v13       #outerDepth:I
    .restart local v16       #tagName:Ljava/lang/String;
    .restart local v20       #type:I
    :cond_b
    const/4 v6, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <updated-package>: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 9621
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 9624
    .end local v16           #tagName:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    move-object v6, v0

    invoke-virtual {v6, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9625
    return-void

    .line 9558
    .end local v3           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v10           #pkgFlags:I
    .end local v12           #idStr:Ljava/lang/String;
    .end local v13           #outerDepth:I
    .end local v19           #timeStampStr:Ljava/lang/String;
    .end local v20           #type:I
    .restart local v8       #nativeLibraryPathStr:Ljava/lang/String;
    :catch_1
    move-exception v6

    goto/16 :goto_0

    .line 9594
    .restart local v3       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v10       #pkgFlags:I
    .restart local v19       #timeStampStr:Ljava/lang/String;
    :catch_2
    move-exception v6

    goto/16 :goto_3

    .line 9587
    :catch_3
    move-exception v6

    goto/16 :goto_2

    .line 9571
    :catch_4
    move-exception v6

    goto/16 :goto_1
.end method

.method private readEnabledComponentsLP(Lcom/android/server/PackageManagerService$PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "packageSetting"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 9873
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 9876
    .local v1, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    if-ne v3, v6, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 9878
    :cond_1
    if-eq v3, v6, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 9883
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 9884
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9885
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9886
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 9887
    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9898
    .end local v0           #name:Ljava/lang/String;
    :goto_1
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 9889
    .restart local v0       #name:Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <enabled-components> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_1

    .line 9894
    .end local v0           #name:Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <enabled-components>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_1

    .line 9900
    .end local v2           #tagName:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private readGrantedPermissionsLP(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V
    .locals 8
    .parameter "parser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .local p2, outPerms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 9969
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 9972
    .local v1, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    if-ne v3, v6, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 9974
    :cond_1
    if-eq v3, v6, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 9979
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 9980
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9981
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9982
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 9983
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9994
    .end local v0           #name:Ljava/lang/String;
    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 9985
    .restart local v0       #name:Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <perms> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_1

    .line 9990
    .end local v0           #name:Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <perms>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_1

    .line 9996
    .end local v2           #tagName:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .parameter "parser"
    .parameter "ns"
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 9476
    invoke-interface {p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9478
    .local v1, v:Ljava/lang/String;
    if-nez v1, :cond_0

    move v2, p4

    .line 9488
    :goto_0
    return v2

    .line 9481
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 9482
    :catch_0
    move-exception v0

    .line 9483
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has bad integer value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    move v2, p4

    .line 9488
    goto :goto_0
.end method

.method private readPackageLP(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 35
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9629
    const/16 v22, 0x0

    .line 9630
    .local v22, name:Ljava/lang/String;
    const/4 v5, 0x0

    .line 9631
    .local v5, realName:Ljava/lang/String;
    const/16 v17, 0x0

    .line 9632
    .local v17, idStr:Ljava/lang/String;
    const/16 v26, 0x0

    .line 9633
    .local v26, sharedIdStr:Ljava/lang/String;
    const/4 v12, 0x0

    .line 9634
    .local v12, codePathStr:Ljava/lang/String;
    const/16 v25, 0x0

    .line 9635
    .local v25, resourcePathStr:Ljava/lang/String;
    const/4 v8, 0x0

    .line 9636
    .local v8, nativeLibraryPathStr:Ljava/lang/String;
    const/16 v27, 0x0

    .line 9637
    .local v27, systemStr:Ljava/lang/String;
    const/16 v19, 0x0

    .line 9638
    .local v19, installerPackageName:Ljava/lang/String;
    const/16 v33, 0x0

    .line 9639
    .local v33, uidError:Ljava/lang/String;
    const/4 v11, 0x0

    .line 9640
    .local v11, pkgFlags:I
    const-wide/16 v29, 0x0

    .line 9641
    .local v29, timeStamp:J
    const-wide/16 v15, 0x0

    .line 9642
    .local v15, firstInstallTime:J
    const-wide/16 v20, 0x0

    .line 9643
    .local v20, lastUpdateTime:J
    const/16 v24, 0x0

    .line 9644
    .local v24, packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    const/16 v34, 0x0

    .line 9645
    .local v34, version:Ljava/lang/String;
    const/4 v10, 0x0

    .line 9647
    .local v10, versionCode:I
    const/4 v4, 0x0

    :try_start_0
    const-string v6, "name"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 9648
    const/4 v4, 0x0

    const-string v6, "realName"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9649
    const/4 v4, 0x0

    const-string v6, "userId"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 9650
    const/4 v4, 0x0

    const-string v6, "uidError"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 9651
    const/4 v4, 0x0

    const-string v6, "sharedUserId"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 9652
    const/4 v4, 0x0

    const-string v6, "codePath"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 9653
    const/4 v4, 0x0

    const-string v6, "resourcePath"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 9654
    const/4 v4, 0x0

    const-string v6, "nativeLibraryPath"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 9655
    const/4 v4, 0x0

    const-string v6, "version"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v34

    .line 9656
    if-eqz v34, :cond_0

    .line 9658
    :try_start_1
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    .line 9662
    :cond_0
    :goto_0
    const/4 v4, 0x0

    :try_start_2
    const-string v6, "installer"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 9664
    const/4 v4, 0x0

    const-string v6, "flags"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_7

    move-result-object v27

    .line 9665
    if-eqz v27, :cond_9

    .line 9667
    :try_start_3
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v11

    .line 9681
    :goto_1
    const/4 v4, 0x0

    :try_start_4
    const-string v6, "ft"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_7

    move-result-object v31

    .line 9682
    .local v31, timeStampStr:Ljava/lang/String;
    if-eqz v31, :cond_c

    .line 9684
    const/16 v4, 0x10

    :try_start_5
    move-object/from16 v0, v31

    move v1, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-wide v29

    .line 9696
    :cond_1
    :goto_2
    const/4 v4, 0x0

    :try_start_6
    const-string v6, "it"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_7

    move-result-object v31

    .line 9697
    if-eqz v31, :cond_2

    .line 9699
    const/16 v4, 0x10

    :try_start_7
    move-object/from16 v0, v31

    move v1, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_5

    move-result-wide v15

    .line 9703
    :cond_2
    :goto_3
    const/4 v4, 0x0

    :try_start_8
    const-string v6, "ut"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_7

    move-result-object v31

    .line 9704
    if-eqz v31, :cond_3

    .line 9706
    const/16 v4, 0x10

    :try_start_9
    move-object/from16 v0, v31

    move v1, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_6

    move-result-wide v20

    .line 9712
    :cond_3
    :goto_4
    if-eqz v17, :cond_d

    :try_start_a
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v9, v4

    .line 9713
    .local v9, userId:I
    :goto_5
    if-nez v25, :cond_4

    .line 9714
    move-object/from16 v25, v12

    .line 9716
    :cond_4
    if-eqz v5, :cond_5

    .line 9717
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 9719
    :cond_5
    if-nez v22, :cond_e

    .line 9720
    const/4 v4, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: <package> has no name at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v4, v6}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_7

    move-object/from16 v3, v24

    .line 9775
    .end local v9           #userId:I
    .end local v24           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .end local v31           #timeStampStr:Ljava/lang/String;
    .local v3, packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :goto_6
    if-eqz v3, :cond_1e

    .line 9776
    const-string v4, "true"

    move-object v0, v4

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->uidError:Z

    .line 9777
    move-object/from16 v0, v19

    move-object v1, v3

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 9778
    iput-object v8, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    .line 9779
    const/4 v4, 0x0

    const-string v5, "enabled"

    .end local v5           #realName:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 9780
    .local v14, enabledStr:Ljava/lang/String;
    if-eqz v14, :cond_18

    .line 9781
    const-string v4, "true"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 9782
    const/4 v4, 0x1

    iput v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    .line 9796
    :goto_7
    const/4 v4, 0x0

    const-string v5, "installStatus"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 9797
    .local v18, installStatusStr:Ljava/lang/String;
    if-eqz v18, :cond_6

    .line 9798
    const-string v4, "false"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 9799
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    .line 9805
    :cond_6
    :goto_8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v23

    .line 9808
    .local v23, outerDepth:I
    :cond_7
    :goto_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v32

    .local v32, type:I
    const/4 v4, 0x1

    move/from16 v0, v32

    move v1, v4

    if-eq v0, v1, :cond_1f

    const/4 v4, 0x3

    move/from16 v0, v32

    move v1, v4

    if-ne v0, v1, :cond_8

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move v0, v4

    move/from16 v1, v23

    if-le v0, v1, :cond_1f

    .line 9810
    :cond_8
    const/4 v4, 0x3

    move/from16 v0, v32

    move v1, v4

    if-eq v0, v1, :cond_7

    const/4 v4, 0x4

    move/from16 v0, v32

    move v1, v4

    if-eq v0, v1, :cond_7

    .line 9815
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v28

    .line 9816
    .local v28, tagName:Ljava/lang/String;
    const-string v4, "disabled-components"

    move-object/from16 v0, v28

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 9817
    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->readDisabledComponentsLP(Lcom/android/server/PackageManagerService$PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    .line 9672
    .end local v3           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .end local v14           #enabledStr:Ljava/lang/String;
    .end local v18           #installStatusStr:Ljava/lang/String;
    .end local v23           #outerDepth:I
    .end local v28           #tagName:Ljava/lang/String;
    .end local v32           #type:I
    .restart local v5       #realName:Ljava/lang/String;
    .restart local v24       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :cond_9
    const/4 v4, 0x0

    :try_start_b
    const-string v6, "system"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 9673
    if-eqz v27, :cond_b

    .line 9674
    const-string v4, "true"

    move-object v0, v4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    :goto_a
    or-int/2addr v11, v4

    goto/16 :goto_1

    :cond_a
    const/4 v4, 0x0

    goto :goto_a

    .line 9678
    :cond_b
    or-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 9688
    .restart local v31       #timeStampStr:Ljava/lang/String;
    :cond_c
    const/4 v4, 0x0

    const-string v6, "ts"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_7

    move-result-object v31

    .line 9689
    if-eqz v31, :cond_1

    .line 9691
    :try_start_c
    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_4

    move-result-wide v29

    goto/16 :goto_2

    .line 9712
    :cond_d
    const/4 v4, 0x0

    move v9, v4

    goto/16 :goto_5

    .line 9723
    .restart local v9       #userId:I
    :cond_e
    if-nez v12, :cond_f

    .line 9724
    const/4 v4, 0x5

    :try_start_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: <package> has no codePath at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v4, v6}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    move-object/from16 v3, v24

    .end local v24           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v3       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    goto/16 :goto_6

    .line 9727
    .end local v3           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v24       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :cond_f
    if-lez v9, :cond_11

    .line 9728
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/PackageManagerService$Settings;->addPackageLP(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)Lcom/android/server/PackageManagerService$PackageSetting;
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_7

    move-result-object v3

    .line 9733
    .end local v24           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v3       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    if-nez v3, :cond_10

    .line 9734
    const/4 v4, 0x6

    :try_start_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure adding uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " while parsing settings at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v4, v6}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_6

    .line 9769
    :catch_0
    move-exception v4

    move-object v13, v4

    .line 9770
    .end local v9           #userId:I
    .end local v31           #timeStampStr:Ljava/lang/String;
    .local v13, e:Ljava/lang/NumberFormatException;
    :goto_b
    const/4 v4, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has bad userId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v4, v6}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto/16 :goto_6

    .line 9739
    .end local v13           #e:Ljava/lang/NumberFormatException;
    .restart local v9       #userId:I
    .restart local v31       #timeStampStr:Ljava/lang/String;
    :cond_10
    :try_start_f
    move-object v0, v3

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$PackageSetting;->setTimeStamp(J)V

    .line 9740
    iput-wide v15, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->firstInstallTime:J

    .line 9741
    move-wide/from16 v0, v20

    move-object v2, v3

    iput-wide v0, v2, Lcom/android/server/PackageManagerService$PackageSettingBase;->lastUpdateTime:J
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_6

    .line 9743
    .end local v3           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v24       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :cond_11
    if-eqz v26, :cond_14

    .line 9744
    if-eqz v26, :cond_12

    :try_start_10
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v9, v4

    .line 9746
    :goto_c
    if-lez v9, :cond_13

    .line 9747
    new-instance v3, Lcom/android/server/PackageManagerService$Settings$PendingPackage;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v3 .. v11}, Lcom/android/server/PackageManagerService$Settings$PendingPackage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)V
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_7

    .line 9750
    .end local v24           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v3       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :try_start_11
    move-object v0, v3

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$PackageSettingBase;->setTimeStamp(J)V

    .line 9751
    iput-wide v15, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->firstInstallTime:J

    .line 9752
    move-wide/from16 v0, v20

    move-object v2, v3

    iput-wide v0, v2, Lcom/android/server/PackageManagerService$PackageSettingBase;->lastUpdateTime:J

    .line 9753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPendingPackages:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v3

    check-cast v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;

    move-object v4, v0

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_0

    goto/16 :goto_6

    .line 9744
    .end local v3           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v24       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :cond_12
    const/4 v4, 0x0

    move v9, v4

    goto :goto_c

    .line 9758
    :cond_13
    const/4 v4, 0x5

    :try_start_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has bad sharedId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v4, v6}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    move-object/from16 v3, v24

    .end local v24           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v3       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    goto/16 :goto_6

    .line 9764
    .end local v3           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v24       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :cond_14
    const/4 v4, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has bad userId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v4, v6}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_7

    move-object/from16 v3, v24

    .end local v24           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v3       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    goto/16 :goto_6

    .line 9783
    .end local v5           #realName:Ljava/lang/String;
    .end local v9           #userId:I
    .end local v31           #timeStampStr:Ljava/lang/String;
    .restart local v14       #enabledStr:Ljava/lang/String;
    :cond_15
    const-string v4, "false"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 9784
    const/4 v4, 0x2

    iput v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    goto/16 :goto_7

    .line 9785
    :cond_16
    const-string v4, "default"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 9786
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    goto/16 :goto_7

    .line 9788
    :cond_17
    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has bad enabled value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 9794
    :cond_18
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    goto/16 :goto_7

    .line 9801
    .restart local v18       #installStatusStr:Ljava/lang/String;
    :cond_19
    const/4 v4, 0x1

    iput v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    goto/16 :goto_8

    .line 9818
    .restart local v23       #outerDepth:I
    .restart local v28       #tagName:Ljava/lang/String;
    .restart local v32       #type:I
    :cond_1a
    const-string v4, "enabled-components"

    move-object/from16 v0, v28

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 9819
    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->readEnabledComponentsLP(Lcom/android/server/PackageManagerService$PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_9

    .line 9820
    :cond_1b
    const-string v4, "sigs"

    move-object/from16 v0, v28

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 9821
    iget-object v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto/16 :goto_9

    .line 9822
    :cond_1c
    const-string v4, "perms"

    move-object/from16 v0, v28

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 9823
    iget-object v4, v3, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->readGrantedPermissionsLP(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V

    .line 9825
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->permissionsFixed:Z

    goto/16 :goto_9

    .line 9827
    :cond_1d
    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <package>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 9830
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_9

    .line 9834
    .end local v14           #enabledStr:Ljava/lang/String;
    .end local v18           #installStatusStr:Ljava/lang/String;
    .end local v23           #outerDepth:I
    .end local v28           #tagName:Ljava/lang/String;
    .end local v32           #type:I
    .restart local v5       #realName:Ljava/lang/String;
    :cond_1e
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 9836
    .end local v5           #realName:Ljava/lang/String;
    :cond_1f
    return-void

    .line 9659
    .end local v3           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v5       #realName:Ljava/lang/String;
    .restart local v24       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :catch_1
    move-exception v4

    goto/16 :goto_0

    .line 9668
    :catch_2
    move-exception v4

    goto/16 :goto_1

    .line 9685
    .restart local v31       #timeStampStr:Ljava/lang/String;
    :catch_3
    move-exception v4

    goto/16 :goto_2

    .line 9692
    :catch_4
    move-exception v4

    goto/16 :goto_2

    .line 9700
    :catch_5
    move-exception v4

    goto/16 :goto_3

    .line 9707
    :catch_6
    move-exception v4

    goto/16 :goto_4

    .line 9769
    .end local v31           #timeStampStr:Ljava/lang/String;
    :catch_7
    move-exception v4

    move-object v13, v4

    move-object/from16 v3, v24

    .end local v24           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v3       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    goto/16 :goto_b
.end method

.method private readPermissionsLP(Ljava/util/HashMap;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .parameter
    .parameter "parser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerService$BasePermission;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 9494
    .local p1, out:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 9497
    .local v3, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, type:I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_6

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_6

    .line 9499
    :cond_1
    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    .line 9504
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 9505
    .local v7, tagName:Ljava/lang/String;
    const-string v9, "item"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 9506
    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9507
    .local v2, name:Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "package"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9508
    .local v6, sourcePackage:Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "type"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9509
    .local v5, ptype:Ljava/lang/String;
    if-eqz v2, :cond_4

    if-eqz v6, :cond_4

    .line 9510
    const-string v9, "dynamic"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 9511
    .local v1, dynamic:Z
    new-instance v0, Lcom/android/server/PackageManagerService$BasePermission;

    if-eqz v1, :cond_3

    const/4 v9, 0x2

    :goto_1
    invoke-direct {v0, v2, v6, v9}, Lcom/android/server/PackageManagerService$BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 9515
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    const/4 v9, 0x0

    const-string v10, "protection"

    const/4 v11, 0x0

    invoke-direct {p0, p2, v9, v10, v11}, Lcom/android/server/PackageManagerService$Settings;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    .line 9517
    if-eqz v1, :cond_2

    .line 9518
    new-instance v4, Landroid/content/pm/PermissionInfo;

    invoke-direct {v4}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 9519
    .local v4, pi:Landroid/content/pm/PermissionInfo;
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 9520
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 9521
    const/4 v9, 0x0

    const-string v10, "icon"

    const/4 v11, 0x0

    invoke-direct {p0, p2, v9, v10, v11}, Lcom/android/server/PackageManagerService$Settings;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v4, Landroid/content/pm/PermissionInfo;->icon:I

    .line 9522
    const/4 v9, 0x0

    const-string v10, "label"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 9524
    iget v9, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    iput v9, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 9525
    iput-object v4, v0, Lcom/android/server/PackageManagerService$BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    .line 9527
    .end local v4           #pi:Landroid/content/pm/PermissionInfo;
    :cond_2
    iget-object v9, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9539
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v1           #dynamic:Z
    .end local v2           #name:Ljava/lang/String;
    .end local v5           #ptype:Ljava/lang/String;
    .end local v6           #sourcePackage:Ljava/lang/String;
    :goto_2
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 9511
    .restart local v1       #dynamic:Z
    .restart local v2       #name:Ljava/lang/String;
    .restart local v5       #ptype:Ljava/lang/String;
    .restart local v6       #sourcePackage:Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 9529
    .end local v1           #dynamic:Z
    :cond_4
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: permissions has no name at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_2

    .line 9534
    .end local v2           #name:Ljava/lang/String;
    .end local v5           #ptype:Ljava/lang/String;
    .end local v6           #sourcePackage:Ljava/lang/String;
    :cond_5
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element reading permissions: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_2

    .line 9541
    .end local v7           #tagName:Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private readPreferredActivitiesLP(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 10000
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 10003
    .local v0, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    if-ne v3, v6, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    .line 10005
    :cond_1
    if-eq v3, v6, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 10010
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 10011
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10012
    new-instance v1, Lcom/android/server/PackageManagerService$PreferredActivity;

    invoke-direct {v1, p1}, Lcom/android/server/PackageManagerService$PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 10013
    .local v1, pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    iget-object v4, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 10014
    iget-object v4, p0, Lcom/android/server/PackageManagerService$Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    invoke-virtual {v4, v1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_0

    .line 10016
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_0

    .line 10022
    .end local v1           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <preferred-activities>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 10025
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 10028
    .end local v2           #tagName:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private readSharedUserLP(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9904
    const/4 v2, 0x0

    .line 9905
    .local v2, name:Ljava/lang/String;
    const/4 v1, 0x0

    .line 9906
    .local v1, idStr:Ljava/lang/String;
    const/4 v4, 0x0

    .line 9907
    .local v4, pkgFlags:I
    const/4 v5, 0x0

    .line 9909
    .local v5, su:Lcom/android/server/PackageManagerService$SharedUserSetting;
    const/4 v9, 0x0

    :try_start_0
    const-string v10, "name"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9910
    const/4 v9, 0x0

    const-string v10, "userId"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9911
    if-eqz v1, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move v8, v9

    .line 9912
    .local v8, userId:I
    :goto_0
    const-string v9, "true"

    const/4 v10, 0x0

    const-string v11, "system"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 9913
    or-int/lit8 v4, v4, 0x1

    .line 9915
    :cond_0
    if-nez v2, :cond_5

    .line 9916
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: <shared-user> has no name at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9938
    .end local v8           #userId:I
    :cond_1
    :goto_1
    if-eqz v5, :cond_9

    .line 9939
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 9942
    .local v3, outerDepth:I
    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, type:I
    const/4 v9, 0x1

    if-eq v7, v9, :cond_a

    const/4 v9, 0x3

    if-ne v7, v9, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_a

    .line 9944
    :cond_3
    const/4 v9, 0x3

    if-eq v7, v9, :cond_2

    const/4 v9, 0x4

    if-eq v7, v9, :cond_2

    .line 9949
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 9950
    .local v6, tagName:Ljava/lang/String;
    const-string v9, "sigs"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 9951
    iget-object v9, v5, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    iget-object v10, p0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v9, p1, v10}, Lcom/android/server/PackageManagerService$PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 9911
    .end local v3           #outerDepth:I
    .end local v6           #tagName:Ljava/lang/String;
    .end local v7           #type:I
    :cond_4
    const/4 v9, 0x0

    move v8, v9

    goto :goto_0

    .line 9919
    .restart local v8       #userId:I
    :cond_5
    if-nez v8, :cond_6

    .line 9920
    const/4 v9, 0x5

    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: shared-user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has bad userId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 9931
    .end local v8           #userId:I
    :catch_0
    move-exception v9

    move-object v0, v9

    .line 9932
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has bad userId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 9925
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v8       #userId:I
    :cond_6
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v8, v4}, Lcom/android/server/PackageManagerService$Settings;->addSharedUserLP(Ljava/lang/String;II)Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-result-object v5

    if-nez v5, :cond_1

    .line 9926
    const/4 v9, 0x6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Occurred while parsing settings at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 9952
    .end local v8           #userId:I
    .restart local v3       #outerDepth:I
    .restart local v6       #tagName:Ljava/lang/String;
    .restart local v7       #type:I
    :cond_7
    const-string v9, "perms"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 9953
    iget-object v9, v5, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-direct {p0, p1, v9}, Lcom/android/server/PackageManagerService$Settings;->readGrantedPermissionsLP(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V

    goto/16 :goto_2

    .line 9955
    :cond_8
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element under <shared-user>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 9958
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 9963
    .end local v3           #outerDepth:I
    .end local v6           #tagName:Ljava/lang/String;
    .end local v7           #type:I
    :cond_9
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 9965
    :cond_a
    return-void
.end method

.method private removePackageLP(Ljava/lang/String;)I
    .locals 3
    .parameter "name"

    .prologue
    .line 8800
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8801
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_1

    .line 8802
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8803
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v1, :cond_0

    .line 8804
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 8805
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 8806
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8807
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget v1, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/PackageManagerService$Settings;->removeUserIdLP(I)V

    .line 8808
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget v1, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    .line 8815
    :goto_0
    return v1

    .line 8811
    :cond_0
    iget v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/PackageManagerService$Settings;->removeUserIdLP(I)V

    .line 8812
    iget v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    goto :goto_0

    .line 8815
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private removeUserIdLP(I)V
    .locals 4
    .parameter "uid"

    .prologue
    const/16 v3, 0x2710

    .line 8884
    if-lt p1, v3, :cond_1

    .line 8885
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8886
    .local v0, N:I
    sub-int v1, p1, v3

    .line 8887
    .local v1, index:I
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8891
    .end local v0           #N:I
    .end local v1           #index:I
    :cond_0
    :goto_0
    return-void

    .line 8889
    :cond_1
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method private replacePackageLP(Ljava/lang/String;Lcom/android/server/PackageManagerService$PackageSetting;)V
    .locals 2
    .parameter "name"
    .parameter "newp"

    .prologue
    .line 8819
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8820
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_0

    .line 8821
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v1, :cond_1

    .line 8822
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 8823
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8828
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8829
    return-void

    .line 8825
    :cond_1
    iget v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-direct {p0, v1, p2}, Lcom/android/server/PackageManagerService$Settings;->replaceUserIdLP(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private replaceUserIdLP(ILjava/lang/Object;)V
    .locals 4
    .parameter "uid"
    .parameter "obj"

    .prologue
    const/16 v3, 0x2710

    .line 8894
    if-lt p1, v3, :cond_1

    .line 8895
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8896
    .local v0, N:I
    sub-int v1, p1, v3

    .line 8897
    .local v1, index:I
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8901
    .end local v0           #N:I
    .end local v1           #index:I
    :cond_0
    :goto_0
    return-void

    .line 8899
    :cond_1
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private transferPermissions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "origPkg"
    .parameter "newPkg"

    .prologue
    const/4 v5, 0x0

    .line 8546
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x2

    if-ge v1, v4, :cond_4

    .line 8547
    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    move-object v3, v4

    .line 8549
    .local v3, permissions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    :goto_1
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 8550
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    iget-object v4, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8555
    iput-object p2, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    .line 8556
    iput-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    .line 8557
    iput-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 8558
    iget-object v4, v0, Lcom/android/server/PackageManagerService$BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v4, :cond_1

    .line 8559
    iget-object v4, v0, Lcom/android/server/PackageManagerService$BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    iput-object p2, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 8561
    :cond_1
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    .line 8562
    iput-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    goto :goto_2

    .line 8547
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #permissions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    :cond_2
    iget-object v4, p0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    move-object v3, v4

    goto :goto_1

    .line 8546
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #permissions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8566
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #permissions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    :cond_4
    return-void
.end method

.method private updateSharedUserPermsLP(Lcom/android/server/PackageManagerService$PackageSetting;[I)V
    .locals 10
    .parameter "deletedPs"
    .parameter "globalGids"

    .prologue
    .line 8760
    if-eqz p1, :cond_0

    iget-object v8, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v8, :cond_2

    .line 8761
    :cond_0
    const-string v8, "PackageManager"

    const-string v9, "Trying to update info for null package. Just ignoring"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8797
    :cond_1
    :goto_0
    return-void

    .line 8765
    :cond_2
    iget-object v8, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v8, :cond_1

    .line 8768
    iget-object v6, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 8770
    .local v6, sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    iget-object v8, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8771
    .local v1, eachPerm:Ljava/lang/String;
    const/4 v7, 0x0

    .line 8772
    .local v7, used:Z
    iget-object v8, v6, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 8775
    iget-object v8, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8776
    .local v5, pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v8, v5, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v8, :cond_4

    iget-object v8, v5, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v5, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 8779
    const/4 v7, 0x1

    .line 8783
    .end local v5           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_5
    if-nez v7, :cond_3

    .line 8785
    iget-object v8, v6, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8789
    .end local v1           #eachPerm:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #used:Z
    :cond_6
    move-object v4, p2

    .line 8790
    .local v4, newGids:[I
    iget-object v8, v6, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8791
    .restart local v1       #eachPerm:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 8792
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v0, :cond_7

    .line 8793
    iget-object v8, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    invoke-static {v4, v8}, Lcom/android/server/PackageManagerService;->appendInts([I[I)[I

    move-result-object v4

    goto :goto_2

    .line 8796
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v1           #eachPerm:Ljava/lang/String;
    :cond_8
    iput-object v4, v6, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    goto/16 :goto_0
.end method


# virtual methods
.method addPackageLP(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)Lcom/android/server/PackageManagerService$PackageSetting;
    .locals 8
    .parameter "name"
    .parameter "realName"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "nativeLibraryPathString"
    .parameter "uid"
    .parameter "vc"
    .parameter "pkgFlags"

    .prologue
    .line 8505
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8506
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_1

    .line 8507
    iget v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    if-ne v1, p6, :cond_0

    move-object v1, v0

    .line 8521
    :goto_0
    return-object v1

    .line 8510
    :cond_0
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate package, keeping first: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 8512
    const/4 v1, 0x0

    goto :goto_0

    .line 8514
    :cond_1
    new-instance v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .end local v0           #p:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PackageManagerService$PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    .line 8516
    .restart local v0       #p:Lcom/android/server/PackageManagerService$PackageSetting;
    iput p6, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    .line 8517
    invoke-direct {p0, p6, v0, p1}, Lcom/android/server/PackageManagerService$Settings;->addUserIdLP(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8518
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 8519
    goto :goto_0

    .line 8521
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method addSharedUserLP(Ljava/lang/String;II)Lcom/android/server/PackageManagerService$SharedUserSetting;
    .locals 5
    .parameter "name"
    .parameter "uid"
    .parameter "pkgFlags"

    .prologue
    const/4 v4, 0x0

    .line 8525
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 8526
    .local v0, s:Lcom/android/server/PackageManagerService$SharedUserSetting;
    if-eqz v0, :cond_1

    .line 8527
    iget v1, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    if-ne v1, p2, :cond_0

    move-object v1, v0

    .line 8540
    :goto_0
    return-object v1

    .line 8530
    :cond_0
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate shared user, keeping first: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    move-object v1, v4

    .line 8532
    goto :goto_0

    .line 8534
    :cond_1
    new-instance v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .end local v0           #s:Lcom/android/server/PackageManagerService$SharedUserSetting;
    invoke-direct {v0, p1, p3}, Lcom/android/server/PackageManagerService$SharedUserSetting;-><init>(Ljava/lang/String;I)V

    .line 8535
    .restart local v0       #s:Lcom/android/server/PackageManagerService$SharedUserSetting;
    iput p2, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    .line 8536
    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/PackageManagerService$Settings;->addUserIdLP(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8537
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 8538
    goto :goto_0

    :cond_2
    move-object v1, v4

    .line 8540
    goto :goto_0
.end method

.method checkXML(I)Z
    .locals 9
    .parameter "i"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 8370
    if-nez p1, :cond_0

    .line 8371
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    .line 8379
    .local v0, checkFile:Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v7

    .line 8394
    :goto_1
    return v3

    .line 8373
    .end local v0           #checkFile:Ljava/io/File;
    :cond_0
    if-ne p1, v8, :cond_1

    .line 8374
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    .restart local v0       #checkFile:Ljava/io/File;
    goto :goto_0

    .line 8376
    .end local v0           #checkFile:Ljava/io/File;
    :cond_1
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mMoreBackupSettingsFilename:Ljava/io/File;

    .restart local v0       #checkFile:Ljava/io/File;
    goto :goto_0

    .line 8384
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8385
    .local v2, raf_xmltest:Ljava/io/RandomAccessFile;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    const-wide/16 v5, 0xe

    cmp-long v3, v3, v5

    if-gtz v3, :cond_3

    .line 8386
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "too small "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 8387
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v7

    .line 8388
    goto :goto_1

    .line 8390
    .end local v2           #raf_xmltest:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 8391
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v7

    .line 8392
    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #raf_xmltest:Ljava/io/RandomAccessFile;
    :cond_3
    move v3, v8

    .line 8394
    goto :goto_1
.end method

.method disableSystemPackageLP(Ljava/lang/String;)Z
    .locals 7
    .parameter "name"

    .prologue
    const/4 v6, 0x0

    .line 8463
    iget-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8464
    .local v2, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v2, :cond_0

    .line 8465
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not an installed package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 8484
    :goto_0
    return v3

    .line 8468
    :cond_0
    iget-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8470
    .local v0, dp:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v0, :cond_2

    .line 8471
    iget-object v3, v2, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    .line 8472
    iget-object v3, v2, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 8474
    :cond_1
    iget-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8480
    new-instance v1, Lcom/android/server/PackageManagerService$PackageSetting;

    invoke-direct {v1, v2}, Lcom/android/server/PackageManagerService$PackageSetting;-><init>(Lcom/android/server/PackageManagerService$PackageSetting;)V

    .line 8481
    .local v1, newp:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-direct {p0, p1, v1}, Lcom/android/server/PackageManagerService$Settings;->replacePackageLP(Ljava/lang/String;Lcom/android/server/PackageManagerService$PackageSetting;)V

    .line 8482
    const/4 v3, 0x1

    goto :goto_0

    .end local v1           #newp:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_2
    move v3, v6

    .line 8484
    goto :goto_0
.end method

.method enableSystemPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;
    .locals 11
    .parameter "name"

    .prologue
    .line 8488
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8489
    .local v9, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v9, :cond_0

    .line 8490
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8491
    const/4 v0, 0x0

    .line 8500
    :goto_0
    return-object v0

    .line 8494
    :cond_0
    iget-object v0, v9, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_1

    iget-object v0, v9, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    .line 8495
    iget-object v0, v9, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 8497
    :cond_1
    iget-object v2, v9, Lcom/android/server/PackageManagerService$PackageSettingBase;->realName:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePath:Ljava/io/File;

    iget-object v4, v9, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePath:Ljava/io/File;

    iget-object v5, v9, Lcom/android/server/PackageManagerService$PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    iget v6, v9, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    iget v7, v9, Lcom/android/server/PackageManagerService$PackageSettingBase;->versionCode:I

    iget v8, v9, Lcom/android/server/PackageManagerService$GrantedPermissions;->pkgFlags:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/PackageManagerService$Settings;->addPackageLP(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v10

    .line 8499
    .local v10, ret:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v10

    .line 8500
    goto :goto_0
.end method

.method public getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;
    .locals 3
    .parameter "name"

    .prologue
    .line 10051
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 10052
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 10053
    .local v0, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    monitor-exit v1

    return-object v0

    .line 10054
    .end local v0           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getInstallStatus(Ljava/lang/String;)I
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 8431
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8432
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_0

    .line 8433
    invoke-virtual {v0}, Lcom/android/server/PackageManagerService$PackageSetting;->getInstallStatus()I

    move-result v1

    .line 8435
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 8426
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8427
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/PackageManagerService$PackageSetting;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method getListOfIncompleteInstallPackages()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/PackageManagerService$PackageSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9278
    new-instance v1, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 9279
    .local v1, kList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 9280
    .local v0, its:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 9281
    .local v4, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9282
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9283
    .local v2, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 9284
    .local v3, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-virtual {v3}, Lcom/android/server/PackageManagerService$PackageSetting;->getInstallStatus()I

    move-result v5

    if-nez v5, :cond_0

    .line 9285
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9288
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_1
    return-object v4
.end method

.method getPackageLP(Landroid/content/pm/PackageParser$Package;Lcom/android/server/PackageManagerService$PackageSetting;Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZZ)Lcom/android/server/PackageManagerService$PackageSetting;
    .locals 13
    .parameter "pkg"
    .parameter "origPackage"
    .parameter "realName"
    .parameter "sharedUser"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "nativeLibraryPathString"
    .parameter "pkgFlags"
    .parameter "create"
    .parameter "add"

    .prologue
    .line 8363
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 8364
    .local v1, name:Ljava/lang/String;
    iget v8, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/server/PackageManagerService$Settings;->getPackageLP(Ljava/lang/String;Lcom/android/server/PackageManagerService$PackageSetting;Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IIZZ)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v12

    .line 8366
    .local v12, p:Lcom/android/server/PackageManagerService$PackageSetting;
    return-object v12
.end method

.method getReadMessagesLP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9274
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSharedUserLP(Ljava/lang/String;IZ)Lcom/android/server/PackageManagerService$SharedUserSetting;
    .locals 4
    .parameter "name"
    .parameter "pkgFlags"
    .parameter "create"

    .prologue
    .line 8440
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 8441
    .local v0, s:Lcom/android/server/PackageManagerService$SharedUserSetting;
    if-nez v0, :cond_1

    .line 8442
    if-nez p3, :cond_0

    .line 8443
    const/4 v1, 0x0

    .line 8459
    :goto_0
    return-object v1

    .line 8445
    :cond_0
    new-instance v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .end local v0           #s:Lcom/android/server/PackageManagerService$SharedUserSetting;
    invoke-direct {v0, p1, p2}, Lcom/android/server/PackageManagerService$SharedUserSetting;-><init>(Ljava/lang/String;I)V

    .line 8447
    .restart local v0       #s:Lcom/android/server/PackageManagerService$SharedUserSetting;
    invoke-direct {p0, v0}, Lcom/android/server/PackageManagerService$Settings;->newUserIdLP(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    .line 8451
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New shared user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8454
    iget v1, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    if-ltz v1, :cond_1

    .line 8455
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v1, v0

    .line 8459
    goto :goto_0
.end method

.method public getUserIdLP(I)Ljava/lang/Object;
    .locals 4
    .parameter "uid"

    .prologue
    const/16 v3, 0x2710

    .line 8863
    if-lt p1, v3, :cond_1

    .line 8864
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8865
    .local v0, N:I
    sub-int v1, p1, v3

    .line 8866
    .local v1, index:I
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 8868
    .end local v0           #N:I
    .end local v1           #index:I
    :goto_0
    return-object v2

    .line 8866
    .restart local v0       #N:I
    .restart local v1       #index:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 8868
    .end local v0           #N:I
    .end local v1           #index:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method isEnabledLP(Landroid/content/pm/ComponentInfo;I)Z
    .locals 5
    .parameter "componentInfo"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10058
    and-int/lit16 v1, p2, 0x200

    if-eqz v1, :cond_0

    move v1, v4

    .line 10089
    :goto_0
    return v1

    .line 10061
    :cond_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 10070
    .local v0, packageSettings:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v0, :cond_1

    move v1, v3

    .line 10076
    goto :goto_0

    .line 10078
    :cond_1
    iget v1, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_3

    iget v1, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    if-nez v1, :cond_3

    :cond_2
    move v1, v3

    .line 10081
    goto :goto_0

    .line 10083
    :cond_3
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    iget-object v2, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    .line 10084
    goto :goto_0

    .line 10086
    :cond_4
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    iget-object v2, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    .line 10087
    goto :goto_0

    .line 10089
    :cond_5
    iget-boolean v1, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    goto :goto_0
.end method

.method peekPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;
    .locals 1
    .parameter "name"

    .prologue
    .line 8398
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/PackageManagerService$PackageSetting;

    return-object p0
.end method

.method readLP()Z
    .locals 42

    .prologue
    .line 9292
    const/16 v38, 0x0

    .line 9293
    .local v38, str:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->checkXML(I)Z

    move-result v26

    .line 9294
    .local v26, mSettingsExists:Z
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->checkXML(I)Z

    move-result v24

    .line 9295
    .local v24, mBackupSettingsExists:Z
    const/4 v3, 0x2

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->checkXML(I)Z

    move-result v25

    .line 9296
    .local v25, mMoreBackupSettingsExists:Z
    const/16 v36, 0x0

    .line 9297
    .local v36, readXmlFileName:Ljava/io/File;
    if-eqz v25, :cond_0

    if-nez v24, :cond_0

    if-nez v26, :cond_0

    .line 9298
    const/4 v3, 0x4

    const-string v4, "Only MoreBackup file"

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 9299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mMoreBackupSettingsFilename:Ljava/io/File;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 9300
    const/16 v24, 0x1

    .line 9301
    const/16 v25, 0x0

    .line 9303
    :cond_0
    if-eqz v24, :cond_2

    .line 9305
    :try_start_0
    new-instance v39, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object v3, v0

    move-object/from16 v0, v39

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 9306
    .end local v38           #str:Ljava/io/FileInputStream;
    .local v39, str:Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v36, v0

    .line 9307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "Reading from backup settings file\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9308
    const/4 v3, 0x4

    const-string v4, "Need to read from backup settings file"

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 9309
    if-eqz v26, :cond_1

    .line 9313
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up settings file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    :cond_1
    move-object/from16 v38, v39

    .line 9321
    .end local v39           #str:Ljava/io/FileInputStream;
    .restart local v38       #str:Ljava/io/FileInputStream;
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 9324
    if-nez v38, :cond_4

    .line 9325
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 9326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "No settings file found\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9327
    const/4 v3, 0x4

    const-string v4, "No settings file; creating initial state"

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 9328
    const/4 v3, 0x0

    .line 9471
    :goto_1
    return v3

    .line 9330
    :cond_3
    new-instance v39, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object v3, v0

    move-object/from16 v0, v39

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 9331
    .end local v38           #str:Ljava/io/FileInputStream;
    .restart local v39       #str:Ljava/io/FileInputStream;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v36, v0
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v38, v39

    .line 9333
    .end local v39           #str:Ljava/io/FileInputStream;
    .restart local v38       #str:Ljava/io/FileInputStream;
    :cond_4
    :try_start_4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v33

    .line 9334
    .local v33, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    move-object v2, v3

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 9338
    :cond_5
    invoke-interface/range {v33 .. v33}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v41

    .local v41, type:I
    const/4 v3, 0x2

    move/from16 v0, v41

    move v1, v3

    if-eq v0, v1, :cond_6

    const/4 v3, 0x1

    move/from16 v0, v41

    move v1, v3

    if-ne v0, v1, :cond_5

    .line 9342
    :cond_6
    const/4 v3, 0x2

    move/from16 v0, v41

    move v1, v3

    if-eq v0, v1, :cond_7

    .line 9343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "No start tag found in settings file\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9344
    const/4 v3, 0x5

    const-string v4, "No start tag found in package manager settings"

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 9345
    const/4 v3, 0x0

    goto :goto_1

    .line 9348
    :cond_7
    invoke-interface/range {v33 .. v33}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v31

    .line 9350
    .local v31, outerDepth:I
    :cond_8
    :goto_2
    invoke-interface/range {v33 .. v33}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v41

    const/4 v3, 0x1

    move/from16 v0, v41

    move v1, v3

    if-eq v0, v1, :cond_14

    const/4 v3, 0x3

    move/from16 v0, v41

    move v1, v3

    if-ne v0, v1, :cond_9

    invoke-interface/range {v33 .. v33}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v0, v3

    move/from16 v1, v31

    if-le v0, v1, :cond_14

    .line 9352
    :cond_9
    const/4 v3, 0x3

    move/from16 v0, v41

    move v1, v3

    if-eq v0, v1, :cond_8

    const/4 v3, 0x4

    move/from16 v0, v41

    move v1, v3

    if-eq v0, v1, :cond_8

    .line 9357
    invoke-interface/range {v33 .. v33}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v40

    .line 9358
    .local v40, tagName:Ljava/lang/String;
    const-string v3, "package"

    move-object/from16 v0, v40

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 9359
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->readPackageLP(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 9405
    .end local v31           #outerDepth:I
    .end local v33           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v40           #tagName:Ljava/lang/String;
    .end local v41           #type:I
    :catch_0
    move-exception v3

    move-object/from16 v18, v3

    .line 9406
    .local v18, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9407
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading settings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 9408
    const-string v3, "PackageManager"

    const-string v4, "Error reading package manager settings"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9409
    sget-object v35, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 9410
    .local v35, productName:Ljava/lang/String;
    if-eqz v35, :cond_15

    const-string v3, "SHV-E"

    move-object/from16 v0, v35

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 9411
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9412
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/packages-error-backup.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v37

    .line 9413
    .local v37, ret:Z
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rename : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9417
    .end local v37           #ret:Z
    :goto_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "packages.xml or packages-backup.xml is broken...removing."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 9360
    .end local v18           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v35           #productName:Ljava/lang/String;
    .restart local v31       #outerDepth:I
    .restart local v33       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v40       #tagName:Ljava/lang/String;
    .restart local v41       #type:I
    :cond_a
    :try_start_5
    const-string v3, "permissions"

    move-object/from16 v0, v40

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 9361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->readPermissionsLP(Ljava/util/HashMap;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 9418
    .end local v31           #outerDepth:I
    .end local v33           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v40           #tagName:Ljava/lang/String;
    .end local v41           #type:I
    :catch_1
    move-exception v3

    move-object/from16 v18, v3

    .line 9419
    .local v18, e:Ljava/io/IOException;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9420
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading settings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 9421
    const-string v3, "PackageManager"

    const-string v4, "Error reading package manager settings"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9424
    .end local v18           #e:Ljava/io/IOException;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPendingPackages:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 9425
    .local v15, N:I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_7
    move/from16 v0, v20

    move v1, v15

    if-ge v0, v1, :cond_19

    .line 9426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPendingPackages:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/PackageManagerService$Settings$PendingPackage;

    .line 9427
    .local v34, pp:Lcom/android/server/PackageManagerService$Settings$PendingPackage;
    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->sharedId:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->getUserIdLP(I)Ljava/lang/Object;

    move-result-object v22

    .line 9428
    .local v22, idObj:Ljava/lang/Object;
    if-eqz v22, :cond_17

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    move v3, v0

    if-eqz v3, :cond_17

    .line 9429
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->realName:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v22

    check-cast v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v7, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePath:Ljava/io/File;

    move-object v8, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePath:Ljava/io/File;

    move-object v9, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->versionCode:I

    move v11, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->pkgFlags:I

    move v12, v0

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v14}, Lcom/android/server/PackageManagerService$Settings;->getPackageLP(Ljava/lang/String;Lcom/android/server/PackageManagerService$PackageSetting;Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IIZZ)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v32

    .line 9432
    .local v32, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v32, :cond_16

    .line 9433
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create application package for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 9425
    .end local v32           #p:Lcom/android/server/PackageManagerService$PackageSetting;
    :goto_8
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 9362
    .end local v15           #N:I
    .end local v20           #i:I
    .end local v22           #idObj:Ljava/lang/Object;
    .end local v34           #pp:Lcom/android/server/PackageManagerService$Settings$PendingPackage;
    .restart local v31       #outerDepth:I
    .restart local v33       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v40       #tagName:Ljava/lang/String;
    .restart local v41       #type:I
    :cond_b
    :try_start_6
    const-string v3, "permission-trees"

    move-object/from16 v0, v40

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 9363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->readPermissionsLP(Ljava/util/HashMap;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 9364
    :cond_c
    const-string v3, "shared-user"

    move-object/from16 v0, v40

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 9365
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->readSharedUserLP(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 9366
    :cond_d
    const-string v3, "preferred-packages"

    move-object/from16 v0, v40

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 9368
    const-string v3, "preferred-activities"

    move-object/from16 v0, v40

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 9369
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->readPreferredActivitiesLP(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 9370
    :cond_e
    const-string v3, "updated-package"

    move-object/from16 v0, v40

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 9371
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->readDisabledSysPackageLP(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 9372
    :cond_f
    const-string v3, "cleaning-package"

    move-object/from16 v0, v40

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 9373
    const/4 v3, 0x0

    const-string v4, "name"

    move-object/from16 v0, v33

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 9374
    .local v28, name:Ljava/lang/String;
    if-eqz v28, :cond_8

    .line 9375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 9377
    .end local v28           #name:Ljava/lang/String;
    :cond_10
    const-string v3, "renamed-package"

    move-object/from16 v0, v40

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 9378
    const/4 v3, 0x0

    const-string v4, "new"

    move-object/from16 v0, v33

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 9379
    .local v29, nname:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "old"

    move-object/from16 v0, v33

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 9380
    .local v30, oname:Ljava/lang/String;
    if-eqz v29, :cond_8

    if-eqz v30, :cond_8

    .line 9381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 9383
    .end local v29           #nname:Ljava/lang/String;
    .end local v30           #oname:Ljava/lang/String;
    :cond_11
    const-string v3, "last-platform-version"

    move-object/from16 v0, v40

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 9384
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService$Settings;->mExternalSdkPlatform:I

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService$Settings;->mInternalSdkPlatform:I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 9386
    const/4 v3, 0x0

    :try_start_7
    const-string v4, "internal"

    move-object/from16 v0, v33

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 9387
    .local v23, internal:Ljava/lang/String;
    if-eqz v23, :cond_12

    .line 9388
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService$Settings;->mInternalSdkPlatform:I

    .line 9390
    :cond_12
    const/4 v3, 0x0

    const-string v4, "external"

    move-object/from16 v0, v33

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 9391
    .local v19, external:Ljava/lang/String;
    if-eqz v19, :cond_8

    .line 9392
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService$Settings;->mExternalSdkPlatform:I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    .line 9394
    .end local v19           #external:Ljava/lang/String;
    .end local v23           #internal:Ljava/lang/String;
    :catch_2
    move-exception v3

    goto/16 :goto_2

    .line 9397
    :cond_13
    :try_start_8
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <packages>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v33 .. v33}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9399
    invoke-static/range {v33 .. v33}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 9403
    .end local v40           #tagName:Ljava/lang/String;
    :cond_14
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_6

    .line 9415
    .end local v31           #outerDepth:I
    .end local v33           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v41           #type:I
    .local v18, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v35       #productName:Ljava/lang/String;
    :cond_15
    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->delete()Z

    goto/16 :goto_4

    .line 9437
    .end local v18           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v35           #productName:Ljava/lang/String;
    .restart local v15       #N:I
    .restart local v20       #i:I
    .restart local v22       #idObj:Ljava/lang/Object;
    .restart local v32       #p:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v34       #pp:Lcom/android/server/PackageManagerService$Settings$PendingPackage;
    :cond_16
    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageSetting;->copyFrom(Lcom/android/server/PackageManagerService$PackageSettingBase;)V

    goto/16 :goto_8

    .line 9438
    .end local v32           #p:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_17
    if-eqz v22, :cond_18

    .line 9439
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad package setting: package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has shared uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->sharedId:I

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " that is not a shared uid\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 9442
    .local v27, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9443
    const/4 v3, 0x6

    move v0, v3

    move-object/from16 v1, v27

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto/16 :goto_8

    .line 9445
    .end local v27           #msg:Ljava/lang/String;
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad package setting: package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has shared uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->sharedId:I

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " that is not defined\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 9448
    .restart local v27       #msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9449
    const/4 v3, 0x6

    move v0, v3

    move-object/from16 v1, v27

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto/16 :goto_8

    .line 9452
    .end local v22           #idObj:Ljava/lang/Object;
    .end local v27           #msg:Ljava/lang/String;
    .end local v34           #pp:Lcom/android/server/PackageManagerService$Settings$PendingPackage;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPendingPackages:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 9458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 9459
    .local v16, disabledIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    :cond_1a
    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 9460
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 9461
    .local v17, disabledPs:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->getUserIdLP(I)Ljava/lang/Object;

    move-result-object v21

    .line 9462
    .local v21, id:Ljava/lang/Object;
    if-eqz v21, :cond_1a

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    move v3, v0

    if-eqz v3, :cond_1a

    .line 9463
    check-cast v21, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .end local v21           #id:Ljava/lang/Object;
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    goto :goto_9

    .line 9467
    .end local v17           #disabledPs:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read completed successfully: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " packages, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " shared uids\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9471
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 9418
    .end local v15           #N:I
    .end local v16           #disabledIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    .end local v20           #i:I
    .end local v38           #str:Ljava/io/FileInputStream;
    .restart local v39       #str:Ljava/io/FileInputStream;
    :catch_3
    move-exception v3

    move-object/from16 v18, v3

    move-object/from16 v38, v39

    .end local v39           #str:Ljava/io/FileInputStream;
    .restart local v38       #str:Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 9405
    .end local v38           #str:Ljava/io/FileInputStream;
    .restart local v39       #str:Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object/from16 v18, v3

    move-object/from16 v38, v39

    .end local v39           #str:Ljava/io/FileInputStream;
    .restart local v38       #str:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 9316
    :catch_5
    move-exception v3

    goto/16 :goto_0

    .end local v38           #str:Ljava/io/FileInputStream;
    .restart local v39       #str:Ljava/io/FileInputStream;
    :catch_6
    move-exception v3

    move-object/from16 v38, v39

    .end local v39           #str:Ljava/io/FileInputStream;
    .restart local v38       #str:Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method setInstallStatus(Ljava/lang/String;I)V
    .locals 2
    .parameter "pkgName"
    .parameter "status"

    .prologue
    .line 8409
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8410
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_0

    .line 8411
    invoke-virtual {v0}, Lcom/android/server/PackageManagerService$PackageSetting;->getInstallStatus()I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 8412
    invoke-virtual {v0, p2}, Lcom/android/server/PackageManagerService$PackageSetting;->setInstallStatus(I)V

    .line 8415
    :cond_0
    return-void
.end method

.method setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"
    .parameter "installerPkgName"

    .prologue
    .line 8419
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8420
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_0

    .line 8421
    invoke-virtual {v0, p2}, Lcom/android/server/PackageManagerService$PackageSetting;->setInstallerPackageName(Ljava/lang/String;)V

    .line 8423
    :cond_0
    return-void
.end method

.method writeDisabledSysPackage(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$PackageSetting;)V
    .locals 11
    .parameter "serializer"
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const-string v10, "updated-package"

    const-string v9, "perms"

    const-string v8, "name"

    const-string v7, "item"

    .line 9117
    const-string v3, "updated-package"

    invoke-interface {p1, v6, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9118
    const-string v3, "name"

    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    invoke-interface {p1, v6, v8, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9119
    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->realName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 9120
    const-string v3, "realName"

    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->realName:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9122
    :cond_0
    const-string v3, "codePath"

    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9123
    const-string v3, "ft"

    iget-wide v4, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9124
    const-string v3, "it"

    iget-wide v4, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->firstInstallTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9125
    const-string v3, "ut"

    iget-wide v4, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->lastUpdateTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9126
    const-string v3, "version"

    iget v4, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->versionCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9127
    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9128
    const-string v3, "resourcePath"

    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9130
    :cond_1
    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 9131
    const-string v3, "nativeLibraryPath"

    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9133
    :cond_2
    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-nez v3, :cond_4

    .line 9134
    const-string v3, "userId"

    iget v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9140
    :goto_0
    const-string v3, "perms"

    invoke-interface {p1, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9141
    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-nez v3, :cond_5

    .line 9146
    iget-object v3, p2, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9147
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 9148
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v0, :cond_3

    .line 9151
    const-string v3, "item"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9152
    const-string v3, "name"

    invoke-interface {p1, v6, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9153
    const-string v3, "item"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 9137
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #name:Ljava/lang/String;
    :cond_4
    const-string v3, "sharedUserId"

    iget v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 9157
    :cond_5
    const-string v3, "perms"

    invoke-interface {p1, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9158
    const-string v3, "updated-package"

    invoke-interface {p1, v6, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9159
    return-void
.end method

.method writeLP()V
    .locals 32

    .prologue
    .line 8908
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->checkXML(I)Z

    move-result v18

    .line 8909
    .local v18, mSettingsExists:Z
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->checkXML(I)Z

    move-result v16

    .line 8910
    .local v16, mBackupSettingsExists:Z
    const/16 v28, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->checkXML(I)Z

    move-result v17

    .line 8911
    .local v17, mMoreBackupSettingsExists:Z
    if-eqz v18, :cond_4

    .line 8916
    if-nez v16, :cond_3

    .line 8917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v28

    if-nez v28, :cond_1

    .line 8918
    const-string v28, "PackageManager"

    const-string v29, "Unable to backup package manager settings, current changes will be lost at reboot"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9113
    :cond_0
    :goto_0
    return-void

    .line 8921
    :cond_1
    const/16 v16, 0x1

    .line 8934
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->clear()V

    .line 8936
    new-instance v26, Ljava/io/File;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ".tmp"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8937
    .local v26, tempFile_0:Ljava/io/File;
    new-instance v15, Lcom/android/internal/util/JournaledFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v28, v0

    move-object v0, v15

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 8940
    .local v15, journal_0:Lcom/android/internal/util/JournaledFile;
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-virtual {v15}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v28

    move-object v0, v9

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 8941
    .local v9, fstr:Ljava/io/FileOutputStream;
    new-instance v24, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v24

    move-object v1, v9

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 8944
    .local v24, str:Ljava/io/BufferedOutputStream;
    new-instance v23, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v23 .. v23}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 8945
    .local v23, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v28, "utf-8"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 8946
    const/16 v28, 0x0

    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 8947
    const-string v28, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 8949
    const/16 v28, 0x0

    const-string v29, "packages"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8951
    const/16 v28, 0x0

    const-string v29, "last-platform-version"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8952
    const/16 v28, 0x0

    const-string v29, "internal"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService$Settings;->mInternalSdkPlatform:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8953
    const/16 v28, 0x0

    const-string v29, "external"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService$Settings;->mExternalSdkPlatform:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8954
    const/16 v28, 0x0

    const-string v29, "last-platform-version"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8956
    const/16 v28, 0x0

    const-string v29, "permission-trees"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageManagerService$BasePermission;

    .line 8958
    .local v5, bp:Lcom/android/server/PackageManagerService$BasePermission;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->writePermission(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$BasePermission;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .line 9096
    .end local v5           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v9           #fstr:Ljava/io/FileOutputStream;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v23           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v24           #str:Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v28

    move-object/from16 v7, v28

    .line 9097
    .local v7, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v28, "PackageManager"

    const-string v29, "Unable to write package manager settings, current changes will be lost at reboot"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9104
    .end local v7           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    invoke-virtual {v15}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 9107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 9108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->delete()Z

    move-result v28

    if-nez v28, :cond_0

    .line 9109
    const-string v28, "PackageManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Failed to clean up mangled file: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8924
    .end local v15           #journal_0:Lcom/android/internal/util/JournaledFile;
    .end local v26           #tempFile_0:Ljava/io/File;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->delete()Z

    .line 8925
    const-string v28, "PackageManager"

    const-string v29, "Preserving older settings backup"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 8928
    :cond_4
    if-nez v16, :cond_2

    if-eqz v17, :cond_2

    .line 8929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mMoreBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 8930
    const/16 v17, 0x0

    .line 8931
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 8960
    .restart local v9       #fstr:Ljava/io/FileOutputStream;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v15       #journal_0:Lcom/android/internal/util/JournaledFile;
    .restart local v23       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v24       #str:Ljava/io/BufferedOutputStream;
    .restart local v26       #tempFile_0:Ljava/io/File;
    :cond_5
    const/16 v28, 0x0

    :try_start_1
    const-string v29, "permission-trees"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8962
    const/16 v28, 0x0

    const-string v29, "permissions"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageManagerService$BasePermission;

    .line 8964
    .restart local v5       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->writePermission(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$BasePermission;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    .line 9098
    .end local v5           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v9           #fstr:Ljava/io/FileOutputStream;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v23           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v24           #str:Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v28

    move-object/from16 v7, v28

    .line 9099
    .local v7, e:Ljava/io/IOException;
    const-string v28, "PackageManager"

    const-string v29, "Unable to write package manager settings, current changes will be lost at reboot"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 8966
    .end local v7           #e:Ljava/io/IOException;
    .restart local v9       #fstr:Ljava/io/FileOutputStream;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v23       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v24       #str:Ljava/io/BufferedOutputStream;
    :cond_6
    const/16 v28, 0x0

    :try_start_2
    const-string v29, "permissions"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8969
    .local v21, pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->writePackage(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$PackageSetting;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 9100
    .end local v9           #fstr:Ljava/io/FileOutputStream;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v21           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v23           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v24           #str:Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v28

    move-object/from16 v7, v28

    .line 9101
    .local v7, e:Ljava/lang/Exception;
    const-string v28, "PackageManager"

    const-string v29, "Unable to write package manager settings, current changes will be lost at reboot"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 8972
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v9       #fstr:Ljava/io/FileOutputStream;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v23       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v24       #str:Ljava/io/BufferedOutputStream;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8973
    .restart local v21       #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->writeDisabledSysPackage(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$PackageSetting;)V

    goto :goto_6

    .line 8976
    .end local v21           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_8
    const/16 v28, 0x0

    const-string v29, "preferred-activities"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/PackageManagerService$PreferredActivity;

    .line 8978
    .local v20, pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    const/16 v28, 0x0

    const-string v29, "item"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8979
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 8980
    const/16 v28, 0x0

    const-string v29, "item"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7

    .line 8982
    .end local v20           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    :cond_9
    const/16 v28, 0x0

    const-string v29, "preferred-activities"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v11           #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 8985
    .local v27, usr:Lcom/android/server/PackageManagerService$SharedUserSetting;
    const/16 v28, 0x0

    const-string v29, "shared-user"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8986
    const/16 v28, 0x0

    const-string v29, "name"

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8987
    const/16 v28, 0x0

    const-string v29, "userId"

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8989
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    move-object/from16 v28, v0

    const-string v29, "sigs"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService$PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 8990
    const/16 v28, 0x0

    const-string v29, "perms"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8991
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 8992
    .local v19, name:Ljava/lang/String;
    const/16 v28, 0x0

    const-string v29, "item"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8993
    const/16 v28, 0x0

    const-string v29, "name"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8994
    const/16 v28, 0x0

    const-string v29, "item"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_9

    .line 8996
    .end local v19           #name:Ljava/lang/String;
    :cond_a
    const/16 v28, 0x0

    const-string v29, "perms"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8997
    const/16 v28, 0x0

    const-string v29, "shared-user"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_8

    .line 9000
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v27           #usr:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-lez v28, :cond_c

    .line 9001
    const/4 v10, 0x0

    .local v10, i:I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    move v0, v10

    move/from16 v1, v28

    if-ge v0, v1, :cond_c

    .line 9002
    const/16 v28, 0x0

    const-string v29, "cleaning-package"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9003
    const/16 v28, 0x0

    const-string v29, "name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object v3, v4

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9004
    const/16 v28, 0x0

    const-string v29, "cleaning-package"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9001
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 9008
    .end local v10           #i:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->size()I

    move-result v28

    if-lez v28, :cond_d

    .line 9009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 9010
    .local v8, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v28, 0x0

    const-string v29, "renamed-package"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9011
    const/16 v28, 0x0

    const-string v29, "new"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object v3, v4

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9012
    const/16 v28, 0x0

    const-string v29, "old"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object v3, v4

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9013
    const/16 v28, 0x0

    const-string v29, "renamed-package"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_b

    .line 9017
    .end local v8           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_d
    const/16 v28, 0x0

    const-string v29, "packages"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9019
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 9021
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedOutputStream;->flush()V

    .line 9022
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 9023
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedOutputStream;->close()V

    .line 9024
    invoke-virtual {v15}, Lcom/android/internal/util/JournaledFile;->commit()V

    .line 9028
    if-eqz v17, :cond_e

    .line 9029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mMoreBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->delete()Z

    .line 9031
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mMoreBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 9032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1b4

    const/16 v30, -0x1

    const/16 v31, -0x1

    invoke-static/range {v28 .. v31}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 9040
    new-instance v25, Ljava/io/File;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackageListFilename:Ljava/io/File;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ".tmp"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9041
    .local v25, tempFile:Ljava/io/File;
    new-instance v14, Lcom/android/internal/util/JournaledFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackageListFilename:Ljava/io/File;

    move-object/from16 v28, v0

    move-object v0, v14

    move-object/from16 v1, v28

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 9043
    .local v14, journal:Lcom/android/internal/util/JournaledFile;
    new-instance v9, Ljava/io/FileOutputStream;

    .end local v9           #fstr:Ljava/io/FileOutputStream;
    invoke-virtual {v14}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v28

    move-object v0, v9

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 9044
    .restart local v9       #fstr:Ljava/io/FileOutputStream;
    new-instance v24, Ljava/io/BufferedOutputStream;

    .end local v24           #str:Ljava/io/BufferedOutputStream;
    move-object/from16 v0, v24

    move-object v1, v9

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 9046
    .restart local v24       #str:Ljava/io/BufferedOutputStream;
    :try_start_4
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 9047
    .local v22, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_f
    :goto_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 9048
    .restart local v21       #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    .line 9049
    .local v4, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 9050
    .local v6, dataPath:Ljava/lang/String;
    move-object v0, v4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x2

    if-eqz v28, :cond_10

    const/16 v28, 0x1

    move/from16 v13, v28

    .line 9054
    .local v13, isDebug:Z
    :goto_d
    const-string v28, " "

    move-object v0, v6

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    if-gez v28, :cond_f

    move-object v0, v4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v28, v0

    const/16 v29, 0x2710

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_f

    .line 9070
    const/16 v28, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 9071
    move-object v0, v4

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9072
    const-string v28, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9073
    move-object v0, v4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v28, v0

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9074
    if-eqz v13, :cond_11

    const-string v28, " 1 "

    :goto_e
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9075
    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9076
    const-string v28, "\n"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9077
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_c

    .line 9084
    .end local v4           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #dataPath:Ljava/lang/String;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #isDebug:Z
    .end local v21           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v22           #sb:Ljava/lang/StringBuilder;
    :catch_3
    move-exception v28

    move-object/from16 v7, v28

    .line 9085
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v14}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 9088
    .end local v7           #e:Ljava/lang/Exception;
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackageListFilename:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1b4

    const/16 v30, -0x1

    const/16 v31, -0x1

    invoke-static/range {v28 .. v31}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 9050
    .restart local v4       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #dataPath:Ljava/lang/String;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v21       #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v22       #sb:Ljava/lang/StringBuilder;
    :cond_10
    const/16 v28, 0x0

    move/from16 v13, v28

    goto/16 :goto_d

    .line 9074
    .restart local v13       #isDebug:Z
    :cond_11
    :try_start_6
    const-string v28, " 0 "

    goto :goto_e

    .line 9079
    .end local v4           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #dataPath:Ljava/lang/String;
    .end local v13           #isDebug:Z
    .end local v21           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_12
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedOutputStream;->flush()V

    .line 9080
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 9081
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedOutputStream;->close()V

    .line 9082
    invoke-virtual {v14}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_f
.end method

.method writePackage(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$PackageSetting;)V
    .locals 10
    .parameter "serializer"
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-string v9, "enabled-components"

    const-string v8, "disabled-components"

    const-string v7, "name"

    const-string v6, "item"

    .line 9163
    const-string v2, "package"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9164
    const-string v2, "name"

    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    invoke-interface {p1, v5, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9165
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->realName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 9166
    const-string v2, "realName"

    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->realName:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9168
    :cond_0
    const-string v2, "codePath"

    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9169
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9170
    const-string v2, "resourcePath"

    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9172
    :cond_1
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 9173
    const-string v2, "nativeLibraryPath"

    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9175
    :cond_2
    const-string v2, "flags"

    iget v3, p2, Lcom/android/server/PackageManagerService$GrantedPermissions;->pkgFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9177
    const-string v2, "ft"

    iget-wide v3, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9178
    const-string v2, "it"

    iget-wide v3, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->firstInstallTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9179
    const-string v2, "ut"

    iget-wide v3, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->lastUpdateTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9180
    const-string v2, "version"

    iget v3, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9181
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-nez v2, :cond_7

    .line 9182
    const-string v2, "userId"

    iget v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9188
    :goto_0
    iget-boolean v2, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->uidError:Z

    if-eqz v2, :cond_3

    .line 9189
    const-string v2, "uidError"

    const-string v3, "true"

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9191
    :cond_3
    iget v2, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    if-eqz v2, :cond_4

    .line 9192
    const-string v2, "enabled"

    iget v3, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    const-string v3, "true"

    :goto_1
    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9196
    :cond_4
    iget v2, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    if-nez v2, :cond_5

    .line 9197
    const-string v2, "installStatus"

    const-string v3, "false"

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9199
    :cond_5
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->installerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 9200
    const-string v2, "installer"

    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->installerPackageName:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9202
    :cond_6
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    const-string v3, "sigs"

    iget-object v4, p0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/PackageManagerService$PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 9203
    iget v2, p2, Lcom/android/server/PackageManagerService$GrantedPermissions;->pkgFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_a

    .line 9204
    const-string v2, "perms"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9205
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-nez v2, :cond_9

    .line 9210
    iget-object v2, p2, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9211
    .local v1, name:Ljava/lang/String;
    const-string v2, "item"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9212
    const-string v2, "name"

    invoke-interface {p1, v5, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9213
    const-string v2, "item"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 9185
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #name:Ljava/lang/String;
    :cond_7
    const-string v2, "sharedUserId"

    iget v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 9192
    :cond_8
    const-string v3, "false"

    goto :goto_1

    .line 9216
    :cond_9
    const-string v2, "perms"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9218
    :cond_a
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 9219
    const-string v2, "disabled-components"

    invoke-interface {p1, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9220
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9221
    .restart local v1       #name:Ljava/lang/String;
    const-string v2, "item"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9222
    const-string v2, "name"

    invoke-interface {p1, v5, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9223
    const-string v2, "item"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 9225
    .end local v1           #name:Ljava/lang/String;
    :cond_b
    const-string v2, "disabled-components"

    invoke-interface {p1, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9227
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_c
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 9228
    const-string v2, "enabled-components"

    invoke-interface {p1, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9229
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9230
    .restart local v1       #name:Ljava/lang/String;
    const-string v2, "item"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9231
    const-string v2, "name"

    invoke-interface {p1, v5, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9232
    const-string v2, "item"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_4

    .line 9234
    .end local v1           #name:Ljava/lang/String;
    :cond_d
    const-string v2, "enabled-components"

    invoke-interface {p1, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9237
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_e
    const-string v2, "package"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9238
    return-void
.end method

.method writePermission(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$BasePermission;)V
    .locals 5
    .parameter "serializer"
    .parameter "bp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string v4, "item"

    .line 9242
    iget v1, p2, Lcom/android/server/PackageManagerService$BasePermission;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    iget-object v1, p2, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 9244
    const-string v1, "item"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9245
    const-string v1, "name"

    iget-object v2, p2, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9246
    const-string v1, "package"

    iget-object v2, p2, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9247
    iget v1, p2, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    if-eqz v1, :cond_0

    .line 9249
    const-string v1, "protection"

    iget v2, p2, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9254
    :cond_0
    iget v1, p2, Lcom/android/server/PackageManagerService$BasePermission;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 9255
    iget-object v1, p2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v1, :cond_4

    iget-object v1, p2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v0, v1

    .line 9257
    .local v0, pi:Landroid/content/pm/PermissionInfo;
    :goto_0
    if-eqz v0, :cond_2

    .line 9258
    const-string v1, "type"

    const-string v2, "dynamic"

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9259
    iget v1, v0, Landroid/content/pm/PermissionInfo;->icon:I

    if-eqz v1, :cond_1

    .line 9260
    const-string v1, "icon"

    iget v2, v0, Landroid/content/pm/PermissionInfo;->icon:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9263
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 9264
    const-string v1, "label"

    iget-object v2, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9269
    .end local v0           #pi:Landroid/content/pm/PermissionInfo;
    :cond_2
    const-string v1, "item"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9271
    :cond_3
    return-void

    .line 9255
    :cond_4
    iget-object v1, p2, Lcom/android/server/PackageManagerService$BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    move-object v0, v1

    goto :goto_0
.end method
