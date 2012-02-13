.class Landroid/server/search/SearchManagerService$BootCompletedReceiver$1;
.super Ljava/lang/Thread;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/server/search/SearchManagerService$BootCompletedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/server/search/SearchManagerService$BootCompletedReceiver;


# direct methods
.method constructor <init>(Landroid/server/search/SearchManagerService$BootCompletedReceiver;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/server/search/SearchManagerService$BootCompletedReceiver$1;->this$1:Landroid/server/search/SearchManagerService$BootCompletedReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Landroid/server/search/SearchManagerService$BootCompletedReceiver$1;->this$1:Landroid/server/search/SearchManagerService$BootCompletedReceiver;

    iget-object v0, v0, Landroid/server/search/SearchManagerService$BootCompletedReceiver;->this$0:Landroid/server/search/SearchManagerService;

    #getter for: Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/server/search/SearchManagerService;->access$100(Landroid/server/search/SearchManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/server/search/SearchManagerService$BootCompletedReceiver$1;->this$1:Landroid/server/search/SearchManagerService$BootCompletedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Landroid/server/search/SearchManagerService$BootCompletedReceiver$1;->this$1:Landroid/server/search/SearchManagerService$BootCompletedReceiver;

    iget-object v0, v0, Landroid/server/search/SearchManagerService$BootCompletedReceiver;->this$0:Landroid/server/search/SearchManagerService;

    #calls: Landroid/server/search/SearchManagerService;->getSearchables()Landroid/server/search/Searchables;
    invoke-static {v0}, Landroid/server/search/SearchManagerService;->access$200(Landroid/server/search/SearchManagerService;)Landroid/server/search/Searchables;

    return-void
.end method
