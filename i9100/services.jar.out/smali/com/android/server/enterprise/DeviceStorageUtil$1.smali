.class Lcom/android/server/enterprise/DeviceStorageUtil$1;
.super Ljava/lang/Object;
.source "DeviceStorageUtil.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/DeviceStorageUtil;->formatSelective([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/DeviceStorageUtil;

.field final synthetic val$acceptAllFiles:Z

.field final synthetic val$fileFilers:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/DeviceStorageUtil;Z[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/server/enterprise/DeviceStorageUtil$1;->this$0:Lcom/android/server/enterprise/DeviceStorageUtil;

    iput-boolean p2, p0, Lcom/android/server/enterprise/DeviceStorageUtil$1;->val$acceptAllFiles:Z

    iput-object p3, p0, Lcom/android/server/enterprise/DeviceStorageUtil$1;->val$fileFilers:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 7
    .parameter "pathname"

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, acceptFile:Z
    iget-boolean v6, p0, Lcom/android/server/enterprise/DeviceStorageUtil$1;->val$acceptAllFiles:Z

    if-eqz v6, :cond_1

    .line 95
    const/4 v0, 0x1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, fileName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceStorageUtil$1;->val$fileFilers:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    .line 99
    .local v5, string:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 100
    const/4 v0, 0x1

    .line 101
    goto :goto_0

    .line 98
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
