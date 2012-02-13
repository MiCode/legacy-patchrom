.class Lcom/motorola/CameraF/TagsSetting$4;
.super Ljava/lang/Object;
.source "TagsSetting.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/TagsSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/TagsSetting;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/TagsSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/motorola/CameraF/TagsSetting$4;->this$0:Lcom/motorola/CameraF/TagsSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
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
    .line 218
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_1

    .line 219
    iget-object v0, p0, Lcom/motorola/CameraF/TagsSetting$4;->this$0:Lcom/motorola/CameraF/TagsSetting;

    iget-object v1, p0, Lcom/motorola/CameraF/TagsSetting$4;->this$0:Lcom/motorola/CameraF/TagsSetting;

    #getter for: Lcom/motorola/CameraF/TagsSetting;->mTagSetting:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/motorola/CameraF/TagsSetting;->access$100(Lcom/motorola/CameraF/TagsSetting;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    #setter for: Lcom/motorola/CameraF/TagsSetting;->mIsLocationOn:Z
    invoke-static {v0, v1}, Lcom/motorola/CameraF/TagsSetting;->access$002(Lcom/motorola/CameraF/TagsSetting;Z)Z

    .line 220
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/CameraF/TagsSetting$4;->this$0:Lcom/motorola/CameraF/TagsSetting;

    #getter for: Lcom/motorola/CameraF/TagsSetting;->mIsLocationOn:Z
    invoke-static {v1}, Lcom/motorola/CameraF/TagsSetting;->access$000(Lcom/motorola/CameraF/TagsSetting;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setLocationOn(Ljava/lang/Boolean;)V

    .line 221
    iget-object v0, p0, Lcom/motorola/CameraF/TagsSetting$4;->this$0:Lcom/motorola/CameraF/TagsSetting;

    #getter for: Lcom/motorola/CameraF/TagsSetting;->mIsLocationOn:Z
    invoke-static {v0}, Lcom/motorola/CameraF/TagsSetting;->access$000(Lcom/motorola/CameraF/TagsSetting;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/motorola/CameraF/TagsSetting$4;->this$0:Lcom/motorola/CameraF/TagsSetting;

    #calls: Lcom/motorola/CameraF/TagsSetting;->checkGolbalLocationSetting()V
    invoke-static {v0}, Lcom/motorola/CameraF/TagsSetting;->access$200(Lcom/motorola/CameraF/TagsSetting;)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/TagsSetting$4;->this$0:Lcom/motorola/CameraF/TagsSetting;

    iget-object v1, p0, Lcom/motorola/CameraF/TagsSetting$4;->this$0:Lcom/motorola/CameraF/TagsSetting;

    #getter for: Lcom/motorola/CameraF/TagsSetting;->mTagSetting:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/motorola/CameraF/TagsSetting;->access$100(Lcom/motorola/CameraF/TagsSetting;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    #setter for: Lcom/motorola/CameraF/TagsSetting;->mIsKeyWordOn:Z
    invoke-static {v0, v1}, Lcom/motorola/CameraF/TagsSetting;->access$302(Lcom/motorola/CameraF/TagsSetting;Z)Z

    .line 225
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/CameraF/TagsSetting$4;->this$0:Lcom/motorola/CameraF/TagsSetting;

    #getter for: Lcom/motorola/CameraF/TagsSetting;->mIsKeyWordOn:Z
    invoke-static {v1}, Lcom/motorola/CameraF/TagsSetting;->access$300(Lcom/motorola/CameraF/TagsSetting;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setKeyWordsTagsOn(Ljava/lang/Boolean;)V

    .line 226
    iget-object v0, p0, Lcom/motorola/CameraF/TagsSetting$4;->this$0:Lcom/motorola/CameraF/TagsSetting;

    #getter for: Lcom/motorola/CameraF/TagsSetting;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/motorola/CameraF/TagsSetting;->access$400(Lcom/motorola/CameraF/TagsSetting;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/CameraF/TagsSetting$4;->this$0:Lcom/motorola/CameraF/TagsSetting;

    #getter for: Lcom/motorola/CameraF/TagsSetting;->mIsKeyWordOn:Z
    invoke-static {v1}, Lcom/motorola/CameraF/TagsSetting;->access$300(Lcom/motorola/CameraF/TagsSetting;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 227
    iget-object v0, p0, Lcom/motorola/CameraF/TagsSetting$4;->this$0:Lcom/motorola/CameraF/TagsSetting;

    iget-object v0, v0, Lcom/motorola/CameraF/TagsSetting;->mtagEditorSet:Landroid/view/View;

    iget-object v1, p0, Lcom/motorola/CameraF/TagsSetting$4;->this$0:Lcom/motorola/CameraF/TagsSetting;

    #getter for: Lcom/motorola/CameraF/TagsSetting;->mIsKeyWordOn:Z
    invoke-static {v1}, Lcom/motorola/CameraF/TagsSetting;->access$300(Lcom/motorola/CameraF/TagsSetting;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 228
    iget-object v0, p0, Lcom/motorola/CameraF/TagsSetting$4;->this$0:Lcom/motorola/CameraF/TagsSetting;

    iget-object v0, v0, Lcom/motorola/CameraF/TagsSetting;->mTagsEditText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/motorola/CameraF/TagsSetting$4;->this$0:Lcom/motorola/CameraF/TagsSetting;

    #getter for: Lcom/motorola/CameraF/TagsSetting;->mIsKeyWordOn:Z
    invoke-static {v1}, Lcom/motorola/CameraF/TagsSetting;->access$300(Lcom/motorola/CameraF/TagsSetting;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
