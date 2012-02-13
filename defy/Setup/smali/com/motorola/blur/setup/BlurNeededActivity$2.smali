.class Lcom/motorola/blur/setup/BlurNeededActivity$2;
.super Ljava/lang/Object;
.source "BlurNeededActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/BlurNeededActivity;->showDialogAndRunSetup(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/BlurNeededActivity;

.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/BlurNeededActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/motorola/blur/setup/BlurNeededActivity$2;->this$0:Lcom/motorola/blur/setup/BlurNeededActivity;

    iput-object p2, p0, Lcom/motorola/blur/setup/BlurNeededActivity$2;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurNeededActivity$2;->val$context:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 98
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurNeededActivity$2;->val$context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 99
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 100
    return-void
.end method
