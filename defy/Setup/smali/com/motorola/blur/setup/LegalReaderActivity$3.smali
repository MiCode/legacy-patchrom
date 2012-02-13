.class Lcom/motorola/blur/setup/LegalReaderActivity$3;
.super Ljava/lang/Object;
.source "LegalReaderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/LegalReaderActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/LegalReaderActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/LegalReaderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/motorola/blur/setup/LegalReaderActivity$3;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/motorola/blur/setup/LegalReaderActivity$3;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/blur/setup/LegalReaderActivity;->mProgressShowing:Z

    .line 250
    return-void
.end method
