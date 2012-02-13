.class Lcom/motorola/blur/setup/AccountRemover$1;
.super Ljava/lang/Object;
.source "AccountRemover.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/AccountRemover;->remove(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/AccountRemover;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/AccountRemover;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/motorola/blur/setup/AccountRemover$1;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "id"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover$1;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    #calls: Lcom/motorola/blur/setup/AccountRemover;->deleteAccount()V
    invoke-static {v0}, Lcom/motorola/blur/setup/AccountRemover;->access$100(Lcom/motorola/blur/setup/AccountRemover;)V

    .line 112
    return-void
.end method
