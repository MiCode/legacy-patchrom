.class Landroid/app/SearchDialog$4;
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
    iput-object p1, p0, Landroid/app/SearchDialog$4;->this$0:Landroid/app/SearchDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    iget-object v0, p0, Landroid/app/SearchDialog$4;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v0}, Landroid/app/SearchDialog;->access$000(Landroid/app/SearchDialog;)Landroid/app/SearchableInfo;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/SearchDialog$4;->this$0:Landroid/app/SearchDialog;

    invoke-virtual {v0}, Landroid/app/SearchDialog;->launchQuerySearch()V

    goto :goto_0
.end method
