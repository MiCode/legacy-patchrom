.class Landroid/widget/DatePicker$3;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePicker;


# direct methods
.method constructor <init>(Landroid/widget/DatePicker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/DatePicker$3;->this$0:Landroid/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/widget/NumberPicker;II)V
    .locals 1
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    const/16 v0, 0x7b2

    if-gt p2, v0, :cond_0

    if-le p2, p3, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/NumberPicker;->setCurrent(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x7f5

    if-lt p2, v0, :cond_1

    if-ge p2, p3, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/NumberPicker;->setCurrent(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/DatePicker$3;->this$0:Landroid/widget/DatePicker;

    #setter for: Landroid/widget/DatePicker;->mYear:I
    invoke-static {v0, p3}, Landroid/widget/DatePicker;->access$502(Landroid/widget/DatePicker;I)I

    iget-object v0, p0, Landroid/widget/DatePicker$3;->this$0:Landroid/widget/DatePicker;

    #calls: Landroid/widget/DatePicker;->adjustMaxDay()V
    invoke-static {v0}, Landroid/widget/DatePicker;->access$300(Landroid/widget/DatePicker;)V

    iget-object v0, p0, Landroid/widget/DatePicker$3;->this$0:Landroid/widget/DatePicker;

    #calls: Landroid/widget/DatePicker;->notifyDateChanged()V
    invoke-static {v0}, Landroid/widget/DatePicker;->access$100(Landroid/widget/DatePicker;)V

    iget-object v0, p0, Landroid/widget/DatePicker$3;->this$0:Landroid/widget/DatePicker;

    #calls: Landroid/widget/DatePicker;->updateDaySpinner()V
    invoke-static {v0}, Landroid/widget/DatePicker;->access$400(Landroid/widget/DatePicker;)V

    goto :goto_0
.end method
