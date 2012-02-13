.class Landroid/app/SearchDialog$6;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    iput-object p1, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v3, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v3}, Landroid/app/SearchDialog;->access$000(Landroid/app/SearchDialog;)Landroid/app/SearchableInfo;

    move-result-object v3

    if-nez v3, :cond_0

    move v3, v6

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;
    invoke-static {v3}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/SearchDialog$SearchAutoComplete;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;
    invoke-static {v3}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/SearchDialog$SearchAutoComplete;->getListSelection()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    #calls: Landroid/app/SearchDialog;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    invoke-static {v3, p1, p2, p3}, Landroid/app/SearchDialog;->access$1400(Landroid/app/SearchDialog;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;
    invoke-static {v3}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v3

    #calls: Landroid/app/SearchDialog$SearchAutoComplete;->isEmpty()Z
    invoke-static {v3}, Landroid/app/SearchDialog$SearchAutoComplete;->access$400(Landroid/app/SearchDialog$SearchAutoComplete;)Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x42

    if-ne p2, v3, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    iget-object v3, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v3}, Landroid/app/SearchDialog;->access$000(Landroid/app/SearchDialog;)Landroid/app/SearchableInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->autoUrlDetect()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I
    invoke-static {v3}, Landroid/app/SearchDialog;->access$900(Landroid/app/SearchDialog;)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    iget-object v4, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;
    invoke-static {v4}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/SearchDialog$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/app/SearchDialog;->fixUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Landroid/app/SearchDialog;->access$1500(Landroid/app/SearchDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    #calls: Landroid/app/SearchDialog;->launchIntent(Landroid/content/Intent;)V
    invoke-static {v3, v1}, Landroid/app/SearchDialog;->access$1600(Landroid/app/SearchDialog;Landroid/content/Intent;)V

    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_1
    move v3, v5

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    invoke-virtual {v3}, Landroid/app/SearchDialog;->launchQuerySearch()V

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v3}, Landroid/app/SearchDialog;->access$000(Landroid/app/SearchDialog;)Landroid/app/SearchableInfo;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .local v0, actionKey:Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/app/SearchDialog$6;->this$0:Landroid/app/SearchDialog;

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Landroid/app/SearchDialog;->launchQuerySearch(ILjava/lang/String;)V

    move v3, v5

    goto/16 :goto_0

    .end local v0           #actionKey:Landroid/app/SearchableInfo$ActionKeyInfo;
    :cond_4
    move v3, v6

    goto/16 :goto_0
.end method
