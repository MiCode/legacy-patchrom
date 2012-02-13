.class Landroid/widget/TimePicker$2;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePicker;


# direct methods
.method constructor <init>(Landroid/widget/TimePicker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/widget/NumberPicker;II)V
    .locals 3
    .parameter "spinner"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    const/16 v2, 0xc

    iget-object v0, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    #setter for: Landroid/widget/TimePicker;->mCurrentHour:I
    invoke-static {v0, p3}, Landroid/widget/TimePicker;->access$002(Landroid/widget/TimePicker;I)I

    iget-object v0, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;
    invoke-static {v0}, Landroid/widget/TimePicker;->access$100(Landroid/widget/TimePicker;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mCurrentHour:I
    invoke-static {v0}, Landroid/widget/TimePicker;->access$000(Landroid/widget/TimePicker;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    const/4 v1, 0x0

    #setter for: Landroid/widget/TimePicker;->mCurrentHour:I
    invoke-static {v0, v1}, Landroid/widget/TimePicker;->access$002(Landroid/widget/TimePicker;I)I

    :cond_0
    iget-object v0, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v0}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    invoke-static {v0, v2}, Landroid/widget/TimePicker;->access$012(Landroid/widget/TimePicker;I)I

    :cond_1
    iget-object v0, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    #calls: Landroid/widget/TimePicker;->onTimeChanged()V
    invoke-static {v0}, Landroid/widget/TimePicker;->access$300(Landroid/widget/TimePicker;)V

    return-void
.end method
