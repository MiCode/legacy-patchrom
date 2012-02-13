.class Lcom/motorola/blur/setup/ServiceChooserActivity$8;
.super Ljava/lang/Object;
.source "ServiceChooserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/ServiceChooserActivity;->showServiceInfoDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/ServiceChooserActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 702
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$8;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    iput p2, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$8;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 704
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$8;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    iget v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$8;->val$position:I

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceChooserActivity;->handleClick(I)V

    .line 705
    return-void
.end method
