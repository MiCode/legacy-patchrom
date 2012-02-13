.class final Landroid/server/search/SearchManagerService$BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/search/SearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootCompletedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/search/SearchManagerService;


# direct methods
.method private constructor <init>(Landroid/server/search/SearchManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/server/search/SearchManagerService$BootCompletedReceiver;->this$0:Landroid/server/search/SearchManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/search/SearchManagerService;Landroid/server/search/SearchManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/server/search/SearchManagerService$BootCompletedReceiver;-><init>(Landroid/server/search/SearchManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    new-instance v0, Landroid/server/search/SearchManagerService$BootCompletedReceiver$1;

    invoke-direct {v0, p0}, Landroid/server/search/SearchManagerService$BootCompletedReceiver$1;-><init>(Landroid/server/search/SearchManagerService$BootCompletedReceiver;)V

    invoke-virtual {v0}, Landroid/server/search/SearchManagerService$BootCompletedReceiver$1;->start()V

    return-void
.end method
