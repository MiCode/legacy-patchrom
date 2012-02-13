.class Landroid/widget/DatePicker$2;
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
    iput-object p1, p0, Landroid/widget/DatePicker$2;->this$0:Landroid/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/widget/NumberPicker;II)V
    .locals 2
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    iget-object v0, p0, Landroid/widget/DatePicker$2;->this$0:Landroid/widget/DatePicker;

    const/4 v1, 0x1

    sub-int v1, p3, v1

    #setter for: Landroid/widget/DatePicker;->mMonth:I
    invoke-static {v0, v1}, Landroid/widget/DatePicker;->access$202(Landroid/widget/DatePicker;I)I

    iget-object v0, p0, Landroid/widget/DatePicker$2;->this$0:Landroid/widget/DatePicker;

    #calls: Landroid/widget/DatePicker;->adjustMaxDay()V
    invoke-static {v0}, Landroid/widget/DatePicker;->access$300(Landroid/widget/DatePicker;)V

    iget-object v0, p0, Landroid/widget/DatePicker$2;->this$0:Landroid/widget/DatePicker;

    #calls: Landroid/widget/DatePicker;->notifyDateChanged()V
    invoke-static {v0}, Landroid/widget/DatePicker;->access$100(Landroid/widget/DatePicker;)V

    iget-object v0, p0, Landroid/widget/DatePicker$2;->this$0:Landroid/widget/DatePicker;

    #calls: Landroid/widget/DatePicker;->updateDaySpinner()V
    invoke-static {v0}, Landroid/widget/DatePicker;->access$400(Landroid/widget/DatePicker;)V

    return-void
.end method
