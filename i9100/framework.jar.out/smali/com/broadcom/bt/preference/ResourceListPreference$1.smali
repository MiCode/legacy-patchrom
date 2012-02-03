.class Lcom/broadcom/bt/preference/ResourceListPreference$1;
.super Ljava/lang/Object;
.source "ResourceListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/preference/ResourceListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/preference/ResourceListPreference;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/preference/ResourceListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/broadcom/bt/preference/ResourceListPreference$1;->this$0:Lcom/broadcom/bt/preference/ResourceListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceListPreference$1;->this$0:Lcom/broadcom/bt/preference/ResourceListPreference;

    iput p2, v0, Lcom/broadcom/bt/preference/ResourceListPreference;->mClickedDialogEntryIndex:I

    .line 183
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceListPreference$1;->this$0:Lcom/broadcom/bt/preference/ResourceListPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/broadcom/bt/preference/ResourceListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 185
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 186
    return-void
.end method
