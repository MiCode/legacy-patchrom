.class Lcom/android/phone/InVTCallScreen$22;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->surfaceview_initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 8026
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .parameter "v"

    .prologue
    const/16 v5, 0x9

    const/4 v1, 0x7

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v2, "InVTCallScreen"

    .line 8030
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$6100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8031
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8032
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8033
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1800(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 8034
    const-string v0, "InVTCallScreen"

    const-string v0, "This is inside onLongClick of OnLongClickListener for Own Image and isSurfaceViewSwipe is true"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8038
    const-string v0, "InVTCallScreen"

    const-string v0, "This is inside onLongClick of OnLongClickListener for Own Image"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8041
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8042
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDownUppos:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    #setter for: Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$6802(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    .line 8046
    :goto_0
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$7102(Z)Z

    .line 8047
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$3700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8048
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v5}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    .line 8120
    :cond_0
    :goto_1
    return v4

    .line 8044
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDownUpposBlurOff:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7000(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    #setter for: Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$6802(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_0

    .line 8052
    :cond_2
    const-string v0, "InVTCallScreen"

    const-string v0, "In onLongClick of far_endsurview "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8061
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In mDisp_Small is false.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDisp_Small:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$7200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8063
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallerUppos:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7300(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    #setter for: Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$6802(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    .line 8064
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$7102(Z)Z

    .line 8067
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8068
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_1

    .line 8075
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8076
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8077
    const-string v0, "InVTCallScreen"

    const-string v0, "In onLongClick of far_endsurview "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8086
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In mDisp_Small is false.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDisp_Small:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$7200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8088
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallerUppos:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7300(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    #setter for: Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$6802(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    .line 8089
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$7102(Z)Z

    .line 8092
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8093
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_1

    .line 8096
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1800(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 8097
    const-string v0, "InVTCallScreen"

    const-string v0, "This is inside onLongClick of OnLongClickListener for near end surface view  for Own Image isSurfaceViewSwipe is false"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8100
    const-string v0, "InVTCallScreen"

    const-string v0, "This is inside onLongClick of OnLongClickListener for Own Image"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8110
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDownUppos:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    #setter for: Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$6802(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    .line 8112
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$7102(Z)Z

    .line 8113
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$3700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8114
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$22;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v5}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_1
.end method
