.class Lcom/android/server/am/ActivityManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->finishBooting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    const-string v0, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .local v9, pkgs:[Ljava/lang/String;
    if-eqz v9, :cond_0

    move-object v6, v9

    .local v6, arr$:[Ljava/lang/String;
    array-length v8, v6

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v1, v6, v7

    .local v1, pkg:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    move v4, v3

    move v5, v3

    #calls: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZ)Z
    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityManagerService$6;->setResultCode(I)V

    .end local v1           #pkg:Ljava/lang/String;
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #len$:I
    :cond_0
    return-void

    .restart local v1       #pkg:Ljava/lang/String;
    .restart local v6       #arr$:[Ljava/lang/String;
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method
