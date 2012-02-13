.class Lcom/motorola/CameraF/View/IconListPreference$2;
.super Ljava/lang/Object;
.source "IconListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/CameraF/View/IconListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/View/IconListPreference;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/View/IconListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/motorola/CameraF/View/IconListPreference$2;->this$0:Lcom/motorola/CameraF/View/IconListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/motorola/CameraF/View/IconListPreference$2;->this$0:Lcom/motorola/CameraF/View/IconListPreference;

    #setter for: Lcom/motorola/CameraF/View/IconListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v0, p2}, Lcom/motorola/CameraF/View/IconListPreference;->access$002(Lcom/motorola/CameraF/View/IconListPreference;I)I

    .line 128
    return-void
.end method
