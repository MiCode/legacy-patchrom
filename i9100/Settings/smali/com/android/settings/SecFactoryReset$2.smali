.class Lcom/android/settings/SecFactoryReset$2;
.super Ljava/lang/Thread;
.source "SecFactoryReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecFactoryReset;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecFactoryReset;


# direct methods
.method constructor <init>(Lcom/android/settings/SecFactoryReset;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/settings/SecFactoryReset$2;->this$0:Lcom/android/settings/SecFactoryReset;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-string v4, "SecFactoryReset"

    .line 154
    iget-object v1, p0, Lcom/android/settings/SecFactoryReset$2;->this$0:Lcom/android/settings/SecFactoryReset;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/SecFactoryReset;->deleteSdCardFiles(Ljava/io/File;)Z

    move-result v0

    .line 155
    .local v0, del:Z
    if-eqz v0, :cond_0

    .line 156
    const-string v1, "SecFactoryReset"

    const-string v1, "Finished internal SD card cleaning."

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    const-string v1, "SecFactoryReset"

    const-string v1, "Could not delete all files. Please retry."

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
