.class Landroid/app/SearchDialog$2;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v1}, Landroid/app/SearchDialog;->access$000(Landroid/app/SearchDialog;)Landroid/app/SearchableInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v1}, Landroid/app/SearchDialog;->access$000(Landroid/app/SearchDialog;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->autoUrlDetect()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;
    invoke-static {v1}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/SearchDialog$SearchAutoComplete;->isPerformingCompletion()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;
    invoke-static {v1}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/SearchDialog$SearchAutoComplete;->getImeOptions()I

    move-result v1

    and-int/lit16 v1, v1, -0x100

    or-int/lit8 v0, v1, 0x2

    .local v0, options:I
    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I
    invoke-static {v1}, Landroid/app/SearchDialog;->access$900(Landroid/app/SearchDialog;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #setter for: Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I
    invoke-static {v1, v0}, Landroid/app/SearchDialog;->access$902(Landroid/app/SearchDialog;I)I

    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;
    invoke-static {v1}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/SearchDialog$SearchAutoComplete;->setImeOptions(I)V

    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;
    invoke-static {v1}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v1

    iget-object v2, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;
    invoke-static {v2}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/SearchDialog$SearchAutoComplete;->getInputType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->setInputType(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    iget-object v0, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v0}, Landroid/app/SearchDialog;->access$000(Landroid/app/SearchDialog;)Landroid/app/SearchableInfo;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;
    invoke-static {v0}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/SearchDialog$SearchAutoComplete;->isPerformingCompletion()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    if-nez p1, :cond_4

    const-string v1, ""

    :goto_1
    #setter for: Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/app/SearchDialog;->access$202(Landroid/app/SearchDialog;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #calls: Landroid/app/SearchDialog;->updateWidgetState()V
    invoke-static {v0}, Landroid/app/SearchDialog;->access$300(Landroid/app/SearchDialog;)V

    iget-object v0, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;
    invoke-static {v1}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v1

    #calls: Landroid/app/SearchDialog$SearchAutoComplete;->isEmpty()Z
    invoke-static {v1}, Landroid/app/SearchDialog$SearchAutoComplete;->access$400(Landroid/app/SearchDialog$SearchAutoComplete;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #calls: Landroid/app/SearchDialog;->isBrowserSearch()Z
    invoke-static {v1}, Landroid/app/SearchDialog;->access$500(Landroid/app/SearchDialog;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mInitialQuery:Ljava/lang/String;
    invoke-static {v1}, Landroid/app/SearchDialog;->access$600(Landroid/app/SearchDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;
    invoke-static {v2}, Landroid/app/SearchDialog;->access$200(Landroid/app/SearchDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;
    invoke-static {v1}, Landroid/app/SearchDialog;->access$700(Landroid/app/SearchDialog;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;
    invoke-static {v1}, Landroid/app/SearchDialog;->access$700(Landroid/app/SearchDialog;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.search.CONTEXT_IS_VOICE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    const/4 v1, 0x1

    :goto_2
    #calls: Landroid/app/SearchDialog;->updateVoiceButton(Z)V
    invoke-static {v0, v1}, Landroid/app/SearchDialog;->access$800(Landroid/app/SearchDialog;Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method
