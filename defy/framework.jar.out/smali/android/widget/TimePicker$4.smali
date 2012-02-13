.class Landroid/widget/TimePicker$4;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0xc

    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->requestFocus()Z

    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v0}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mCurrentHour:I
    invoke-static {v0}, Landroid/widget/TimePicker;->access$000(Landroid/widget/TimePicker;)I

    move-result v0

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    invoke-static {v0, v1}, Landroid/widget/TimePicker;->access$012(Landroid/widget/TimePicker;I)I

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    iget-object v1, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v1}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    #setter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v0, v1}, Landroid/widget/TimePicker;->access$202(Landroid/widget/TimePicker;Z)Z

    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;
    invoke-static {v0}, Landroid/widget/TimePicker;->access$700(Landroid/widget/TimePicker;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v1}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mAmText:Ljava/lang/String;
    invoke-static {v1}, Landroid/widget/TimePicker;->access$500(Landroid/widget/TimePicker;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    #calls: Landroid/widget/TimePicker;->onTimeChanged()V
    invoke-static {v0}, Landroid/widget/TimePicker;->access$300(Landroid/widget/TimePicker;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mCurrentHour:I
    invoke-static {v0}, Landroid/widget/TimePicker;->access$000(Landroid/widget/TimePicker;)I

    move-result v0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    invoke-static {v0, v1}, Landroid/widget/TimePicker;->access$020(Landroid/widget/TimePicker;I)I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/widget/TimePicker$4;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mPmText:Ljava/lang/String;
    invoke-static {v1}, Landroid/widget/TimePicker;->access$600(Landroid/widget/TimePicker;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method
