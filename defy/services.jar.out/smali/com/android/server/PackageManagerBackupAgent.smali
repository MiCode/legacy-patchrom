.class public Lcom/android/server/PackageManagerBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "PackageManagerBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PackageManagerBackupAgent$Metadata;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final GLOBAL_METADATA_KEY:Ljava/lang/String; = "@meta@"

.field private static final TAG:Ljava/lang/String; = "PMBA"


# instance fields
.field private mAllPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mExisting:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasMetadata:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRestoredSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerBackupAgent$Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private mStateVersions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerBackupAgent$Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private mStoredIncrementalVersion:Ljava/lang/String;

.field private mStoredSdkVersion:I


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V
    .locals 1
    .parameter "packageMgr"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/android/server/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/android/server/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PackageManagerBackupAgent;->mHasMetadata:Z

    return-void
.end method

.method private parseStateFile(Landroid/os/ParcelFileDescriptor;)V
    .locals 11
    .parameter "stateFile"

    .prologue
    const/4 v8, 0x0

    const-string v10, "PMBA"

    const-string v7, "@meta@"

    iget-object v7, p0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    iget-object v7, p0, Lcom/android/server/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/PackageManagerBackupAgent;->mStoredSdkVersion:I

    iput-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .local v4, instream:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v3, in:Ljava/io/DataInputStream;
    const/16 v1, 0x100

    .local v1, bufSize:I
    new-array v0, v1, [B

    .local v0, buf:[B
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .local v5, pkg:Ljava/lang/String;
    const-string v7, "@meta@"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, p0, Lcom/android/server/PackageManagerBackupAgent;->mStoredSdkVersion:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    const-string v8, "@meta@"

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .local v6, versionCode:I
    iget-object v7, p0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    new-instance v8, Lcom/android/server/PackageManagerBackupAgent$Metadata;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v6, v9}, Lcom/android/server/PackageManagerBackupAgent$Metadata;-><init>(Lcom/android/server/PackageManagerBackupAgent;I[Landroid/content/pm/Signature;)V

    invoke-virtual {v7, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v5           #pkg:Ljava/lang/String;
    .end local v6           #versionCode:I
    :catch_0
    move-exception v7

    :goto_1
    return-void

    .restart local v5       #pkg:Ljava/lang/String;
    :cond_0
    const-string v7, "PMBA"

    const-string v8, "No global metadata in state file!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .end local v5           #pkg:Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v2, v7

    .local v2, e:Ljava/io/IOException;
    const-string v7, "PMBA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to read Package Manager state file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static readSignatureArray(Ljava/io/DataInputStream;)[Landroid/content/pm/Signature;
    .locals 10
    .parameter "in"

    .prologue
    const/4 v9, 0x0

    const-string v8, "PMBA"

    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .local v4, num:I
    const/16 v6, 0x14

    if-le v4, v6, :cond_0

    :try_start_1
    const-string v6, "PMBA"

    const-string v7, "Suspiciously large sig count in restore data; aborting"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Bad restore state"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v4           #num:I
    :catch_0
    move-exception v6

    move-object v0, v6

    .local v0, e:Ljava/io/IOException;
    const-string v6, "PMBA"

    const-string v6, "Unable to read signatures"

    invoke-static {v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .end local v0           #e:Ljava/io/IOException;
    :goto_0
    return-object v6

    :catch_1
    move-exception v0

    .local v0, e:Ljava/io/EOFException;
    :try_start_2
    const-string v6, "PMBA"

    const-string v7, "Read empty signature block"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    goto :goto_0

    .end local v0           #e:Ljava/io/EOFException;
    .restart local v4       #num:I
    :cond_0
    new-array v5, v4, [Landroid/content/pm/Signature;

    .local v5, sigs:[Landroid/content/pm/Signature;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .local v3, len:I
    new-array v1, v3, [B

    .local v1, flatSig:[B
    invoke-virtual {p0, v1}, Ljava/io/DataInputStream;->read([B)I

    new-instance v6, Landroid/content/pm/Signature;

    invoke-direct {v6, v1}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v6, v5, v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #flatSig:[B
    .end local v3           #len:I
    :cond_1
    move-object v6, v5

    goto :goto_0
.end method

.method private static writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V
    .locals 1
    .parameter "data"
    .parameter "key"
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    array-length v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    array-length v0, p2

    invoke-virtual {p0, p2, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    return-void
.end method

.method private static writeSignatureArray(Ljava/io/DataOutputStream;[Landroid/content/pm/Signature;)V
    .locals 6
    .parameter "out"
    .parameter "sigs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    array-length v5, p1

    invoke-virtual {p0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object v0, p1

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .local v4, sig:Landroid/content/pm/Signature;
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    .local v1, flat:[B
    array-length v5, v1

    invoke-virtual {p0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #flat:[B
    .end local v4           #sig:Landroid/content/pm/Signature;
    :cond_0
    return-void
.end method

.method private writeStateFile(Ljava/util/List;Landroid/os/ParcelFileDescriptor;)V
    .locals 7
    .parameter
    .parameter "stateFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Landroid/os/ParcelFileDescriptor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, pkgs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .local v3, outstream:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v2, out:Ljava/io/DataOutputStream;
    :try_start_0
    const-string v5, "@meta@"

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .local v4, pkg:Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #pkg:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/io/IOException;
    const-string v5, "PMBA"

    const-string v6, "Unable to write package manager state file!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    return-void
.end method


# virtual methods
.method public getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/PackageManagerBackupAgent$Metadata;
    .locals 2
    .parameter "packageName"

    .prologue
    iget-object v0, p0, Lcom/android/server/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string v0, "PMBA"

    const-string v1, "getRestoredMetadata() before metadata read!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/server/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/PackageManagerBackupAgent$Metadata;

    move-object v0, p0

    goto :goto_0
.end method

.method public getRestoredPackages()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string v0, "PMBA"

    const-string v1, "getRestoredPackages() before metadata read!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public hasMetadata()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/PackageManagerBackupAgent;->mHasMetadata:Z

    return v0
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 12
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"

    .prologue
    const-string v11, "PMBA"

    const-string v8, "@meta@"

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v4, outputBuffer:Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v5, outputBufferStream:Ljava/io/DataOutputStream;
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerBackupAgent;->parseStateFile(Landroid/os/ParcelFileDescriptor;)V

    iget-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    sget-object v9, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    const-string v8, "PMBA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Previous metadata "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mismatch vs "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - rewriting"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    :cond_1
    :try_start_0
    iget-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    const-string v9, "@meta@"

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    sget-object v8, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v8, "@meta@"

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-static {p2, v8, v9}, Lcom/android/server/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V

    :goto_0
    iget-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .local v7, pkg:Landroid/content/pm/PackageInfo;
    iget-object v6, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .local v6, packName:Ljava/lang/String;
    const-string v8, "@meta@"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_2

    const/4 v3, 0x0

    .local v3, info:Landroid/content/pm/PackageInfo;
    :try_start_1
    iget-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v9, 0x40

    invoke-virtual {v8, v6, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    :try_start_2
    iget-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v8, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v8, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget v9, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/PackageManagerBackupAgent$Metadata;

    iget v8, v8, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    if-eq v9, v8, :cond_2

    :cond_3
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v8, :cond_4

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    if-nez v8, :cond_6

    :cond_4
    const-string v8, "PMBA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not backing up package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " since it appears to have no signatures."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    .end local v6           #packName:Ljava/lang/String;
    .end local v7           #pkg:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v8

    move-object v1, v8

    .local v1, e:Ljava/io/IOException;
    const-string v8, "PMBA"

    const-string v8, "Unable to write package backup data file!"

    invoke-static {v11, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/io/IOException;
    :goto_2
    return-void

    :cond_5
    :try_start_3
    iget-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    const-string v9, "@meta@"

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #info:Landroid/content/pm/PackageInfo;
    .restart local v6       #packName:Ljava/lang/String;
    .restart local v7       #pkg:Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v8

    move-object v1, v8

    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v8, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget v8, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v5, v8}, Lcom/android/server/PackageManagerBackupAgent;->writeSignatureArray(Ljava/io/DataOutputStream;[Landroid/content/pm/Signature;)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-static {p2, v6, v8}, Lcom/android/server/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V

    goto/16 :goto_1

    .end local v3           #info:Landroid/content/pm/PackageInfo;
    .end local v6           #packName:Ljava/lang/String;
    .end local v7           #pkg:Landroid/content/pm/PackageInfo;
    :cond_7
    iget-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .local v0, app:Ljava/lang/String;
    const/4 v8, -0x1

    :try_start_4
    invoke-virtual {p2, v0, v8}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    :try_start_5
    const-string v8, "PMBA"

    const-string v9, "Unable to write package deletions!"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .end local v0           #app:Ljava/lang/String;
    .end local v1           #e:Ljava/io/IOException;
    :cond_8
    iget-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    invoke-direct {p0, v8, p3}, Lcom/android/server/PackageManagerBackupAgent;->writeStateFile(Ljava/util/List;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_2
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 19
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .local v10, restoredApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .local v11, sigMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerBackupAgent$Metadata;>;"
    const/4 v14, -0x1

    .local v14, storedSystemVersion:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v9

    .local v9, key:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v5

    .local v5, dataSize:I
    new-array v8, v5, [B

    .local v8, inputBytes:[B
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object v1, v8

    move/from16 v2, v16

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v6, inputBuffer:Ljava/io/ByteArrayInputStream;
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v7, inputBufferStream:Ljava/io/DataInputStream;
    const-string v16, "@meta@"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .local v13, storedSdkVersion:I
    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    move v0, v14

    move/from16 v1, v16

    if-le v0, v1, :cond_0

    const-string v16, "PMBA"

    const-string v17, "Restore set was from a later version of Android; not restoring"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5           #dataSize:I
    .end local v6           #inputBuffer:Ljava/io/ByteArrayInputStream;
    .end local v7           #inputBufferStream:Ljava/io/DataInputStream;
    .end local v8           #inputBytes:[B
    .end local v9           #key:Ljava/lang/String;
    .end local v13           #storedSdkVersion:I
    :goto_1
    return-void

    .restart local v5       #dataSize:I
    .restart local v6       #inputBuffer:Ljava/io/ByteArrayInputStream;
    .restart local v7       #inputBufferStream:Ljava/io/DataInputStream;
    .restart local v8       #inputBytes:[B
    .restart local v9       #key:Ljava/lang/String;
    .restart local v13       #storedSdkVersion:I
    :cond_0
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerBackupAgent;->mStoredSdkVersion:I

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PackageManagerBackupAgent;->mHasMetadata:Z

    goto :goto_0

    .end local v13           #storedSdkVersion:I
    :cond_1
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .local v15, versionCode:I
    invoke-static {v7}, Lcom/android/server/PackageManagerBackupAgent;->readSignatureArray(Ljava/io/DataInputStream;)[Landroid/content/pm/Signature;

    move-result-object v12

    .local v12, sigs:[Landroid/content/pm/Signature;
    if-eqz v12, :cond_2

    move-object v0, v12

    array-length v0, v0

    move/from16 v16, v0

    if-nez v16, :cond_3

    :cond_2
    const-string v16, "PMBA"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Not restoring package "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " since it appears to have no signatures."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    new-instance v4, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .local v4, app:Landroid/content/pm/ApplicationInfo;
    iput-object v9, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v16, Lcom/android/server/PackageManagerBackupAgent$Metadata;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move v2, v15

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerBackupAgent$Metadata;-><init>(Lcom/android/server/PackageManagerBackupAgent;I[Landroid/content/pm/Signature;)V

    move-object v0, v11

    move-object v1, v9

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .end local v4           #app:Landroid/content/pm/ApplicationInfo;
    .end local v5           #dataSize:I
    .end local v6           #inputBuffer:Ljava/io/ByteArrayInputStream;
    .end local v7           #inputBufferStream:Ljava/io/DataInputStream;
    .end local v8           #inputBytes:[B
    .end local v9           #key:Ljava/lang/String;
    .end local v12           #sigs:[Landroid/content/pm/Signature;
    .end local v15           #versionCode:I
    :cond_4
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    goto :goto_1
.end method
