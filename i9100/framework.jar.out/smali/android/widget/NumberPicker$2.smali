.class Landroid/widget/NumberPicker$2;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$000(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, "onLongClick"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mIncrement:Z
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;)Landroid/widget/NumberPickerButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/NumberPickerButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mCurrent:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$300(Landroid/widget/NumberPicker;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->changeCurrent(I)V

    .line 95
    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$500(Landroid/widget/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mSpeed:J
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$400(Landroid/widget/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mDecrement:Z
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$600(Landroid/widget/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$700(Landroid/widget/NumberPicker;)Landroid/widget/NumberPickerButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/NumberPickerButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mCurrent:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$300(Landroid/widget/NumberPicker;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->changeCurrent(I)V

    .line 98
    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$500(Landroid/widget/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mSpeed:J
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$400(Landroid/widget/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
