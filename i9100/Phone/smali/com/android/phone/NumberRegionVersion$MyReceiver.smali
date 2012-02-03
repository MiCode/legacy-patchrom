.class Lcom/android/phone/NumberRegionVersion$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NumberRegionVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NumberRegionVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NumberRegionVersion;


# direct methods
.method private constructor <init>(Lcom/android/phone/NumberRegionVersion;)V
    .locals 0
    .parameter

    .prologue
    .line 953
    iput-object p1, p0, Lcom/android/phone/NumberRegionVersion$MyReceiver;->this$0:Lcom/android/phone/NumberRegionVersion;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NumberRegionVersion;Lcom/android/phone/NumberRegionVersion$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 953
    invoke-direct {p0, p1}, Lcom/android/phone/NumberRegionVersion$MyReceiver;-><init>(Lcom/android/phone/NumberRegionVersion;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 957
    iget-object v1, p0, Lcom/android/phone/NumberRegionVersion$MyReceiver;->this$0:Lcom/android/phone/NumberRegionVersion;

    invoke-virtual {v1}, Lcom/android/phone/NumberRegionVersion;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 958
    .local v0, mNewLocale:Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/phone/NumberRegionVersion$MyReceiver;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mLocale:Ljava/util/Locale;
    invoke-static {v1}, Lcom/android/phone/NumberRegionVersion;->access$900(Lcom/android/phone/NumberRegionVersion;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 959
    const-string v1, "NumberRegionVersion"

    const-string v2, "onReceive:lagnuage"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object v1, p0, Lcom/android/phone/NumberRegionVersion$MyReceiver;->this$0:Lcom/android/phone/NumberRegionVersion;

    #setter for: Lcom/android/phone/NumberRegionVersion;->mLocale:Ljava/util/Locale;
    invoke-static {v1, v0}, Lcom/android/phone/NumberRegionVersion;->access$902(Lcom/android/phone/NumberRegionVersion;Ljava/util/Locale;)Ljava/util/Locale;

    .line 962
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/phone/NumberRegionVersion;->access$102(Z)Z

    .line 963
    iget-object v1, p0, Lcom/android/phone/NumberRegionVersion$MyReceiver;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/NumberRegionVersion;->access$300(Lcom/android/phone/NumberRegionVersion;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 964
    iget-object v1, p0, Lcom/android/phone/NumberRegionVersion$MyReceiver;->this$0:Lcom/android/phone/NumberRegionVersion;

    iget-object v2, p0, Lcom/android/phone/NumberRegionVersion$MyReceiver;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/NumberRegionVersion;->access$300(Lcom/android/phone/NumberRegionVersion;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/NumberRegionVersion;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NumberRegionVersion;->access$400(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)V

    .line 965
    iget-object v1, p0, Lcom/android/phone/NumberRegionVersion$MyReceiver;->this$0:Lcom/android/phone/NumberRegionVersion;

    #setter for: Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/phone/NumberRegionVersion;->access$302(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)Ljava/lang/String;

    .line 967
    :cond_0
    iget-object v1, p0, Lcom/android/phone/NumberRegionVersion$MyReceiver;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mBinTmpFile:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/NumberRegionVersion;->access$500(Lcom/android/phone/NumberRegionVersion;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 968
    iget-object v1, p0, Lcom/android/phone/NumberRegionVersion$MyReceiver;->this$0:Lcom/android/phone/NumberRegionVersion;

    iget-object v2, p0, Lcom/android/phone/NumberRegionVersion$MyReceiver;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mBinTmpFile:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/NumberRegionVersion;->access$500(Lcom/android/phone/NumberRegionVersion;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/NumberRegionVersion;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NumberRegionVersion;->access$400(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)V

    .line 969
    iget-object v1, p0, Lcom/android/phone/NumberRegionVersion$MyReceiver;->this$0:Lcom/android/phone/NumberRegionVersion;

    #setter for: Lcom/android/phone/NumberRegionVersion;->mBinTmpFile:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/phone/NumberRegionVersion;->access$502(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)Ljava/lang/String;

    .line 971
    :cond_1
    iget-object v1, p0, Lcom/android/phone/NumberRegionVersion$MyReceiver;->this$0:Lcom/android/phone/NumberRegionVersion;

    invoke-virtual {v1}, Lcom/android/phone/NumberRegionVersion;->finish()V

    .line 974
    :cond_2
    return-void
.end method
