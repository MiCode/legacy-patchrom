.class Landroid/app/SearchDialog$5;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SearchDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/SearchDialog;


# direct methods
.method constructor <init>(Landroid/app/SearchDialog;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/app/SearchDialog$5;->this$0:Landroid/app/SearchDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    iget-object v4, p0, Landroid/app/SearchDialog$5;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v4}, Landroid/app/SearchDialog;->access$000(Landroid/app/SearchDialog;)Landroid/app/SearchableInfo;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Landroid/app/SearchDialog$5;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v4}, Landroid/app/SearchDialog;->access$000(Landroid/app/SearchDialog;)Landroid/app/SearchableInfo;

    move-result-object v2

    .local v2, searchable:Landroid/app/SearchableInfo;
    :try_start_0
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/app/SearchDialog$5;->this$0:Landroid/app/SearchDialog;

    iget-object v5, p0, Landroid/app/SearchDialog$5;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mVoiceWebSearchIntent:Landroid/content/Intent;
    invoke-static {v5}, Landroid/app/SearchDialog;->access$1000(Landroid/app/SearchDialog;)Landroid/content/Intent;

    move-result-object v5

    #calls: Landroid/app/SearchDialog;->createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    invoke-static {v4, v5, v2}, Landroid/app/SearchDialog;->access$1100(Landroid/app/SearchDialog;Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v3

    .local v3, webSearchIntent:Landroid/content/Intent;
    iget-object v4, p0, Landroid/app/SearchDialog$5;->this$0:Landroid/app/SearchDialog;

    invoke-virtual {v4}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #webSearchIntent:Landroid/content/Intent;
    :cond_1
    :goto_1
    iget-object v4, p0, Landroid/app/SearchDialog$5;->this$0:Landroid/app/SearchDialog;

    invoke-virtual {v4}, Landroid/app/SearchDialog;->dismiss()V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/app/SearchDialog$5;->this$0:Landroid/app/SearchDialog;

    iget-object v5, p0, Landroid/app/SearchDialog$5;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mVoiceAppSearchIntent:Landroid/content/Intent;
    invoke-static {v5}, Landroid/app/SearchDialog;->access$1200(Landroid/app/SearchDialog;)Landroid/content/Intent;

    move-result-object v5

    #calls: Landroid/app/SearchDialog;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    invoke-static {v4, v5, v2}, Landroid/app/SearchDialog;->access$1300(Landroid/app/SearchDialog;Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .local v0, appSearchIntent:Landroid/content/Intent;
    iget-object v4, p0, Landroid/app/SearchDialog$5;->this$0:Landroid/app/SearchDialog;

    invoke-virtual {v4}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .end local v0           #appSearchIntent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "SearchDialog"

    const-string v5, "Could not find voice search activity"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
