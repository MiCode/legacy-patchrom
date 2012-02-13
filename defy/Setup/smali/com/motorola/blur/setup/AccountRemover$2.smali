.class Lcom/motorola/blur/setup/AccountRemover$2;
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
    .line 114
    iput-object p1, p0, Lcom/motorola/blur/setup/AccountRemover$2;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialogInterface"
    .parameter "id"

    .prologue
    .line 116
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 117
    return-void
.end method
