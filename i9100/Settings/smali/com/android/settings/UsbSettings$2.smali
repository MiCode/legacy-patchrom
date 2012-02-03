.class Lcom/android/settings/UsbSettings$2;
.super Landroid/os/storage/StorageEventListener;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/UsbSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings/UsbSettings$2;->this$0:Lcom/android/settings/UsbSettings;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    const/4 v5, 0x0

    const-string v6, "mounted"

    .line 97
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, InterStoragePath:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    const-string v3, "shared"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/android/settings/UsbSettings$2;->this$0:Lcom/android/settings/UsbSettings;

    const/4 v4, 0x1

    #calls: Lcom/android/settings/UsbSettings;->switchDisplay(Z)V
    invoke-static {v3, v4}, Lcom/android/settings/UsbSettings;->access$100(Lcom/android/settings/UsbSettings;Z)V

    .line 104
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, extExterStoragePath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, extExterStorageState:Ljava/lang/String;
    const-string v3, "removed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    const-string v3, "mounted"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    iget-object v3, p0, Lcom/android/settings/UsbSettings$2;->this$0:Lcom/android/settings/UsbSettings;

    #calls: Lcom/android/settings/UsbSettings;->switchDisplay(Z)V
    invoke-static {v3, v5}, Lcom/android/settings/UsbSettings;->access$100(Lcom/android/settings/UsbSettings;Z)V

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 114
    :cond_2
    const-string v3, "mounted"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    iget-object v3, p0, Lcom/android/settings/UsbSettings$2;->this$0:Lcom/android/settings/UsbSettings;

    #calls: Lcom/android/settings/UsbSettings;->switchDisplay(Z)V
    invoke-static {v3, v5}, Lcom/android/settings/UsbSettings;->access$100(Lcom/android/settings/UsbSettings;Z)V

    goto :goto_0
.end method
