.class Lcom/android/internal/app/AlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertController$AlertParams;->createListView(Lcom/android/internal/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AlertController$AlertParams;

.field final synthetic val$dialog:Lcom/android/internal/app/AlertController;

.field final synthetic val$listView:Lcom/android/internal/app/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController$RecycleListView;Lcom/android/internal/app/AlertController;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->val$listView:Lcom/android/internal/app/AlertController$RecycleListView;

    iput-object p3, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->val$dialog:Lcom/android/internal/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItems:[Z

    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->val$listView:Lcom/android/internal/app/AlertController$RecycleListView;

    invoke-virtual {v1, p3}, Lcom/android/internal/app/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->val$dialog:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->access$600(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->val$listView:Lcom/android/internal/app/AlertController$RecycleListView;

    invoke-virtual {v2, p3}, Lcom/android/internal/app/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result v2

    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
