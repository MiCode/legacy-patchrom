.class Landroid/app/SearchDialog$3;
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
    iput-object p1, p0, Landroid/app/SearchDialog$3;->this$0:Landroid/app/SearchDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/app/SearchDialog$3;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v0}, Landroid/app/SearchDialog;->access$000(Landroid/app/SearchDialog;)Landroid/app/SearchableInfo;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x13

    if-eq p2, v0, :cond_1

    const/16 v0, 0x15

    if-eq p2, v0, :cond_1

    const/16 v0, 0x16

    if-eq p2, v0, :cond_1

    const/16 v0, 0x17

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Landroid/app/SearchDialog$3;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;
    invoke-static {v0}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/SearchDialog$SearchAutoComplete;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/SearchDialog$3;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;
    invoke-static {v0}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/SearchDialog$SearchAutoComplete;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
