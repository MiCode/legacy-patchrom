.class Lcom/motorola/blur/settings/EditEmailAccountActivity$3;
.super Ljava/lang/Object;
.source "EditEmailAccountActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/settings/EditEmailAccountActivity;->layOutActivity(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/EditEmailAccountActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/EditEmailAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity$3;->this$0:Lcom/motorola/blur/settings/EditEmailAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity$3;->this$0:Lcom/motorola/blur/settings/EditEmailAccountActivity;

    #calls: Lcom/motorola/blur/settings/EditEmailAccountActivity;->setViewMode(I)V
    invoke-static {v0, p3}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->access$400(Lcom/motorola/blur/settings/EditEmailAccountActivity;I)V

    .line 288
    return-void
.end method
