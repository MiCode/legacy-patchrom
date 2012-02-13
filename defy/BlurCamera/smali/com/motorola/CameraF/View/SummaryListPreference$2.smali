.class Lcom/motorola/CameraF/View/SummaryListPreference$2;
.super Ljava/lang/Object;
.source "SummaryListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/CameraF/View/SummaryListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/View/SummaryListPreference;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/View/SummaryListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/motorola/CameraF/View/SummaryListPreference$2;->this$0:Lcom/motorola/CameraF/View/SummaryListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/motorola/CameraF/View/SummaryListPreference$2;->this$0:Lcom/motorola/CameraF/View/SummaryListPreference;

    #setter for: Lcom/motorola/CameraF/View/SummaryListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v0, p2}, Lcom/motorola/CameraF/View/SummaryListPreference;->access$002(Lcom/motorola/CameraF/View/SummaryListPreference;I)I

    .line 108
    return-void
.end method
